--define a function to return total employees
 CREATE OR REPLACE FUNCTION totalEmp RETURN SYS_REFCURSOR
  AS 
   c1 SYS_REFCURSOR;
    BEGIN 
	OPEN c1 FOR SELECT * FROM emp;
	 RETURN c1;
	 END;
	 /