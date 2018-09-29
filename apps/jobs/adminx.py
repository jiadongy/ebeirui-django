import xadmin
from .models import Jobs,IndustryDict,Recruiter,CompanyComments

# 职位后台管理器
class JobsAdmin(object):


    list_display = ['company', 'title', 'contact', 'add_time']
    search_fields = ['company', 'title', 'city']
    list_filter = ['company', 'title', 'city', 'add_time']

class IndustryDictAdmin(object):
    list_display = ['name', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc','add_time']


class RecruiterAdmin(object):
    # data_charts = {
    #     "company": {'title': u"company", "x-field": "name", "y-field": ("click_num", "collect_num"),
    #                    "order": ('name',)
    #                    }
    # }
    list_display = ['name', 'address','add_time']
    search_fields = ['name', 'address']
    list_filter = ['name', 'address','add_time']


class CompanyCommentsAdmin(object):
    list_display = ['company', 'comments','add_time']
    # search_fields = ['company']
    list_filter = ['comments', 'company']



# 将后台管理器与models进行关联注册。
xadmin.site.register(Jobs, JobsAdmin)
xadmin.site.register(IndustryDict, IndustryDictAdmin)
xadmin.site.register(Recruiter,RecruiterAdmin)
xadmin.site.register(CompanyComments,CompanyCommentsAdmin)