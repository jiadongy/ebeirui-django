from datetime import datetime

from DjangoUeditor.models import UEditorField
from django.db import models


# Create your models here.

# 课程信息表
class Article(models.Model):

    title = models.CharField(max_length=50, verbose_name=u"标题")
    author = models.CharField(max_length=50, verbose_name=u"作者")
    content = UEditorField(verbose_name=u"内容", width=600, height=300, blank=True, null=True,
                           imagePath="article/ueditor/", filePath="article/ueditor/", default=u"")
    image = models.ImageField(upload_to="article/%Y/%m", verbose_name=u"封面图", max_length=100, blank=True, null=True)
    abstract = models.CharField(max_length=300, default=u"", verbose_name=u"摘要", blank=True, null=True)
    # 保存点击量，点进页面就算
    click_nums = models.IntegerField(default=0, verbose_name=u"点击数")
    like_nums = models.IntegerField(default=0, verbose_name=u"点赞数")
    category = models.CharField(max_length=20, verbose_name=u"文章类别", default=u"", blank=True, null=True)
    tag = models.CharField(max_length=15, verbose_name=u"文章标签", default=u"", blank=True, null=True)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")
    update_time = models.DateTimeField(default=datetime.now, verbose_name=u"更新时间")

    class Meta:
        verbose_name = u"文章"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


