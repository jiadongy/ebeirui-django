# coding : utf-8

from django.db import models


# Create your models here.

# 职业竞争力 测试打分
class UniversityData(models.Model):
    name = models.CharField(max_length=64, verbose_name=u"学校名称")
    rating = models.IntegerField(verbose_name=u"贝睿系统分级")

    class Meta:
        verbose_name = u"大学分级"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class MajorData(models.Model):
    name = models.CharField(max_length=64, verbose_name=u"细分专业")
    rating = models.IntegerField(verbose_name=u"贝睿系统分级")
    type = models.CharField(max_length=64, verbose_name=u"专业种类")
    preferred = models.CharField(max_length=64, blank=True, verbose_name=u"偏好岗位")

    class Meta:
        verbose_name = u"专业分级"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class CompanyData(models.Model):
    name = models.CharField(max_length=64, verbose_name=u"公司名称")
    rating = models.IntegerField(verbose_name=u"贝睿系统分级")
    type = models.CharField(max_length=64, verbose_name=u"机构类别")

    class Meta:
        verbose_name = u"公司分级"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class DepartmentData(models.Model):
    company_type = models.CharField(max_length=64, verbose_name=u"机构类别")
    name = models.CharField(max_length=64, verbose_name=u"部门名称")
    type = models.CharField(max_length=64, verbose_name=u"岗位类别")
    rating = models.IntegerField(verbose_name=u"贝睿系统分级")

    class Meta:
        verbose_name = u"岗位分级"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
