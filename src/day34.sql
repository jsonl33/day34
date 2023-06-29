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