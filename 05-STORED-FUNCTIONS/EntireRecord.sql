--define a function to get all emp all records
 CREATE OR REPLACE FUNCTION emp_detail RETURN SYS_REFCURSOR
  AS
   
   c1 SYS_REFCURSOR;
    BEGIN 
	OPEN c1 FOR  SELECT * FROM emp;
	
	  RETURN c1;
	  END;
	  /