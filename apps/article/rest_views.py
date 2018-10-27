from django.core.cache import cache
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import serializers, viewsets, filters, mixins
from rest_framework.pagination import PageNumberPagination

from article.models import Article
# 指定字段以及字段上的行为
from operation.common_models import UserFavorite


# class ArticleFilter(FilterSet):
#     price_min = NumberFilter(name="shop_price", lookup_expr='gte')
#     price_max = NumberFilter(name="shop_price", lookup_expr='lte')
#
#     class Meta:
#         model = Article
#         fields = ['price_min', 'price_max']


class ArticlePagination(PageNumberPagination):
    page_size = 12
    page_size_query_param = 'page_size'
    page_query_param = "page"
    max_page_size = 100


class ArticleListSerializer(serializers.ModelSerializer):
    click_nums = serializers.SerializerMethodField(default=0, help_text=u"点击数")
    add_time = serializers.DateTimeField(format='%Y-%m-%d %H:%M:%S', read_only=True)

    class Meta:
        model = Article
        fields = ('id', 'title', 'author', 'image', 'abstract', 'like_nums', 'category', 'tag', 'add_time') + \
                 ('click_nums',)
        # fields = "__all__"

    @staticmethod
    def get_click_nums(article):
        return cache.get("article-" + str(article.id), 0)


class ArticleDetailSerializer(serializers.ModelSerializer):
    user = serializers.HiddenField(default=serializers.CurrentUserDefault())
    add_time = serializers.DateTimeField(format='%Y-%m-%d %H:%M:%S', read_only=True)
    is_favor = serializers.SerializerMethodField(default=False, help_text=u"用户是否收藏")
    click_nums = serializers.SerializerMethodField(default=0, help_text=u"点击数")

    class Meta:
        model = Article
        fields = ('title', 'author', 'content', 'like_nums', 'category', 'tag', 'add_time') + \
                 ('is_favor', 'user', 'click_nums')
        # fields = "__all__"

    def get_is_favor(self, article):
        user = self.context['request'].user
        return user.is_authenticated and UserFavorite.objects.filter(user=user, fav_id=article.id, fav_type=4).exists()

    @staticmethod
    def get_click_nums(article):
        return cache.get("article-" + str(article.id), 0)


# 热门文章用page_size和page搞定
class ArticleViewSet(mixins.ListModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    queryset = Article.objects.all()
    # serializer_class = ArticleListSerializer
    pagination_class = ArticlePagination
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    filter_fields = ('author',)
    # filter_class = ArticleFilter
    search_fields = ('title', 'author', 'abstract')
    ordering_fields = ('like_nums', "click_nums", "add_time")
    ordering = ("-add_time",)

    def list(self, request, *args, **kwargs):
        self.serializer_class = ArticleListSerializer
        return super().list(self, request, *args, **kwargs)

    def retrieve(self, request, *args, **kwargs):
        self.serializer_class = ArticleDetailSerializer
        # click_num + 1
        article_id = self.kwargs[self.lookup_field]
        click_nums = cache.get("article-" + article_id, 0)
        cache.set("article-" + article_id, click_nums + 1)
        return super().retrieve(self, request, *args, **kwargs)
