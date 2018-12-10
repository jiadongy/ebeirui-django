from django.core.paginator import PageNotAnInteger
from django.db.models import Q
from django.shortcuts import render
from django.views import View
from pure_pagination import Paginator

from courses.models import Course
from jobs.models import Jobs, IndustryDict, Recruiter
from organization.models import CityDict


class AggregateSearchView(View):
    @staticmethod
    def get(request):
        # 查找到所有的职位
        all_jobs = Jobs.objects.all()
        # 热门机构,如果不加负号会是有小到大。
        # hot_orgs = all_orgs.order_by("-click_nums")[:3]
        # 搜索功能
        search_keywords = request.GET.get('keywords', '')

        if search_keywords:
            # 在name字段进行操作,做like语句的操作。i代表不区分大小写
            # or操作使用Q
            all_jobs = all_jobs.filter(Q(title__icontains=search_keywords) | Q(depart__icontains=search_keywords))
        # 取出所有的城市
        all_city = CityDict.objects.all()
        # 所有行业
        all_industry = IndustryDict.objects.all()
        # 所属行业
        industry_id = request.GET.get('industry', "")
        if industry_id:
            all_jobs = all_jobs.filter(industry=int(industry_id))
        # 取出筛选的城市,默认值为空
        city_id = request.GET.get('city', "")
        # 如果选择了某个城市,也就是前端传过来了值
        if city_id:
            # 外键city在数据中叫city_id
            all_jobs = all_jobs.filter(city_id=int(city_id))
        # 类别筛选
        category = request.GET.get('ct', "")
        if category:
            # 作进一步筛选类别
            all_jobs = all_jobs.filter(job_type=category)
        # 进行排序
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "hot":
                all_jobs = all_jobs.order_by("-click_num")
        else:
            all_jobs = all_jobs.order_by("-add_time")
        # 总共有多少家机构使用count进行统计
        job_nums = all_jobs.count()

        # 分页，如果是不合法的配置参数默认返回第一页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # 这里指从allorg中取五个出来，每页显示5个
        p = Paginator(all_jobs, 10, request=request)
        jobs = p.page(page)

        all_company = Recruiter.objects.all()
        # 取出所有的城市
        all_city = CityDict.objects.all()
        # 所有行业
        all_industry = IndustryDict.objects.all()

        if search_keywords:
            all_company = all_company.filter(Q(name__icontains=search_keywords))

        # 所属行业
        industry_id = request.GET.get('industry', "")
        if industry_id:
            all_company = all_company.filter(industry=int(industry_id))

        # 取出筛选的城市,默认值为空
        city_id = request.GET.get('city', "")
        # 如果选择了某个城市
        if city_id:
            # 外键city在数据中叫city_id
            all_company = all_company.filter(city_id=int(city_id))

        # 进行排序
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "hot":
                all_company = all_company.order_by("-click_num")
        else:
            all_company = all_company.order_by("-add_time")

        # 分页，如果是不合法的配置参数默认返回第一页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_company, 9, request=request)
        all_company = p.page(page)

        all_course = Course.objects.all()
        # 热门课程推荐
        hot_courses = Course.objects.all().order_by("-students")[:3]

        if search_keywords:
            # 在name字段进行操作,做like语句的操作。i代表不区分大小写
            # or操作使用Q
            all_course = all_course.filter(Q(name__icontains=search_keywords) | Q(desc__icontains=search_keywords) | Q(
                detail__icontains=search_keywords))
        # 对课程进行分页
        # 尝试获取前台get请求传递过来的page参数
        # 如果是不合法的配置参数默认返回第一页
        # 进行排序
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "students":
                all_course = all_course.order_by("-students")
            elif sort == "hot":
                all_course = all_course.order_by("-click_nums")
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # 这里指从allorg中取五个出来，每页显示5个
        p = Paginator(all_course, 6, request=request)
        courses = p.page(page)

        return render(request, "aggregate-search-list.html", {
            "all_jobs": jobs,
            # "all_city": all_city,
            # "city_id": city_id,
            # "all_industry": all_industry,
            # "industry_id": industry_id,
            # "job_nums": job_nums,
            # "category": category,
            # "hot_orgs":hot_orgs,
            # "sort": sort,
            # "search_keywords": search_keywords,

            "all_company": all_company,
            # "all_city": all_city,
            # "city_id": city_id,
            # "all_industry": all_industry,
            # "industry_id": industry_id,

            "all_course": courses,
            # "sort": sort,
            "hot_courses": hot_courses,
            # "search_keywords": search_keywords
        })
