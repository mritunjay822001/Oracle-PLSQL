DECLARE 
 CURSOR c1 IS SELECT * FROM emp;
  BEGIN 
  FOR r IN c1
  loop
  dbms_output.put_line(r.ename||' '||r.sal||' '||r.job);
  END loop;
  END ;
  /