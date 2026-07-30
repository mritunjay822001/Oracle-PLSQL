--define a function to return minimum salary from table
  CREATE OR REPLACE FUNCTION min_sal RETURN NUMBER
   AS 
    min_sal emp.sal%type;
	BEGIN 
	 SELECT MIN(sal)  INTO min_sal FROM emp;
	  RETURN min_sal;
	  END;
	  /