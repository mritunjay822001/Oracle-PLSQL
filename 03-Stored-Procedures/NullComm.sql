--create a Procedure to set comm=null
CREATE OR REPLACE PROCEDURE comm_null
(p_empno IN emp.empno%type,p_comm IN emp.comm%type,p_display OUT emp.comm%type)
AS 
BEGIN 
UPDATE emp SET comm=p_comm
WHERE empno=p_empno;
COMMIT;
 dbms_output.put_line('Comm updated to null...');
  SELECT comm INTO p_display FROM emp
  WHERE empno=p_empno;
  END;
  /