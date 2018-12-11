# encoding: utf-8
from django.apps import AppConfig


class JobsConfig(AppConfig):
    name = 'jobs'
    verbose_name = u"职位信息"


def decorate_job_model(model_list):
    desc_map = {}
    from jobs.models import Jobs
    for x in Jobs.TYPE_CHOICES:
        desc_map[x[0]] = x[1]

    for x in model_list:
        x.job_type_desc = desc_map[x.job_type]
    return model_list
