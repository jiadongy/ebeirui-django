#!/usr/bin/python
# -*- coding: utf-8 -*-

# class EducationBackgroundSerializer(serializers.Serializer):
#     def update(self, instance, validated_data):
#         pass
#
#     def create(self, validated_data):
#         pass
#
#     begin_date = serializers.DateField()
#     end_date = serializers.DateField()
#     university = serializers.CharField(max_length=50)
#     major = serializers.CharField(max_length=50)
#     degree = serializers.ChoiceField(choices=degree_choices)
#
#
# class InternshipExperienceSerializer(serializers.Serializer):
#     def update(self, instance, validated_data):
#         pass
#
#     def create(self, validated_data):
#         pass
#
#     begin_date = serializers.DateField()
#     end_date = serializers.DateField()
#     company = serializers.CharField(max_length=50)
#     department = serializers.CharField(max_length=50)


# class CareerCompetitiveSerializer(serializers.Serializer):
#     def update(self, instance, validated_data):
#         pass
#
#     def create(self, validated_data):
#         pass
#
#     sex = serializers.BooleanField(default=True)  # 性别
#     age = serializers.IntegerField(min_value=0, max_value=100)  # 年龄
#     native_place = serializers.IntegerField(default=0)  # 籍贯
#     politicial_background = serializers.ChoiceField(choices=politicial_background_choices)  # 政治背景
#     contact = serializers.CharField(max_length=50)  # 联系方式
#
#     education_background = EducationBackgroundSerializer(many=True)  # 教育背景
#     internship_experience = InternshipExperienceSerializer(many=True, required=False)  # 实习经历
#
#     certificate = serializers.MultipleChoiceField(required=False, choices=certificate_choices)  # 证书类
#     language = serializers.MultipleChoiceField(required=False, choices=language_choices)  # 外语类
#     fellowship = serializers.MultipleChoiceField(required=False, choices=fellowship_choices)  # 奖学金类
#     other = serializers.MultipleChoiceField(required=False, choices=other_choices)  # 其他（其他技能/留学/交换）
#
#     target = serializers.MultipleChoiceField(required=False, choices=target_choices)  # 人生目标类
#     preferred_job = serializers.MultipleChoiceField(required=False, choices=preferred_job_choices)  # 工作偏好类
#     character = serializers.MultipleChoiceField(required=False, choices=character_choices)  # 性格类


# def _json_object_hook(d): return namedtuple('X', d.keys())(*d.values())


# x = json.loads(test_data, object_hook=_json_object_hook)
