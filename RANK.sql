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














