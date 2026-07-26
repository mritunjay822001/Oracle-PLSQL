DECLARE
v_empno emp.empno%type;
 
 BEGIN
 v_empno:=&empno;
 
  DELETE FROM emp
  WHERE empno=v_empno;
  commit;
   dbms_output.put_line('record deleted.....');
   end;
   /