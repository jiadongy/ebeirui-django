# Generated by Django 2.0.1 on 2018-06-15 11:49

import DjangoUeditor.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0007_course_is_banner'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='detail',
            field=DjangoUeditor.models.UEditorField(default='', verbose_name='课程详情'),
        ),
        migrations.AlterField(
            model_name='video',
            name='url',
            field=models.FileField(upload_to='course/resource/%Y/%m', verbose_name='资源文件'),
        ),
    ]
