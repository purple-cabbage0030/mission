-- table 1 celebrity
create table celebrity(
    cl_id number, --pk
	cl_name varchar2(10) NOT NULL,
	birth date,
    agency varchar2(100), 
    job varchar2(100), 
    constraint pk_celebrity_cl_id primary key(cl_id)
);

-- table 2 programs
create table programs(
    pr_id number, --pk
	pr_name varchar2(100) NOT NULL,
    start_date date,
    end_date date,
    producer varchar2(10),
    br_id number NOT NULL, --fk
    constraint pk_programs_pr_id primary key (pr_id),
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
create table cl_pr_match(
    cl_id number, --fk
    pr_id number, --fk
    constraint fk_cl_pr_match_cl_id foreign key (cl_id) references celebrity(cl_id),
    constraint fk_cl_pr_match_pr_id foreign key (pr_id) references programs(pr_id)
);

--
insert into celebrity (cl_id, cl_name, birth, agency, job) values (1, '유재석', '1972/08/14', 'FNC', 'entertainer');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (2, '강호동', '1970/07/14', 'SMC&C', 'entertainer');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (3, '신동엽', '1971/02/17', 'SMC&C', 'entertainer');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (4, '지석진', '1966/02/10', '아이오케이컴퍼니', 'entertainer');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (5, '유희열', '1971/04/19', '안테나', 'songwriter');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (6, '오은영', '1966/03/12', null, 'doctor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (7, '여진구', '1997/08/13', '제이너스', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (8, '송중기', '1985/09/19', '하이스토리디앤씨', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (9, '전여빈', '1989/07/26', '제이와이드컴퍼니', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (10, '옥택연', '1988/12/27', '피프티원케이', 'singer');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (11, '조한철', '1973/06/13', '눈컴퍼니', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (12, '김여진', '1972/06/24', '935엔터테인먼트', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (13, '곽동연', '1997/03/19', '에이치앤드엔터테인먼트', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (14, '송혜교', '1981/11/22', 'UAA', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (15, '진구', '1980/07/20', '바로엔터테인먼트', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (16, '김지원', '1992/10/19', '솔트엔터테인먼트', 'actor');
insert into celebrity (cl_id, cl_name, birth, agency, job) values (17, '강신일', '1960/11/26', '스타빌리지엔터테인먼트', 'actor');


--
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(1, '무한도전', '2006/05/06', '2018/03/31', '김태호', 2);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(2, '1박2일', '2007/08/05', NULL, '나영석', 1);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(3, '동물농장', '2001/05/01', NULL, '이덕건', 3);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(4, '런닝맨', '2010/07/11', NULL, '정철민', 3);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(5, '유희열의 스케치북', '2004/04/09', NULL, '이황선', 1);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(6, '놀면 뭐하니', '2019/07/27', NULL, '김태호', 2);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(7, '호텔 델루나', '2019/07/13', '2019/09/01', '이동규', 5);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(8, '100분 토론', '1999/10/21', NULL, '김성진', 2);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(9, '빈센조', '2021/02/20', '2021/05/02', '조문주', 5);
insert into programs (pr_id, pr_name, start_date, end_date, producer, br_id) values(10, '태양의 후예', '2016/02/24', '2016/04/14', '배경수', 1);


--
insert into  broadcast (br_id, br_name, loc) values (1, 'KBS2', '서울시 영등포구');
insert into  broadcast (br_id, br_name, loc) values (2, 'MBC', '서울시 마포구');
insert into  broadcast (br_id, br_name, loc) values (3, 'SBS', '서울시 양천구');
insert into  broadcast (br_id, br_name, loc) values (4, 'JTBC', '서울시 마포구');
insert into  broadcast (br_id, br_name, loc) values (5, 'tvN', '서울시 마포구');


--
insert into cl_pr_match (cl_id, pr_id) values (1, 1);
insert into cl_pr_match (cl_id, pr_id) values (1, 4);
insert into cl_pr_match (cl_id, pr_id) values (1, 6);
insert into cl_pr_match (cl_id, pr_id) values (2, 2);
insert into cl_pr_match (cl_id, pr_id) values (3, 3);
insert into cl_pr_match (cl_id, pr_id) values (4, 4);
insert into cl_pr_match (cl_id, pr_id) values (5, 6);
insert into cl_pr_match (cl_id, pr_id) values (6, 8);
insert into cl_pr_match (cl_id, pr_id) values (7, 7);
insert into cl_pr_match (cl_id, pr_id) values (8, 10);
insert into cl_pr_match (cl_id, pr_id) values (9, 9);
insert into cl_pr_match (cl_id, pr_id) values (10, 9);
insert into cl_pr_match (cl_id, pr_id) values (11, 9);
insert into cl_pr_match (cl_id, pr_id) values (12, 9);
insert into cl_pr_match (cl_id, pr_id) values (13, 9);
insert into cl_pr_match (cl_id, pr_id) values (14, 10);
insert into cl_pr_match (cl_id, pr_id) values (15, 10);
insert into cl_pr_match (cl_id, pr_id) values (16, 10);
insert into cl_pr_match (cl_id, pr_id) values (17, 10);
insert into cl_pr_match (cl_id, pr_id) values (8, 10);

commit;

/*
select br_name
from broadcast;

select cl_name
from celebrity;

select pr_name
from programs;

select pr_name, producer
from programs, broadcast
where programs.br_id=broadcast.br_id and br_name='KBS2';

select p.pr_name, p.producer, p.start_date, p.end_date, c.cl_name
from programs p, cl_pr_match cp, clebrity c
where p.pr_id = cp.pr_id and cp.cl_id = c.cl_id and p.pr_id=1;

select cl_name, birth, job, ageny
from celebrity
where cl_name = ‘clicked_name’

select p.pr_name
from programs p, celebrity_programs cp, celebrity c
where p.pr_id=cp.pr_id and c.cl_id = cp.cl_id and c.cl_name = ‘clicked_name’
*/

---page1
​
select br_name
from broadcast
​
select cl_name
from celebrity
​
select pr_name
from programs
​
​
​
----page2
​
select pr_name, producer
from programs, broadcast
where programs.br_id=broadcast.br_id and br_name='clicked_name';
​
select p.pr_id, p.pr_name, p.producer
from Programs p, Broadcast b
where p.br_id = b.br_id(+) and b.br_name = 'clicked_name';
​
​
----page3
​
​
select cl_name, birth, job, agency
from celebrity
where cl_name = 'clicked_name';
​
select p.pr_name
from programs p, cl_pr_match cp, celebrity c
where p.pr_id=cp.pr_id and c.cl_id = cp.cl_id and c.cl_name = 'clicked_name';
​
​
----page4
​
​
select p.pr_name, p.producer, p.start_date, p.end_date, c.cl_name
from programs p,cl_pr_match cp, celebrity c
where p.pr_id = cp.pr_id and cp.cl_id = c.cl_id and p.pr_id=1;



