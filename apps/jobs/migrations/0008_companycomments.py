# Generated by Django 2.0.1 on 2018-07-14 16:40

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('jobs', '0007_recruiter_br_comment'),
    ]

    operations = [
        migrations.CreateModel(
            name='CompanyComments',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comments', models.CharField(max_length=1000, verbose_name='评论')),
                ('add_time', models.DateTimeField(default=datetime.datetime.now, verbose_name='评论时间')),
                ('company', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='jobs.Recruiter', verbose_name='机构')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='用户')),
            ],
            options={
                'verbose_name': '机构评论',
                'verbose_name_plural': '机构评论',
            },
        ),
    ]
