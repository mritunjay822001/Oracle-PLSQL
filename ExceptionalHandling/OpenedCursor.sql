--handle the exception cursour already opened
 DECLARE
 CURSOR c1 IS SELECT * FROM emp;
  r emp%rowtype;
   BEGIN 
    OPEN c1;
	 OPEN c1;--(write intentionally to handle exception)
	 loop
	  FETCH c1 INTO r;
	   EXIT WHEN c1%notfound;
	    dbms_output.put_line(r.ename||' '||r.sal);
		 END loop;
		  EXCEPTION 
		  WHEN cursor_already_open THEN 
		   dbms_output.put_line('Cursor already opend');
		   END ;
		  / 
	   