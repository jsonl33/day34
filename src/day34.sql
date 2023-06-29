select * from emp where deptno=10;

insert into emp values(14,'ford',3000,300,30);

select empno,ename,sal from emp where ename='ford';

select * from emp where deptno=10 AND ename='홍길동';

select * from emp where NOT deptno=10;

select * from emp where 1500<= sal AND sal <= 3000;

select * from emp where sal<=1500 or 3000 <= sal;

select * from emp where comm=100 or comm=200 or comm is null;

select ename,sal from emp where sal between 1000 and 2000;

select * from emp where sal in (1000,1500,2000);

select * from emp where comm!=100 and comm!=200 and comm is not null;
select * from emp where comm not in (100,200) and comm is not null;

select * from emp where sal not in (1000,2000,3000);

select * from emp where sal!=1000 and sal!=2000 and sal!=3000;

select * from emp where ename like '이%';

select * from emp where ename like '_순신';

select * from emp where ename not like '%길%';

select * from emp order by empno desc;
select * from emp order by sal;

select ABS(-100) as "-100의 양의 절대값" from DUAL;

select floor(34.5678) as "소수점 이하를 버리는 floor()함수" from dual;

select trunc(34.5678,2) as "trunc()함수" from dual;

select mod(26,3) as "26을 3으로 나눈 나머지 값" from dual;

select upper('oracle') as "영문대문자로 변경하는 upper()함수", lower('ORACLE') as "영문소문자로 변경하는 lower()함수" from dual;

select Ltrim (' oracle') as "Ltrim()함수로 왼쪽 공백제거", rtrim('oracle ') as "Rtrim()함수로 오른쪽 공백제거", trim(' oracle ') as "trim()함수로 양쪽 공백제거" from dual;

select sysdate-1 as "어제 날짜", sysdate as "오늘 날짜", sysdate+1 as "내일 날짜" from dual;

create table emp01(
deptno number(38) primary key,
ename varchar2(20)
);
insert into emp01 values(10,'miler');
insert into emp01 values(20,'smith');
insert into emp01 values(20,'jones');

select * from emp01;

alter table emp01 drop primary key;

select ename, deptno, decode(deptno,10,'개발부',
                                    20,'기획부',
                                    30,'디자인부')
                                    as 부서명 from emp01;
                                    
select ename, deptno,
    case when deptno=10 then '디자인부'
        when deptno=20 then '개발부'
        when deptno=30 then '경리부'
        end as 부서명
        from emp01;
        
create table emp02(
    deptno NUMBER(38),
    ename varchar(20),
    sal number(38),
    comm int,
    job varchar2(50)
    );
    
    insert into emp02 values(10,'scott',1000,100,'영업사원');
    insert into emp02 values(10,'tiger',1500,150,'영업사원');
    insert into emp02 (deptno,ename,sal,job) values(20,'james',2000,'관리자');
    insert into emp02 (deptno,ename,sal,job) values(20,'king',2500,'관리자');
    
    select * from emp02 order by ename asc;
    
    select sum(sal) as "총급여" from emp02;
    
    select sum(comm) as "null을 제외한 보너스 총합" from emp02;
    
    select count(comm) as "보너스를 수령하는 사원 수",
    count (ename) as "총 사원 수"  from emp02;
    