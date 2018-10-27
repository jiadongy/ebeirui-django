from datetime import datetime

from django.contrib.contenttypes.models import ContentType
from django_filters.rest_framework import DjangoFilterBackend
from generic_relations.relations import GenericRelatedField
from rest_framework import serializers, viewsets, filters, mixins
from rest_framework.permissions import IsAuthenticated
from rest_framework.validators import UniqueTogetherValidator

from article.models import Article
from article.rest_views import ArticleDetailSerializer, ArticleListSerializer
from operation.common_models import UserFavorite
from users.models import UserProfile

ContentType_Map = {
    4: ContentType.objects.get(app_label__exact="article", model__exact="article"),
}


class FavorArticleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Article
        fields = ('id', 'title', 'author', 'image')
        # fields = "__all__"


class UserFavorSerializer(serializers.ModelSerializer):
    user = serializers.PrimaryKeyRelatedField(default=serializers.CurrentUserDefault(), queryset=UserProfile.objects.all())
    # read-only fields
    add_time = serializers.DateTimeField(default=serializers.CreateOnlyDefault(datetime.now()), format='%Y-%m-%d %H:%M:%S', read_only=True)
    fav_object = GenericRelatedField({
        Article: FavorArticleSerializer()
    }, read_only=True)
    # write-only fields
    fav_type = serializers.IntegerField(write_only=True, min_value=1, max_value=4)

    class Meta:
        model = UserFavorite
        fields = ('id', 'user', 'add_time', 'fav_object', 'fav_type', 'fav_id')
        # validators = [UniqueTogetherValidator(message="已经收藏", fields=('user', 'fav_type', 'fav_id'), queryset=UserFavorite.objects.all())]

    def create(self, validated_data):
        content_type = ContentType_Map.get(validated_data.get("fav_type"))
        validated_data.update({"content_type": content_type})
        return validated_data


class UserFavorViewSet(viewsets.GenericViewSet, mixins.RetrieveModelMixin, mixins.ListModelMixin, mixins.CreateModelMixin, mixins.DestroyModelMixin):
    # queryset = UserFavorite.objects.all()
    permission_classes = [IsAuthenticated]
    serializer_class = UserFavorSerializer
    # pagination_class = ArticlePagination
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    # filter_fields = ('fav_type',)
    # filter_class = ArticleFilter
    # search_fields = ('title', 'author', 'abstract')
    # ordering_fields = ('like_nums', "click_nums", "add_time")
    ordering = ("-add_time",)

    def get_queryset(self):
        return UserFavorite.objects.all().filter(user_id__exact=self.request.user.id, is_valid=True)

    # def list(self, request, *args, **kwargs):
    #     self.serializer_class = UserFavorSerializer
    #     return super().list(self, request, *args, **kwargs)
    #
    # def retrieve(self, request, *args, **kwargs):
    #     self.serializer_class = UserFavorSerializer
    #     return super().retrieve(self, request, *args, **kwargs)
    #
    # def destroy(self, request, *args, **kwargs):
    #     return super().destroy(self, request, *args, **kwargs)
    #
    # def create(self, request, *args, **kwargs):
    #     self.serializer_class = UserFavorSerializer
    #     return super().create(request, *args, **kwargs)
