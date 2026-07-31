--handle the exception due to invalid cursor(without opening cursor)

 DECLARE 
  CURSOR c1 IS SELECT * FROM emp;
  r emp%rowtype;
   BEGIN 
   -- OPEN C1;(donot open to get invalid_cursor exception)
    loop
	FETCH c1 INTO r;
	 EXIT WHEN c1%notfound;
	  dbms_output.put_line(r.ename||' '||r.sal);
	   END loop;
	   CLOSE c1;
	    EXCEPTION
		 WHEN invalid_cursor THEN 
		  dbms_output.put_line('cursor not opened');
		  END;
		 /