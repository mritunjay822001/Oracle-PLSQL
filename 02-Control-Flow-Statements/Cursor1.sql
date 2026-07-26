DECLARE
 v_ename emp.ename%type;
 v_sal emp.sal%type;
  CURSOR c1 IS SELECT ename,sal
  FROM emp;
  BEGIN 
   OPEN c1;
    
	 Loop
	  FETCH c1 INTO v_ename,v_sal;
	  EXIT WHEN c1%notfound;
	   dbms_output.put_line(v_ename||'  '||v_sal);
	    END Loop;
				dbms_output.put_line(c1%rowcount||' ' ||'rows fetched....');
		CLOSE c1;

		END;
		/