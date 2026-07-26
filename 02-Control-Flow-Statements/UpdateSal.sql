DECLARE 
v_empno emp.empno%type;
v_amount float;


BEGIN
 
 v_empno:=&empno;
 v_amount:=&amount;
  UPDATE emp SET sal=sal+v_amount
  WHERE empno=v_empno;
  commit;
  dbms_output.put_line('salary increased.....');
  end;
  /
