# coding : utf-8
from datetime import datetime

from django.db import models
from organization.models import CityDict
from users.models import UserProfile


# Create your models here.

# 行业字典
class IndustryDict(models.Model):
    name = models.CharField(max_length=20, verbose_name=u"行业")

    desc = models.CharField(max_length=200, verbose_name=u"描述")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"行业"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 招聘机构
class Recruiter(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"机构名")
    city = models.ForeignKey(CityDict, on_delete=models.CASCADE, default=1, verbose_name=u"总部城市")
    industry = models.ForeignKey(IndustryDict, on_delete=models.CASCADE, default=1, verbose_name="所属行业")
    address = models.CharField(max_length=100, verbose_name=u"总部地址")
    tags = models.TextField(max_length=500, verbose_name=u"机构标签")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    image = models.ImageField(upload_to="org/%Y/%m", verbose_name=u"Logo", max_length=100)
    introduction = models.TextField(verbose_name=u"机构简介")
    br_comment = models.TextField(default="", verbose_name=u"贝睿点评")
    click_num = models.IntegerField(default=0, verbose_name="点击数")
    collect_num = models.IntegerField(default=0, verbose_name="收藏数")

    website = models.CharField(max_length=50, verbose_name=u"主页地址", blank=True, null=True)
    founding_time = models.DateTimeField(default=datetime.now, verbose_name=u"成立时间")
    legal_person = models.CharField(max_length=10, verbose_name=u"法人", blank=True, null=True)

    class Meta:
        verbose_name = u"招聘机构"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 用户对于机构的评论
class CompanyComments(models.Model):
    JOB_TYPE_CHOICES = (
        (0, u"实习"),
        (1, u"实习")
    )
    company = models.ForeignKey(Recruiter, on_delete=models.CASCADE, verbose_name=u"机构")
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name=u"用户")
    industry = models.ForeignKey(IndustryDict, on_delete=models.CASCADE, verbose_name=u"行业", blank=True, null=True)

    comments = models.CharField(max_length=1000, verbose_name=u"评论", default=u"")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"评论时间")

    department = models.CharField(max_length=50, verbose_name=u"部门", blank=True, null=True)
    job = models.CharField(max_length=50, verbose_name=u"岗位", blank=True, null=True)
    job_type = models.IntegerField(choices=JOB_TYPE_CHOICES, default=0, verbose_name=u"岗位类型")
    is_in_service = models.BooleanField(default=False, verbose_name=u"是否在职")
    job_time = models.IntegerField(default=1, verbose_name=u"工作年限")
    job_payment = models.IntegerField(default=0, verbose_name=u"税前月薪")
    job_env_rating = models.IntegerField(default=0, verbose_name=u"工作环境评分")
    job_strength_rating = models.IntegerField(default=0, verbose_name=u"工作强度评分")
    job_culture_env_rating = models.IntegerField(default=0, verbose_name=u"工作文化氛围评分")
    job_benifit = models.CharField(max_length=50, verbose_name=u"福利待遇", blank=True, null=True)
    job_turnover = models.CharField(max_length=50, verbose_name=u"流失率", blank=True, null=True)
    position = models.CharField(max_length=50, verbose_name=u"行业地位", blank=True, null=True)
    gender_structure = models.CharField(max_length=50, verbose_name=u"性别结构", blank=True, null=True)
    rating = models.IntegerField(default=0, verbose_name=u"总评分")

    class Meta:
        verbose_name = u"机构评论"
        verbose_name_plural = verbose_name

    def __str__(self):
        return '用户({0})对于《{1}》 评论 :'.format(self.user, self.company)


# 职位
class Jobs(models.Model):
    TYPE_CHOICES = (
        (u"sx", u"实习岗位"),
        (u"xz", u"校招岗位"),
        (u"sz", u"社招岗位"),
    )

    job_type = models.CharField(max_length=50, choices=TYPE_CHOICES, verbose_name=u"职位类型", default="sx")
    company = models.ForeignKey(Recruiter, on_delete=models.CASCADE, verbose_name=u"机构名称")
    depart = models.CharField(max_length=50, verbose_name=u"部门")
    industry = models.ForeignKey(IndustryDict, on_delete=models.CASCADE, verbose_name=u"行业")
    title = models.CharField(max_length=30, verbose_name=u"岗位")
    requirement = models.TextField(verbose_name=u"岗位要求")
    responsibility = models.TextField(verbose_name=u"岗位职责")

    work_method = models.TextField(verbose_name=u"工作方式")
    contact = models.CharField(max_length=30, verbose_name=u"联系方式")
    source = models.CharField(max_length=30, verbose_name=u"信息来源")
    append = models.TextField(verbose_name=u"备注")

    # 可以让我们通过机构找到城市
    city = models.ForeignKey(CityDict, on_delete=models.CASCADE, verbose_name=u"所在城市")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")
    comment = models.TextField(verbose_name=u"贝睿点评")
    recommend_level = models.FloatField(default=0.0, verbose_name=u"推荐指数")
    click_num = models.IntegerField(default=0, verbose_name=u"点击数")

    class Meta:
        verbose_name = u"在线职位"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title
