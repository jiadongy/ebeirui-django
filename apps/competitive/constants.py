from enum import Enum

certificate_choices = ((0, "CPA全科"), (1, "CFA三级"), (2, "北美精算师"), (3, "CPA三级部分"), (4, "CFA一级或二级"),
                       (5, "FRM"), (6, "司法考试"),
                       (7, "证券从业资格"), (8, "银行从业资格"), (9, "基金从业资格"), (10, "期货从业资格"), (11, "保险从业资格"),
                       (12, "计算机二级"), (13, "计算机三级"), (14, "计算机四级"))
language_choices = ((0, "英语四/六级"), (1, "托福"), (2, "雅思"), (3, "托业"))
fellowship_choices = ((0, "国家级 奖学金/学生干部/荣誉证书"), (1, "省部级 奖学金/学生干部/荣誉证书"), (2, "校级 奖学金/学生干部/荣誉证书"))
other_choices = ((0, "国外交换经历"), (1, "社会实践项目"), (2, "国家一级运动员/演员"), (3, "国家二级运动员/演员"), (4, "省级运动员/演员"))

target_choices = ((0, "赚钱"), (1, "工作稳定"), (2, "大城市户口"))
preferred_job_choices = ((0, "投行业务"), (1, "资产管理"), (2, "商业银行"), (3, "风险管理/合规"), (4, "支持部门"))
character_choices = ((0, "勤奋的"), (1, "交际花"), (2, "霸气的/自信的"), (3, "学习能力强的"), (4, "细心的"))

politicial_background_choices = ((0, "党员"), (1, "民主党派"), (2, "团员"), (3, "群众"))
degree_choices = ((0, "本科"), (1, "硕士"), (2, "博士"))


test_data = {"sex": True,
             "age": 22,
             "native_place": 0,
             "politicial_background": 0,
             "contact": "123456789012",
             "education_background":
                 [{"begin_date": "2018-09-10", "end_date": "2018-09-20",
                   "university": "上海交通大学",
                   "major": "计算机科学/软件工程", "degree": 0}],
             "internship_experience":
                 [{"begin_date": "2018-09-10", "end_date": "2018-09-20",
                   "company": "南方基金",
                   "department": "投资部"}],
             "certificate": [0, 1],
             "language": [0, 1],
             "fellowship": [0, 1],
             "other": [0, 1],
             "target": [0, 1],
             "preferred_job": [0, 1],
             "character": [0, 1]}
