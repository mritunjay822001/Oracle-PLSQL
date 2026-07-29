--define a function to return name by empno
 CREATE OR REPLACE FUNCTION empName(p_empno NUMBER) RETURN VARCHAR2
  AS 
  P_ename emp.ename%type;
   BEGIN 
    SELECT ename INTO p_ename
	FROM emp
	WHERE empno=p_empno;
	 RETURN p_ename;
	 END;
	 /