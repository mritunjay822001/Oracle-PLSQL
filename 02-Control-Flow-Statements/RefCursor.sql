DECLARE 
c1 SYS_REFCURSOR;
r1 emp%rowtype;
r2 dept%rowtype;

BEGIN 
 OPEN c1 FOR SELECT * FROM emp;
 
 loop 
  FETCH c1 INTO r1;
  EXIT WHEN c1%notfound;
   dbms_output.put_line(r1.ename||' '||r1.sal||' '||r1.job);
    END loop;
	CLOSE c1;
	
	 OPEN c1 FOR SELECT * FROM dept;
	 
	 LOOP
	  FETCH c1 INTO r2;
	  EXIT WHEN c1%notfound;
	   dbms_output.put_line(r2.deptno||' '||r2.dname||' '||r2.loc);
	   END loop;
	     CLOSE c1;
		  END ;
		  /