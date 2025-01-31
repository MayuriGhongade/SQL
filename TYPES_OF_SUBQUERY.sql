/*TYPES OF SUBQUERY:
1)SINGLE ROW SUBQUERY
2)MULTI ROW SUBQUERY */


/* 1) SINGLE ROW SUBQUERY:
--> IF A SUB QUERY RETURNS EXCATLY ONE VALUE WE CALLED AS SINGLE ROW SUBQERY
--> IF SUBQUERY RETURNS EXACTLY ONE VALUE WE CAN USE 
NORMAL OPERATORS(=,!=,<,>,<=,>=) OR SPECIAL OPERATORS 
*/
-- NORMAL OPERATOR
SELECT DNAME
FROM dept WHERE DEPTNO = (SELECT DEPTNO
						FROM EMP
                        WHERE ENAME = 'ALLEN');
                        

-- SPECIAL OPERATOR
SELECT DNAME 
FROM dept WHERE DEPTNO IN (SELECT DEPTNO
						   FROM EMP
                           WHERE ENAME = 'ALLEN');
                        
                        
/* MULTI ROW SUBQERY:
-->IF A SUBQUERY RETURNS MORE THAN ONE VALUE WE CALL IT AS MULTI ROW SUBQUERY.
--> IF SUBQUERY RETURNS MORE THAN ONE VALUE alter WE CANNOT USE NORMAL OPERATORS.
    WE MUST USE SPECIAL OPERATOR. */
    
  -- getting Error 
 SELECT DNAME
 FROM dept WHERE DEPTNO = (SELECT DEPTNO
                          FROM EMP
                          WHERE ENAME IN ('SCOTT','MILLER'));
                          
 SELECT DNAME
 FROM dept WHERE DEPTNO IN (SELECT DEPTNO
                          FROM EMP
                          WHERE ENAME IN ('SCOTT','MILLER'));
                          
/*NOTE:
IT IS VERY DIFFICULT TO IDENTIFY WHETHER SUBQUERY BELONGS TO SINGLE 
ROW SUBQUERY OR MULTI ROW SUBQUERY.
SO IT IS  ALWAYS RECOMANDED TO USE SPECIAL OPERATOR WHILE COMPAREING VALUE.
*/





















