# encoding: utf-8
from django.urls import path, re_path

from jobs.views import JobsView, JobDetailView, CompanyView, CompanyDetailView, AddOrgCommentsView

app_name = "jobs"

urlpatterns = [

    # 职位列表url
    path('list/', JobsView.as_view(), name="job_list"),
    # detail页面,取纯数字
    re_path('detail/(?P<job_id>\d+)/', JobDetailView.as_view(), name="job_detail"),

    # 公司库
    re_path('company/list/', CompanyView.as_view(), name="com_list"),

    # 公司详情
    re_path('/detail_com/(?P<company_id>\d+)/', CompanyDetailView.as_view(), name="com_detail"),

    # 添加公司评论
    path('add_comment/', AddOrgCommentsView.as_view(), name="add_org_comment"),

  ]