--Define a function to return hiredate of employee
 
 CREATE OR REPLACE FUNCTION emp_hiredate(p_empno NUMBER) RETURN DATE 
  AS 
  p_hiredate emp.hiredate%type;
   BEGIN 
   SELECT hiredate INTO p_hiredate
   FROM emp
   WHERE empno=p_empno;
   RETURN p_hiredate;
   END;
   /