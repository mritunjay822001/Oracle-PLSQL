DECLARE 
 r emp%rowtype;
  CURSOR c1 IS SELECT * FROM emp;
   
   BEGIN 
    OPEN c1;
    Loop
	FETCH c1 INTO r ;
	 EXIT WHEN c1%notfound;
	  dbms_output.put_line(r.empno);
	  dbms_output.put_line(r.ename);
	  dbms_output.put_line(r.sal);
	  dbms_output.put_line(r.comm);
	  dbms_output.put_line(r.hiredate);
	  dbms_output.put_line(r.mail_id);
	  END Loop;
	   dbms_output.put_line(c1%ROWCOUNT ||' '||'fetched successfully');
	   CLOSE c1;
	   END;
	   /