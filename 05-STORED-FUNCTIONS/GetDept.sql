--define a function to get specific department employee records

  CREATE OR REPLACE FUNCTION GETDEPT(p_deptno NUMBER) RETURN SYS_REFCURSOR
   AS 
    C1 SYS_REFCURSOR;
	BEGIN 
	OPEN C1 FOR SELECT  * FROM DEPT
	WHERE DEPTNO=p_deptno;
	 RETURN C1;
	 END;
	 /