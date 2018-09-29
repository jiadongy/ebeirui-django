# coding : utf-8

from django.db import models


# Create your models here.

# 测试模板
class Evaluation(models.Model):
    exam_index = models.IntegerField(verbose_name=u"测试类别")
    question_index = models.IntegerField(verbose_name=u"题目标号")
    answer_index = models.TextField(verbose_name=u"答案标号")
    email = models.CharField(max_length=30, verbose_name=u"联系方式")
    date = models.CharField(max_length=30, verbose_name=u"时间")

    class Meta:
        verbose_name = u"在线测试"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.exam_index
