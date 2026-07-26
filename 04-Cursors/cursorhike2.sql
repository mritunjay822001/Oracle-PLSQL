DECLARE 
r hike%rowtype;
CURSOR c1 IS SELECT * FROM hike;
 BEGIN 
  OPEN c1;
   loop
    FETCH c1 INTO r;
	 EXIT WHEN c1%notfound;
	   UPDATE employee SET sal=sal+sal*r.per/100
	   WHERE empid=r.empid;
	    END loop;
		 commit;
		 dbms_output.put_line('SAL INCREASED to ALL EMPs');
		  CLOSE c1;
		  END;
		  /