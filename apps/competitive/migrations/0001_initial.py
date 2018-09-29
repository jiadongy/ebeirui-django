# Generated by Django 2.0.1 on 2018-09-23 17:55

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [

        migrations.CreateModel(
            name='DepartmentData',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('company_type', models.CharField(max_length=64, verbose_name='机构类别')),
                ('name', models.CharField(max_length=64, verbose_name='部门名称')),
                ('type', models.CharField(max_length=64, verbose_name='岗位类别')),
                ('rating', models.IntegerField(verbose_name='贝睿系统分级')),
            ],
            options={
                'verbose_name': '岗位分级',
                'verbose_name_plural': '岗位分级',
            },
        )
    ]
