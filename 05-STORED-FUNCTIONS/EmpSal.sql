--define a function to return salary by empno
  CREATE OR REPLACE  FUNCTION empSal(p_empno NUMBER) RETURN NUMBER
   AS 
    p_sal emp.sal%type;
	 BEGIN 
	  SELECT sal INTO p_sal
	  FROM emp
	  WHERE empno=p_empno;
	  RETURN p_sal;
	  END;
	  /