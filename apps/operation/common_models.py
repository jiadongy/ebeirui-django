from datetime import datetime

from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType
from django.db import models
from django.db.models import Q

from users.models import UserProfile


# 用户对于课程,机构，讲师的收藏
class UserFavorite(models.Model):
    # 会涉及四个外键。用户，课程，机构，讲师import # todo 把课程加入content-type
    TYPE_CHOICES = ((1, u"课程"), (2, u"课程机构"), (3, u"讲师"), (4, u"文章"))
    # 机智版 # 直接保存用户的id.
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name=u"用户")
    # fav_id = models.IntegerField(default=0, verbose_name=u"收藏品id")
    fav_type = models.IntegerField(choices=TYPE_CHOICES, default=1, verbose_name=u"收藏类型")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"评论时间")
    is_valid = models.BooleanField(default=True, verbose_name=u"软删除")
    # fixme "the _id problem" https://docs.djangoproject.com/zh-hans/2.1/ref/models/fields/#database-representation
    content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE, default=0, verbose_name=u"contentType和favId一一对应",
                                     limit_choices_to=Q(model='article', app_label='article') | Q(model='lesson'))
    fav_id = models.IntegerField(verbose_name=u"收藏品id", default=1)
    fav_object = GenericForeignKey('content_type', 'fav_id')

    class Meta:
        verbose_name = u"用户收藏"
        verbose_name_plural = verbose_name
        unique_together = ['fav_id', 'user', 'fav_type', 'is_valid']

    def __str__(self):
        return '用户({0})收藏了{1}类-{2}'.format(self.user, self.fav_type, self.fav_id)


ContentType_Map = {
    4: ContentType.objects.get(app_label__exact="article", model__exact="article"),
}
