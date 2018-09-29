from datetime import date

from competitive.constants import degree_choices, language_choices
from competitive.models import UniversityData, MajorData, CompanyData, DepartmentData


class CareerCompetitive(object):
    sex: bool
    age: int
    native_place: int
    politicial_background: int
    contact: str
    certificate: list
    language: list
    fellowship: list
    other: list
    target: list
    preferred_job: list
    character: list
    education_background: list
    internship_experience: list

    def __init__(self, input_dict):
        self.__dict__ = input_dict
        self.education_background = list(map(lambda x: EducationBackground(x), self.education_background))
        self.internship_experience = list(map(lambda x: InternshipExperience(x), self.internship_experience))

    def calculate_count(self):
        count = 0
        if self.sex:
            count += 5

        if self.age <= 26:
            count += 3
        elif 27 <= self.age <= 29:
            count += 1

        if self.native_place == 0:
            count += 1.5

        if self.politicial_background == 0 or self.politicial_background == 1:
            count += 1.5

        # todo 待优化
        universities = UniversityData.objects.all()
        majors = MajorData.objects.all()
        companies = CompanyData.objects.all()
        departments = DepartmentData.objects.all()

        degree_to_university_level_to_count_map = {0: {1: 10, 2: 8, 3: 6, 4: 3}, 1: {1: 10, 2: 8, 3: 6, 4: 3},
                                                   2: {1: 0, 2: -2, 3: -5}}
        degree_to_major_level_to_count_map = {0: {1: 7, 2: 5, 3: 2}, 1: {1: 8, 2: 5, 3: 2}, 2: {}}

        for i in range(len(degree_choices)):
            degree = degree_choices[i][0]
            e: EducationBackground = next((x for x in self.education_background if x.degree == degree), None)
            if e is not None:
                u = universities.filter(name__exact=e.university).first()
                if u is not None and degree_to_university_level_to_count_map.get(degree).__contains__(u.rating):
                    count += degree_to_university_level_to_count_map.get(degree).get(u.rating)

                m = majors.filter(name__exact=e.major).first()
                if m is not None and degree_to_major_level_to_count_map.get(degree).__contains__(m.rating):
                    count += degree_to_major_level_to_count_map.get(degree).get(m.rating)

        company_level_to_count_map = {1: 4, 2: 2, 3: 1}
        department_level_to_count_map = {1: 4, 2: 2}
        intern_times = 0
        for x in self.internship_experience[:2]:
            intern_times += 1
            # 公司
            c: CompanyData = companies.filter(name__exact=x.company).first()
            if c is not None and company_level_to_count_map.__contains__(c.rating):
                count += company_level_to_count_map.get(c.rating) + (-2 if intern_times > 2 else 0)
                # 岗位
                d: DepartmentData = departments.filter(name__exact=x.department, company_type__exact=c.type).first()
                if d is not None and department_level_to_count_map.__contains__(d.rating):
                    count += department_level_to_count_map.get(d.rating) + (-2 if intern_times > 2 else 0)

        certificate_count = 0
        if self.certificate.__contains__(0) or self.certificate.__contains__(1) or self.certificate.__contains__(2):
            certificate_count += 11
        if self.certificate.__contains__(3) or self.certificate.__contains__(4) or self.certificate.__contains__(
                5) or self.certificate.__contains__(6):
            certificate_count += 7
        certificate_count += min(2, set(self.certificate).intersection({7, 8, 9, 10, 11, 12, 13, 14}).__len__())
        count += max(18, certificate_count)

        count += set(self.language).intersection(map(lambda x: x[0], language_choices)).__len__()

        if self.fellowship.__contains__(0) or self.fellowship.__contains__(1):
            count += 2
        elif self.fellowship.__contains__(2):
            count += 1

        if self.other.__contains__(2):
            count += 3
        elif self.other.__contains__(3):
            count += 2
        elif self.other.__contains__(4):
            count += 1

        if self.other.__contains__(0): count += 2

        if self.other.__contains__(1): count += 1

        return count


class EducationBackground(object):
    begin_date: date
    end_date: date
    university: str
    major: str
    degree: int

    def __init__(self, input_dict):
        self.__dict__ = input_dict


class InternshipExperience(object):
    begin_date: date
    end_date: date
    company: str
    department: str

    def __init__(self, input_dict):
        self.__dict__ = input_dict
