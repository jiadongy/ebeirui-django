# Generated by Django 2.0.1 on 2018-09-20 22:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('evaluation', '0002_auto_20180908_1654'),
    ]

    operations = [
        migrations.AlterField(
            model_name='evaluation',
            name='exam_index',
            field=models.IntegerField(verbose_name='测试类别'),
        ),
        migrations.AlterField(
            model_name='evaluation',
            name='question_index',
            field=models.IntegerField(verbose_name='题目标号'),
        ),
    ]
