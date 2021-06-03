-- table 1 celebrity

create table celebrity(
    cl_id number, --pk
	cl_name varchar2(10) NOT NULL,
	birth date ,
    agency varchar2(100), 
    job varchar2(100) , 
    constraint pk_celebrity_cl_id primary key(cl_id)
);




-- table 2 programs
create table programs(
    pr_id number, --pk
	pr_name varchar2(100) NOT NULL,
    start_date date ,
    end_date date,
    producer varchar2(10) ,
    br_id number NOT NULL, --fk
    constraint pk_programs_pr_id primary key(pr_id),
    constraint fk_programs_br_id foreign key (br_id) references broadcast(br_id)
);

-- table 3 broadcast
create table broadcast(
	br_id number, --pk
    br_name varchar2(10) NOT NULL,
    loc varchar2(100),
    constraint pk_broadcast_br_id primary key(br_id)
);



-- table 4 celebrity_programs_match
create table cl_br_match(
    cl_id number , --fk
    pr_id number , --fk
    constraint fk_cl_br_match_cl_id foreign key (cl_id) references celebrity(cl_id),
    constraint fk_cl_br_match_pr_id foreign key (pr_id) references programs(pr_id)
);


--
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (1, '유재석', '1972/08/14', 'FNC', 'entertainer');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (2, '강호동', '1970/07/14', 'SMC&C', 'entertainer');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (3, '신동엽', '1971/02/17', 'SMC&C', 'entertainer');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (4, '지석진', '1966/02/10', '아이오케이컴퍼니', 'entertainer');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (5, '유희열', '1971/04/19', '안테나', 'songwriter');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (6, '오은영', '1966/03/12', null, 'doctor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (7, '여진구', '1997/08/13', '제이너스', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (8, '송중기', '1985/09/19', '하이스토리디앤씨', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (9, '전여빈', '1989/07/26', '제이와이드컴퍼니', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (10, '옥택연', '1988/12/27', '피프티원케이', 'singer');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (11, '조한철', '1973/06/13', '눈컴퍼니', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (12, '김여진', '1972/06/24', '935엔터테인먼트', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (13, '곽동연', '1997/03/19', '에이치앤드엔터테인먼트', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (14, '송혜교', '1981/11/22', 'UAA', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (15, '진구', '1980/07/20', '바로엔터테인먼트', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (16, '김지원', '1992/10/19', '솔트엔터테인먼트', 'actor');
insert into  celebrity (cl_id, cl_name, birth, agency, job) values (17, '강신일', '1960/11/26', '스타빌리지엔터테인먼트', 'actor');


--
insert into  programs (pr_id, pr_name, start_date, producer, br_id) values (1, '무한도전', '2006/05/06', '2018/03/31',	'김태호', 2)


--
insert into  broadcast (br_id, br_name, loc) values (1, 'KBS2', '서울시 영등포구')


--
insert into  cl_br_match (cl_id, pr_id) values (1, 1)