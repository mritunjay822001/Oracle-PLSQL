--define a function to return maximum salary in the table
 CREATE OR REPLACE FUNCTION max_sal RETURN NUMBER
  AS 
   p_max emp.sal%type;
    BEGIN 
	 SELECT MAX(sal) INTO p_max FROM emp;
	  RETURN p_max;
	  END;
	  /
	   