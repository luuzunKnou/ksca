-- code name par_cat par_name 
INSERT INTO category(code, name, par_cat, par_name) VALUES
	('3001101',' 체조 ㆍ댄스교실',			'3001',	'건강운동분야'),
	('3001102',' 웃음교실',					'3001',	'건강운동분야'),
	('3001103',' 요가ㆍ명상',				'3001',	'건강운동분야'),
	('3001104',' 건강운동',					'3001',	'건강운동분야'),
	('3002101',' 건강검진관련',				'3002', '건강관리분야'),
	('3002102',' 한방치료',					'3002', '건강관리분야'),
	('3002103',' 안마교실',					'3002', '건강관리분야'),
	('3002104',' 방문간호',					'3002', '건강관리분야'),
	('3003101',' 정보화교육',				'3003', '교육ㆍ상담분야'),
	('3003102',' 언어교육',					'3003', '교육ㆍ상담분야'),
	('3003103',' 인식개선교육',				'3003', '교육ㆍ상담분야'),
	('3003104',' 에너지교육',				'3003', '교육ㆍ상담분야'),
	('3003105',' 노인상담',					'3003', '교육ㆍ상담분야'),
	('3003106',' 생활ㆍ안전교육',			'3003', '교육ㆍ상담분야'),
	('3003107',' 프로그램발표대회',			'3003', '교육ㆍ상담분야'),
	('3004101',' 음악활동',					'3004', '여가분야'),
	('3004102',' 바둑ㆍ장기교실',			'3004', '여가분야'),
	('3004103',' 문학활동',					'3004', '여가분야'),
	('3004104',' 미술활동',					'3004', '여가분야'),
	('3004105',' 문화ㆍ공연활동',			'3004', '여가분야'),
	('3005101',' 노인성교육',				'3005', '권익증진분야'),
	('3005102',' 소비자피해예방교육',		'3005', '권익증진분야'),
	('3005103',' 노인자살ㆍ학대예방교육',	'3005', '권익증진분야'),
	('3006101',' 방문 이ㆍ미용서비스',		'3006', '사회참여분야'),
	('3006102',' 시설 방문 위문공연',		'3006', '사회참여분야'),
	('3006103',' 자원봉사활동',				'3006', '사회참여분야'),
	('3007101',' 공동작업장',				'3007', '공동작업장');

-- code name manager tel
INSERT INTO agency(name) VALUES 
	('중구체육회'),
	('중구보건소'),
	('건강보험공단');

-- id password name tel mail is_approve permission
INSERT INTO manager(id, password, name, tel, mail, is_approve, permission) VALUES
	('luuzun','1234','이원준','010-4940-5498','luuzun@naver.com',true,'MASTER'),
	('mcmoto','1234','우금주','010-9004-0726','mcmoto@naver.com',true,'MANAGER');
	
-- code manager city city_code gu gu_code branch branch_code
INSERT INTO area(code, manager, city, city_code, gu, gu_code) VALUES
	('00-00', 'luuzun', '대구', '03', '중구', '01'),	
	('03-01', 'mcmoto', '대구', '03', '중구', '01');

INSERT INTO branch(area_code, branch_code, branch) VALUES
	('00-00', '99', '없음'),	
	('03-01', '01', '비산동'),
	('03-01', '02', '달성동'),
	('03-01', '03', '남산동'),
	('03-01', '04', '대명동');


-- area_code branch_code scc_code dong name address reg_date site building member male female own tel president phone manager area      
INSERT INTO scc(area_code, branch_code, scc_code, dong, name, address, reg_date, site, building, member, male, female, own, tel, president, phone) VALUES 
	('03-01','99','001','남산동','까치아파트','국채보상로 679-13','1997.04.29','224.80','220.4',28,10,18,'공설','053-421-5222','김혜수','010-5135-4777'),
	('03-01','99','002','남산동','남산그린빌','봉산문화길1-43'   ,'1998.04.29','120.40','120.4',38,20,18,'사설','053-421-5222','박성광','010-5135-4777'),
	('03-01','99','003','동인동','동인시티'  ,'달성로21길 44-133','1999.04.29','350.20','345.4',48,30,18,'공설','053-421-5222','장동건','010-5135-4777'),
	('03-01','99','004','동인동','건들바위'  ,'달구벌대로 1975'  ,'2000.04.29','100.80','98.4' ,58,40,18,'사설','053-421-5222','김동현','010-5135-4777'),
	('03-01','99','005','동성동','동성1가'   ,'중앙대로62길 30-3','2001.04.29','214.50','211.4',68,50,18,'공설','053-421-5222','이상혁','010-5135-4777'),
	('03-01','99','006','달성동','달성2가'   ,'명륜로6길 5'      ,'2002.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','007','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','008','남산동','까치아파트','국채보상로 679-13','1997.04.29','224.80','220.4',28,10,18,'공설','053-421-5222','김혜수','010-5135-4777'),
	('03-01','99','009','남산동','남산그린빌','봉산문화길1-43'   ,'1998.04.29','120.40','120.4',38,20,18,'사설','053-421-5222','박성광','010-5135-4777'),
	('03-01','99','010','동인동','동인시티'  ,'달성로21길 44-133','1999.04.29','350.20','345.4',48,30,18,'공설','053-421-5222','장동건','010-5135-4777'),
	('03-01','99','011','동인동','건들바위'  ,'달구벌대로 1975'  ,'2000.04.29','100.80','98.4' ,58,40,18,'사설','053-421-5222','김동현','010-5135-4777'),
	('03-01','99','012','동성동','동성1가'   ,'중앙대로62길 30-3','2001.04.29','214.50','211.4',68,50,18,'공설','053-421-5222','이상혁','010-5135-4777'),
	('03-01','99','013','달성동','달성2가'   ,'명륜로6길 5'      ,'2002.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','014','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','015','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','016','남산동','까치아파트','국채보상로 679-13','1997.04.29','224.80','220.4',28,10,18,'공설','053-421-5222','김혜수','010-5135-4777'),
	('03-01','99','017','남산동','남산그린빌','봉산문화길1-43'   ,'1998.04.29','120.40','120.4',38,20,18,'사설','053-421-5222','박성광','010-5135-4777'),
	('03-01','99','018','동인동','동인시티'  ,'달성로21길 44-133','1999.04.29','350.20','345.4',48,30,18,'공설','053-421-5222','장동건','010-5135-4777'),
	('03-01','99','019','동인동','건들바위'  ,'달구벌대로 1975'  ,'2000.04.29','100.80','98.4' ,58,40,18,'사설','053-421-5222','김동현','010-5135-4777'),
	('03-01','99','020','동성동','동성1가'   ,'중앙대로62길 30-3','2001.04.29','214.50','211.4',68,50,18,'공설','053-421-5222','이상혁','010-5135-4777'),
	('03-01','99','021','달성동','달성2가'   ,'명륜로6길 5'      ,'2002.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','022','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','023','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','024','남산동','까치아파트','국채보상로 679-13','1997.04.29','224.80','220.4',28,10,18,'공설','053-421-5222','김혜수','010-5135-4777'),
	('03-01','99','025','남산동','남산그린빌','봉산문화길1-43'   ,'1998.04.29','120.40','120.4',38,20,18,'사설','053-421-5222','박성광','010-5135-4777'),
	('03-01','99','026','동인동','동인시티'  ,'달성로21길 44-133','1999.04.29','350.20','345.4',48,30,18,'공설','053-421-5222','장동건','010-5135-4777'),
	('03-01','99','027','동인동','건들바위'  ,'달구벌대로 1975'  ,'2000.04.29','100.80','98.4' ,58,40,18,'사설','053-421-5222','김동현','010-5135-4777'),
	('03-01','99','028','동성동','동성1가'   ,'중앙대로62길 30-3','2001.04.29','214.50','211.4',68,50,18,'공설','053-421-5222','이상혁','010-5135-4777'),
	('03-01','99','029','달성동','달성2가'   ,'명륜로6길 5'      ,'2002.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','030','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','031','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','032','남산동','까치아파트','국채보상로 679-13','1997.04.29','224.80','220.4',28,10,18,'공설','053-421-5222','김혜수','010-5135-4777'),
	('03-01','99','033','남산동','남산그린빌','봉산문화길1-43'   ,'1998.04.29','120.40','120.4',38,20,18,'사설','053-421-5222','박성광','010-5135-4777'),
	('03-01','99','034','동인동','동인시티'  ,'달성로21길 44-133','1999.04.29','350.20','345.4',48,30,18,'공설','053-421-5222','장동건','010-5135-4777'),
	('03-01','99','035','동인동','건들바위'  ,'달구벌대로 1975'  ,'2000.04.29','100.80','98.4' ,58,40,18,'사설','053-421-5222','김동현','010-5135-4777'),
	('03-01','99','036','동성동','동성1가'   ,'중앙대로62길 30-3','2001.04.29','214.50','211.4',68,50,18,'공설','053-421-5222','이상혁','010-5135-4777'),
	('03-01','99','037','달성동','달성2가'   ,'명륜로6길 5'      ,'2002.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777'),
	('03-01','99','038','달성동','달성1가'   ,'달성로 2246'      ,'2003.04.29','124.10','100.4',78,60,18,'사설','053-421-5222','우혜미','010-5135-4777');

-- code area name cat agency
INSERT INTO program(name, area, cat, agency) VALUES 	
	('스트레칭 건강체조', '03-01', '3001101',1), -- 1
	('기초검진체력측정'	, '03-01', '3002101',2), -- 2
	('백세건강운동교실'	, '03-01', '3001101',3); -- 3


-- code, area_code, branch_code, ssc_code, program, begin_date, end_date, time, monthly_oper, active_user
INSERT INTO schedule(area_code, branch_code, ssc_code, program, begin_date, end_date, time, monthly_oper, active_user) VALUES 
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-01 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-02 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-03 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-04 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-05 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-06 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-07 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-08 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-09 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-10 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-11 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-12 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-13 02:00:00', 8, 31),
	('03-01','99','001', 1, '2019-01-01', '2019-01-31', '2019-01-14 02:00:00', 8, 31);