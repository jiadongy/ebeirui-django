from django.urls import re_path, include
from rest_framework.routers import DefaultRouter

from article.rest_views import ArticleViewSet
from operation.rest_views import UserFavorViewSet

router = DefaultRouter()

# 配置restful_url
router.register(r'article', ArticleViewSet, base_name="article")
router.register(r'user_favor', UserFavorViewSet, base_name="user_favor")

urlpatterns = [re_path('^api/*', include(router.urls))]
