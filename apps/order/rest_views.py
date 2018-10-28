import json

from django.core.paginator import PageNotAnInteger
from django.db.models import Q
from django.views import View
from pure_pagination import Paginator
from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView
from django.forms.models import model_to_dict
from django.core import serializers

from article.models import Article


class GoodsListView(View):
    def get(self, request):
        """
        通过django的view实现商品列表页
        """
        json_list = []
        goods = Goods.objects.all()[:10]


        for good in goods:
            json_dict = model_to_dict(good)
            json_list.append(json_dict)

        import json

        json_data = serializers.serialize('json', goods)
        json_data = json.loads(json_data)
        from django.http import HttpResponse, JsonResponse
        return JsonResponse(json_data, safe=False)