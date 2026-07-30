--declare a function to find manager number of given employee

 CREATE OR REPLACE FUNCTION mgr(p_empno NUMBER) RETURN number
  AS 
  p_mgr emp.mgr%type;
  BEGIN 
   SELECT mgr INTO p_mgr
   FROM emp
   WHERE empno=p_empno;
    RETURN p_mgr;
	END;
	/