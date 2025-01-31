use excelr2;

select sal, comm, sal+comm
from emp;

/*ifnull:
it is used to eliminate side effect of using null in arithmatic operation.
syntax: ifnull(argument1,argument2);
argument1: here we need to write col_name/expression which is null.
argument2: here we need to write numerical values which will be substituted if argumnet is null.  */


select sal, comm,sal+comm, sal+ifnull(comm,0)
from emp;


select sal, comm,sal+comm, sal+ifnull(comm,1)
from emp;


























