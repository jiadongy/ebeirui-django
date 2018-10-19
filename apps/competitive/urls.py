# encoding: utf-8

from django.urls import path

from competitive.api_views import CareerCompetitivenessJsonView

app_name = "competitive"

urlpatterns = [
    # path("calculate_competitive/",CareerCompetitivenessView.as_view())

    path("query/", CareerCompetitivenessJsonView.as_view())
    # 性格测试
    # path('xg/', XGIndexView.as_view(), name="xg_index"),

    # path('get_xg_data/', XGDataView.as_view(), name="xg_data"),

    # path('get_data/', XGDataView.as_view(), name="xg_data"),

    # detail页面,取纯数字
    # re_path('detail/(?P<job_id>\d+)/', JobDetailView.as_view(), name="job_detail"),

]
