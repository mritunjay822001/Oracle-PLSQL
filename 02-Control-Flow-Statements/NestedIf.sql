DECLARE 
v_sid student.sid%type;
r1 student%rowtype;
r2 result%rowtype;

 BEGIN
  v_sid:=&sid;
   SELECT * INTO r1 FROM student
   WHERE sid=v_sid;
    r2.total:=r1.java+r1.oracle+r1.swift;
	r2.avrg:=r2.total/3;
	 IF r1.java>=40 AND r1.oracle>=40 AND r1.swift>=40 THEN 
	 IF r2.avrg>=60 THEN 
	 r2.result:='FIRST';
	 elsif r2.avrg>=50 THEN 
	  r2.result:='SECOND';
	  ELSE 
	  r2.result:='THIRD';
	  END IF;
	   ELSE 
	   r2.result:='FAIL';
	   END IF;
	    INSERT INTO result VALUES(r1.sid,r2.total,r2.avrg,r2.result);
		commit;
		dbms_output.put_line('result found and stored in result table');
		END;
		/
	   
