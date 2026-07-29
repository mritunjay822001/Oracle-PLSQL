--define  a function to return department number by employee number.
 
 CREATE OR REPLACE FUNCTION empDept(p_empno NUMBER) RETURN NUMBER
  AS 
   P_deptno emp.deptno%type;
    BEGIN 
	 SELECT deptno INTO p_deptno
	 FROM emp
	 WHERE empno=p_empno;
	  RETURN p_deptno;
	   END;
	   /