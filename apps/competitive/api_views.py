# encoding: utf-8
# from competitive.serializer import CareerCompetitiveSerializer
#
#
# # 职业竞争力测试
# class CareerCompetitivenessView(APIView):
#
#     def get(self, request):
#         serializer = CareerCompetitiveSerializer(data=request.data)
#         if serializer.is_valid():
#             serializer.save()
#             return Response(serializer.data, status=status.HTTP_200_OK)
#         return Response(serializer.data, status=status.HTTP_400_BAD_REQUEST)
import json

from rest_framework import status
from rest_framework.response import Response
from rest_framework.views import APIView

from competitive.form import CareerCompetitive


def post(request):
    print(request.data)

    cc = CareerCompetitive(request.data)
    score = {"score": cc.calculate_count()}

    # serial = CareerCompetitiveSerializer(data=request.data)
    # if not serial.is_valid():
    #     print(serial.errors)
    # else:
    #     x: CareerCompetitive = serial.save()
    #     print(serial.validated_data)

    return Response(json.dumps(score), status=status.HTTP_200_OK)


class CareerCompetitivenessJsonView(APIView):
    pass
