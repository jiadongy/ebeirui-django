# encoding: utf-8
from article.models import Article

__author__ = 'mtianyan'
__date__ = '2018/1/9 0009 20:10'

import xadmin


# Course的admin管理器
class ArticleAdmin(object):
    list_display = [
        'title',
        'author',
        'content',
        'abstract',
        'category',
        'tag',
        'click_nums',
        'like_nums'
    ]
    search_fields = ['title', 'author', 'abstract', 'category', 'tag']
    list_filter = [
        'title',
        'author',
        'abstract',
        'category',
        'tag']
    # 富文本
    style_fields = {"content": "ueditor"}


# class LessonAdmin(object):
#     list_display = ['course', 'name', 'add_time']
#     search_fields = ['course', 'name']
#     # __name代表使用外键中name字段
#     list_filter = ['course__name', 'name', 'add_time']
#
#
# class VideoAdmin(object):
#     list_display = ['lesson', 'name', 'add_time']
#     search_fields = ['lesson', 'name']
#     list_filter = ['lesson', 'name', 'add_time']
#
#
# class CourseResourceAdmin(object):
#     list_display = ['course', 'name', 'download', 'add_time']
#     search_fields = ['course', 'name', 'download']
#     list_filter = ['course__name', 'name', 'download', 'add_time']


# 将管理器与model进行注册关联
xadmin.site.register(Article, ArticleAdmin)
# xadmin.site.register(Lesson, LessonAdmin)
# xadmin.site.register(Video, VideoAdmin)
# xadmin.site.register(CourseResource, CourseResourceAdmin)
