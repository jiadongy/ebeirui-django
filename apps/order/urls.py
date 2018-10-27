# encoding: utf-8
from article.views import ArticleListView, ArticleDetailView

__author__ = 'mtianyan'
__date__ = '2018/1/13 0013 01:57'

# encoding: utf-8
from django.urls import path, re_path

app_name = "order"
urlpatterns = [
    # 课程列表url
    path('list/', ArticleListView.as_view(), name="list"),
    # 课程详情页
    re_path('detail/(?P<article_id>\d+)/', ArticleDetailView.as_view(), name="order_detail"),
    #     # 课程章节信息页
    #     re_path('info/(?P<course_id>\d+)/', CourseInfoView.as_view(), name="course_info"),
    #
    # # 课程章节信息页
    #     re_path('comments/(?P<course_id>\d+)/', CommentsView.as_view(), name="course_comments"),
    #
    #     # 添加课程评论,已经把参数放到post当中了
    #     path('add_comment/', AddCommentsView.as_view(), name="add_comment"),
    #
    #     # 课程视频播放页
    #     re_path('video/(?P<video_id>\d+)/', VideoPlayView.as_view(), name="video_play"),
]
