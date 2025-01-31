/*WINDOWS FUNCTION:-->OVERBY CLAUSE
-->WE CAN APPLY THIS WINDOWS FUNCTION WITH 3 FUNCTION
---->1)AGGREGATION FUNCTION
---->2)RANKING FUNCTIONS
---->3)ANALYTICAL FUNCTIONS -->LEAD AND LAG
 SYNTAX:
 COLUMN_NAME1,COLUMN_NAME2,
 FUNCTION NAME OVER BY(ORDER BY COLUMN_NAME ASC|DESC
					   PARTITION BY CLAUSE) 
*/

CREATE TABLE STUDENT1
(
SID INT,
SNAME VARCHAR(20),
PER DECIMAL(10,2)
);

INSERT INTO STUDENT1 VALUES(1,'VISHAL',60),
						   (2,'VAISHU',90),
                           (3,'SANTOSH',10),
                           (4,'ASHWIN',90),
                           (5,'ISHU',65);
SELECT * FROM STUDENT1;

SELECT SID, SNAME, PER, RANK() OVER(ORDER BY PER DESC )
FROM STUDENT1;

SELECT SID, SNAME, PER, RANK() OVER(ORDER BY PER DESC ) AS RANKING
FROM STUDENT1;


UPDATE STUDENT1
SET PER=90
WHERE SNAME='VISHAL';

SELECT * FROM STUDENT1;

/*RANK AND DENSE_RANK*/

SELECT SID, SNAME, PER, DENSE_RANK() OVER(ORDER BY PER DESC ) 
FROM STUDENT1;

/*BASED ON SALARY I NEED GIVE THE RANK*/
SELECT * FROM EMP;

SELECT ENAME,SAL, RANK() OVER (ORDER BY SAL DESC) AS RANKING
FROM EMP;

/*WQTD DISPLAY 12TH MAXIMUM SALARY OF EMPLOYEE*/

SELECT ENAME,SAL, DENSE_RANK() OVER (ORDER BY SAL DESC) AS RANKING
FROM EMP;


SELECT ENAME,SAL
FROM(
SELECT ENAME,SAL, DENSE_RANK() OVER (ORDER BY SAL DESC) AS RANKING
FROM EMP) AS Q
WHERE RANKING = 12;

SELECT ENAME,SAL
FROM(
SELECT ENAME,SAL, DENSE_RANK() OVER (ORDER BY SAL DESC) AS RANKING
FROM EMP) AS Q
WHERE RANKING = 5;

SELECT ENAME,SAL
FROM(
SELECT ENAME,SAL, DENSE_RANK() OVER (ORDER BY SAL DESC) AS RANKING
FROM EMP) AS Q
WHERE RANKING IN(5,6,4);


/*WAQTD 100TH MAXIMUM SALARYEE OF EMPLOYEE*/
SELECT ENAME,SAL
FROM(
SELECT ENAME,SAL, DENSE_RANK() OVER (ORDER BY SAL DESC) AS RANKING
FROM EMP) AS Q
WHERE RANKING =100;


SELECT *
FROM(
SELECT *, DENSE_RANK() OVER (ORDER BY SAL DESC) AS RANKING
FROM EMP) AS Q
WHERE RANKING = 2;


SELECT ENAME,DEPTNO,X1
FROM(
SELECT ENAME,DEPTNO, DENSE_RANK() OVER (ORDER BY SAL DESC) AS X1
FROM EMP) AS Q
WHERE X1 =2;


SELECT ENAME,SAL
FROM(
SELECT ENAME,SAL, DENSE_RANK() OVER (ORDER BY SAL DESC) AS X1
FROM EMP) AS Q
WHERE X1 =12;


SELECT * FROM STUDENT1;

SELECT SNAME, PER
FROM(
SELECT SNAME,PER,DENSE_RANK() OVER (ORDER BY PER DESC) AS RNK
FROM STUDENT1) AS Q1
WHERE RNK=3;

/*AGGREGATE FUNCTIPON*/
/* PARTITION BY ONLY USE WITH AGGREGATE FUNCTION */
/* WAQTD MAXIMUM SALARY GIVEN TO EACH DEPTNO */
SELECT MAX(SAL),DEPTNO
FROM emp
GROUP BY  DEPTNO;

SELECT ENAME, DEPTNO, MAX(SAL) OVER(PARTITION BY DEPTNO)
FROM EMP;


SELECT ENAME, SAL,DEPTNO, MAX(SAL)
OVER(PARTITION BY DEPTNO)
FROM emp
ORDER BY DEPTNO DESC;


/*ANALYTICAL FUNCTION
-->LEAD FUNCTION ()
-->LAG FUNCTION()*/


/*LEAD():
IT IS GOING TO LEAD THE VALUE BY ONE */


SELECT SAL
FROM emp
ORDER BY SAL DESC;

SELECT SAL, LEAD(SAL) OVER (ORDER BY SAL DESC)
FROM emp
ORDER BY SAL DESC;

SELECT SAL, LEAD(SAL,5) OVER (ORDER BY SAL DESC)
FROM emp
ORDER BY SAL DESC;

/*LAG():
  LAST VALUE WILL GET SKIP*/

SELECT SAL, LAG(SAL) OVER (ORDER BY SAL DESC)
FROM emp
ORDER BY SAL ASC;

SELECT SAL, LAG(SAL,10) OVER (ORDER BY SAL DESC)
FROM emp
ORDER BY SAL ASC;

/*LEAD(): IT IS USED TO LEAD THE VALUE BY ONE.
LAG():IT IS USED LAG  THE VALUE BY ONE. */


/*WQTD NAME OF ALLEN MANAGER*/
SELECT JOB 
FROM EMP
WHERE ENAME="ALLEN"

/*EMPLOYEE MANAGER RELATION*/
select ename
from emp
where empno=(select mgr 
             from emp 
             where ename='allen');
             
             
             
/*WQTD NAME OF TURNERS MANAGER*/

select ename
from emp
where empno=(select mgr 
             from emp 
             where ename='TURNER');
             
             
/* WAQTD NAME OF MILLERS MANAGER'S MANAGER NAME*/
SELECT ENAME
FROM emp
WHERE EMPNO=(SELECT MGR
             FROM emp
             WHERE EMPNO=(SELECT MGR
                          FROM emp
                          WHERE ENAME='MILLER'));
			
            
            
/*WQTD NAME OF SMITHS MANAGER'S MANAGER NAME*/
SELECT ENAME
FROM emp
WHERE EMPNO=(SELECT MGR
             FROM EMP
             WHERE EMPNO=(SELECT MGR
                          FROM EMP
                          WHERE ENAME="SMITH"));

UPDATE EMP
SET ENAME ="SMITH"
WHERE ENAME="NITIN";

SELECT * FROM EMP;


/*WQTD NAME OF TH EMPLOYEES REPORTING TO KING*/
SELECT ENAME
FROM EMP
WHERE MGR=(SELECT EMPNO
             FROM emp
             WHERE ENAME = 'KING');
             
/*WQTD NAME OF EMPLOYEE REPORTING TO JONES*/
SELECT ENAME 
FROM emp
WHERE EMPNO=(SELECT MGR
             FROM EMP
             WHERE ENAME ='JONES');
             
             
/*NOTE:
1) TO FIND MANAGER MGR(INNER  QUERY)--> EMPNO(OUTER QUERY)
2)TO FIND REPORTING EMPLOYEES MGR(OUTER QUERY)-->EMPNO(INNER QUERY) */

/*WQTD NAME OF EMPLOYEE GETTING A ASLARY MORE THAN THE ALL THE MANAGER*/
SELECT ENAME
FROM EMP
WHERE SAL>(SELECT MAX(SAL)
           FROM EMP
           WHERE JOB='MANAGER' );
           
/*SUBQUERY OPERATORS:
1)ALL
2)ANY
3)EXISTS
4) NOT EXISTS */





SELECT * FROM EMP;






             
             




























































































































