/*TCL:-TRANSACTION CONTROL LANGUAGE
--> 1)COMMIT--SAVE THE DATABASE PERMANATLY IN DATABASE.
--> 2)ROLLBACK
--> 3)SAVEPOINT:
------> it is used to mark the  position or restoration of points.
------> save points are not related to database
-------> note: While  performing savepoint we cannot use keyword commit.
-------->savepoint follow bottom UP approach
*/

CREATE TABLE Q1
(
ID int
);

INSERT INTO Q1 VALUES (1),
					  (2),
                      (3),
                      (4);

SELECT * FROM Q1;



COMMIT;
SET AUTOCOMMIT=OFF;
SELECT * FROM Q1;

DELETE FROM Q1 WHERE ID=2;

SELECT * FROM Q1;
ROLLBACK;

SELECT * FROM Q1;
DELETE FROM Q1;
ROLLBACK;

DELETE FROM Q1 WHERE ID=3;
COMMIT;
ROLLBACK;
SELECT * FROM Q1;

/*COMMIT: IT IS USED TO SAVE THE RECORDS INTO DATABASE 
  ROLLBACK: 
  -->IT IS USED TO OBTAIN SAVED RECORDS FROM DATABASE.
  --> IT WILL BRING TO THE POINT WHERE WE USE THE COMMIT LAST TIME.
  SAVEPOINT:
  --> IT IS NOT PERMANANT, IT IS TREMPORARY.
  --> IT IS NOT PART OF DATABASE
 */
  
  USE EXCELR2;
  SET AUTOCOMMIT=OFF;
  
  CREATE TABLE STUDENT123
  (
  ID INT,
  SNAME VARCHAR(50)
  );
  
  INSERT INTO STUDENT123 VALUES(1,'ARUN');
  SAVEPOINT S1;
  INSERT INTO STUDENT123 VALUES(2,'MILLAN');
  INSERT INTO STUDENT123 VALUES(3,'KING');
  SAVEPOINT S2
  ;
  
  ROLLBACK TO S2;
  SELECT * FROM STUDENT123;
  ROLLBACK TO S1;
  ROLLBACK TO S2;
  
  SELECT * FROM EMP;
  COMMIT;
  SAVEPOINT A1;
  DELETE FROM EMP WHERE DEPTNO=10;
  SAVEPOINT A2;
  DELETE FROM EMP WHERE DEPTNO=20;
  SAVEPOINT A3;
  DELETE FROM EMP WHERE DEPTNO=30;
  SELECT * FROM EMP;
  ROLLBACK TO A3;
  ROLLBACK TO A2;
  ROLLBACK TO A1;
  SELECT * FROM EMP;
  COMMIT;
  SAVEPOINT B1;
  DELETE FROM EMP WHERE DEPTNO=30;
  SAVEPOINT B2;
  DELETE FROM  EMP WHERE DEPTNO=20;
  SAVEPOINT B3;
  DELETE FROM EMP WHERE DEPTNO=10;
  SELECT * FROM EMP;
  ROLLBACK TO B3;
  ROLLBACK TO B2;
  ROLLBACK TO B1;
  
  create table s2
  (
  id int,
  name varchar(50)
  );
  insert into s2 values (1,'avinash');
  insert into s2 values(2,'aniket');
  savepoint s1;
  insert into s2 values(3,'anita');
  insert into s2 values(4,'sruthi');
  savepoint s2;
  insert into s2 values (6,'rushi');
  rollback to s2;
  select * from s2;
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  










