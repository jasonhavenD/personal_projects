# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-09-18 13:57
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_auto_20170918_2119'),
    ]

    operations = [
        migrations.AlterField(
            model_name='movie',
            name='introduction',
            field=models.TextField(max_length=2000, verbose_name='\u5f71\u97f3\u7b80\u4ecb'),
        ),
    ]