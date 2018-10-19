# encoding: utf-8
import datetime

from django.shortcuts import render
from django.views.generic import View
from evaluation import constants
from evaluation.models import Evaluation


# Create your views here.


class XGIndexView(View):
    @staticmethod
    def get(request):
        return render(request, "evaluation/xg.html", {
        })


class XGDataView(View):

    @staticmethod
    def post(request):
        email = request.POST.get("email", "")
        answers = request.POST.get("answers", [])

        answer_list = answers.split("#")[:-1]

        green, yellow, blue, red = 0, 0, 0, 0

        for i in range(len(answer_list)):
            xg_instance = Evaluation()
            xg_instance.exam_index = 1
            xg_instance.email = email

            xg_instance.question_index = i + 1
            xg_instance.answer_index = answer_list[i]
            xg_instance.date = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
            xg_instance.save()

            if i <= 14:
                if answer_list[i] == '1':
                    green += 1
                elif answer_list[i] == '2':
                    yellow += 1
                elif answer_list[i] == '3':
                    blue += 1
                else:
                    red += 1
            else:
                if answer_list[i] == '1':
                    red += 1
                elif answer_list[i] == '2':
                    blue += 1
                elif answer_list[i] == '3':
                    yellow += 1
                else:
                    green += 1

        score_list = [green, yellow, blue, red]
        max_score = max(score_list)
        max_index = score_list.index(max(score_list))

        if max_score < 9:
            return render(request, "evaluation/xg-complex-result.html", {

            })

        else:

            if max_index == 0:
                result_colour = constants.PERSONALITY[0][0]
                result_tags = constants.PERSONALITY[0][1]
                result_comment = constants.PERSONALITY[0][2]
                result_br = constants.PERSONALITY[0][3]

            if max_index == 1:
                result_colour = constants.PERSONALITY[1][0]
                result_tags = constants.PERSONALITY[1][1]
                result_comment = constants.PERSONALITY[1][2]
                result_br = constants.PERSONALITY[1][3]

            if max_index == 2:
                result_colour = constants.PERSONALITY[2][0]
                result_tags = constants.PERSONALITY[2][1]
                result_comment = constants.PERSONALITY[2][2]
                result_br = constants.PERSONALITY[2][3]

            if max_index == 3:
                result_colour = constants.PERSONALITY[3][0]
                result_tags = constants.PERSONALITY[3][1]
                result_comment = constants.PERSONALITY[3][2]
                result_br = constants.PERSONALITY[3][3]

            return render(request, "evaluation/xg-result.html", {

                "result_colour": result_colour,
                "result_tags": result_tags,
                "result_comment": result_comment.splitlines(),
                "result_br": result_br
            })
