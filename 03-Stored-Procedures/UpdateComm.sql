--create a procedure to update commission
 CREATE OR REPLACE PROCEDURE update_comm
 (p_empno IN emp.empno%type,p_comm IN emp.comm%type,p_assign OUT emp.comm%type)
  AS 
  BEGIN 
  UPDATE emp SET comm=comm+p_comm
  WHERE empno=p_empno;
  commit;
   dbms_output.put_line('Comm Updated....');
    
	SELECT comm INTO p_assign
	FROM emp
	WHERE empno=p_empno;
	 END;
	 /