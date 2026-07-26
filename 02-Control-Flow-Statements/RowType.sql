DECLARE
v_empno emp.empno%type;
 r emp%rowtype;
 BEGIN
 v_empno:=&empno;
 SELECT * INTO r
  FROM emp
 WHERE empno=v_empno;
 
 dbms_output.put_line(r.ename||'  '||r.sal||'  '||r.job||'  '||r.comm);
 end;
 /