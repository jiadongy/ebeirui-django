# Generated by Django 2.0.1 on 2018-08-04 16:25

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Evaluation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('exam_index', models.IntegerField(max_length=50, verbose_name='测试类别')),
                ('question_index', models.IntegerField(max_length=50, verbose_name='题目标号')),
                ('answer_index', models.TextField(verbose_name='答案标号')),
                ('email', models.CharField(max_length=30, verbose_name='联系方式')),
                ('date', models.CharField(default='2018-08-04', max_length=30, verbose_name='时间')),
            ],
            options={
                'verbose_name': '在线测试',
                'verbose_name_plural': '在线测试',
            },
        ),
    ]
