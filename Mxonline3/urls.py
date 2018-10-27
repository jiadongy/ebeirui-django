"""Mxonline3 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls import url
from django.urls import path, include, re_path
# 导入x admin，替换admin
from django.views.static import serve
from rest_framework.documentation import include_docs_urls
from rest_framework.schemas import get_schema_view

import xadmin
# from users.views import user_login
from Mxonline3 import rest_urls
from Mxonline3.settings import MEDIA_ROOT
# from users.views import user_login
from users.views import LoginView, RegisterView, ActiveUserView, ForgetPwdView, ResetView, ModifyPwdView, LogoutView, IndexView

urlpatterns = rest_urls.urlpatterns + [
    path('api-auth/', include('rest_framework.urls')),
    # 第三方登录
    # path('social', include('social_django.urls', namespace='social')),
    path('xadmin/', xadmin.site.urls),
    # 富文本相关url
    path('ueditor/', include('DjangoUeditor.urls')),
    # TemplateView.as_view会将template转换为view
    # path('', TemplateView.as_view(template_name= "index.html"), name=  "index"),
    path('', IndexView.as_view(), name="index"),
    # 基于类方法实现登录,这里是调用它的方法
    path('login/', LoginView.as_view(), name="login"),
    # 退出功能url
    path('logout/', LogoutView.as_view(), name="logout"),
    # 注册url
    path("register/", RegisterView.as_view(), name="register"),
    # 验证码url
    path("captcha/", include('captcha.urls')),
    # 激活用户url
    re_path('active/(?P<active_code>.*)/', ActiveUserView.as_view(), name="user_active"),
    # 忘记密码
    path('forget/', ForgetPwdView.as_view(), name="forget_pwd"),
    # 重置密码urlc ：用来接收来自邮箱的重置链接
    re_path('reset/(?P<active_code>.*)/', ResetView.as_view(), name="reset_pwd"),
    # 修改密码url; 用于passwordreset页面提交表单
    path('modify_pwd/', ModifyPwdView.as_view(), name="modify_pwd"),
    # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    re_path('media/(?P<path>.*)', serve, {"document_root": MEDIA_ROOT}),
    # 处理图片显示的url,使用Django自带serve,传入参数告诉它去哪个路径找，我们有配置好的路径MEDIAROOT
    # re_path('static/(?P<path>.*)', serve, {"document_root": STATIC_ROOT}),
    # 自动化文档,1.11版本中注意此处前往不要加$符号
    path('docs/', include_docs_urls(title='ebeirui文档')),

    # 业务地址
    # 课程机构app的url配置，讲师的也在里面
    path("org/", include('organization.urls', namespace='org')),
    path("jobs/", include('jobs.urls', namespace="jobs")),
    path("evaluation/", include('evaluation.urls', namespace="evaluation")),
    path("competitive/", include("competitive.urls", namespace="competitive")),
    path("article/", include('article.urls', namespace="article")),
    # 课程app的url配置
    path("course/", include('courses.urls', namespace="course")),
    # user app的url配置
    path("users/", include('users.urls', namespace="users")),

    # coreAPI schema
    url('^schema$', get_schema_view(title="Example API")),
]

if settings.DEBUG:
    import debug_toolbar

    urlpatterns = [path('__debug__/', include(debug_toolbar.urls)), ] + urlpatterns
