REATE TABLE EMP(
    empno number,
    ename varchar(50),
    job char,
    mgr number,
    hiredate date,
    sal number,
    comm number,
    dept number
);

INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7369','SMITH','CLERK','7902','17-DEC-80','800','','20');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7499','ALLEN','SALESMAN','7698','20-FEB-81','1600','300','30');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7521','WARD','SALESMAN','7698','22-FEB-81','1250','500','30');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7566','JONES','MANAGER','7839','02-APR-81','2975','','20');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7654','MARTIN','SALESMAN','7698','28-SEP-81','1250','1400','30');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7698','BLAKE','MANAGER','7839','01-MAY-81','2850','','30');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7782','CLARK','MANAGER','7839','09-JUN-81','2450','','10');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7788','SCOTT','ANALYST','7566','19-APR-87','3000','','20');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7839','KING','PRESIDENT','','17-NOV-81','5000','','10');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7844','TURNER','SALESMAN','7698','08-SEP-81','1500','0','30');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7876','ADAMS','CLERK','7788','23-MAY-87','1100','','20');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7900','JAMES','CLERK','7698','03-DEC-81','950','0','30');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7902','FORD','ANALYST','7566','03-DEC-81','3000','','20');
INSERT INTO EMP(empno,ename,job,mgr,hiredate,sal,comm,dept)
VALUES('7934','MILLER','CLERK','7782','23-JAN-82','1300','','10');

CREATE TABLE MANAGER(
  MGR_ID int,
  NAME varchar(30),
  SALARY int,
  HIREDATE date
  );
INSERT INTO MANAGER (MGR_ID, NAME, SALARY,HIREDATE)
SELECT empno,ename,sal,hiredate
FROM EMP
WHERE job='MANAGER';

CREATE TABLE DEPT(
  DEPTNO number,
  DNAME varchar(30),
  LOC varchar(15)
  );
 
INSERT INTO DEPT VALUES('10','ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES('20','RESEARCH','DALLAS');
INSERT INTO DEPT VALUES('30','SALES','CHICAGO');
INSERT INTO DEPT VALUES('40','OPERATIONS','BOSTON');
