from django.db.models import Q
from django.shortcuts import render
# Create your views here.
from django.views.generic.base import View
from pure_pagination import Paginator, PageNotAnInteger

from article.models import Article


class ArticleListView(View):
    @staticmethod
    def get(request):
        all_articles = Article.objects.all()
        # 热门文章推荐
        hot_articles = Article.objects.all().order_by("-click_nums")[:3]
        # 搜索功能
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            # 在name字段进行操作,做like语句的操作。i代表不区分大小写
            # or操作使用Q
            all_articles = all_articles.filter(
                Q(title__icontains=search_keywords) | Q(abstract__icontains=search_keywords)
                | Q(author__icontains=search_keywords))
        # 对课程进行分页
        # 尝试获取前台get请求传递过来的page参数
        # 如果是不合法的配置参数默认返回第一页
        # 进行排序
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "like":
                all_articles = all_articles.order_by("-like_nums")
            elif sort == "hot":
                all_articles = all_articles.order_by("-click_nums")
            elif sort == "add_time":
                all_articles = all_articles.order_by("-add_time")
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # 这里指从allorg中取五个出来，每页显示5个
        p = Paginator(all_articles, 10, request=request)
        articles = p.page(page)
        return render(request, "article-list.html", {
            "all_articles": articles,
            "sort": sort,
            "hot_articles": hot_articles,
            "search_keywords": search_keywords
        })


# 文章详情view
class ArticleDetailView(View):
    @staticmethod
    def get(request, article_id):
        # 此处的id为表默认为我们添加的值。
        article = Article.objects.get(id=int(article_id))
        # 增加课程点击数
        article.click_nums += 1
        article.save()

        # 是否收藏课程
        has_fav_article = False
        has_fav_org = False

        # 必须是用户已登录我们才需要判断。# todo 文章收藏
        # if request.user.is_authenticated:
        #     if UserFavorite.objects.filter(user=request.user, fav_id=article.id, fav_type=1):
        #         has_fav_course = True
        # 取出标签找到标签相同的course
        tag = article.tag
        if tag:
            # 从1开始否则会推荐自己
            relate_articles = Article.objects.filter(tag=tag)[1:2]
        else:
            relate_articles = []
        return render(request, "article-detail.html", {
            "article": article,
            "relate_article": relate_articles,
            "has_fav_article": has_fav_article,
        })


