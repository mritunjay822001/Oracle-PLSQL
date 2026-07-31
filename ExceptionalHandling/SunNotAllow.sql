-- raise the exception for handling update not allowed on sunday

 DECLARE 
  v_empno emp.empno%type;
   v_amount FLOAT ;
    sunday_not_allow EXCEPTION;
	 BEGIN 
	 v_empno:=&empno;
	 v_amount:=&amount;
	  IF to_char(sysdate,'dy')='SUN' THEN 
	   RAISE sunday_not_allow;
	    END IF ;
		 UPDATE emp SET sal=sal+v_amount
		 WHERE empno=v_empno;
		 commit;
		  dbms_output.put_line('Salary Increased');
		   EXCEPTION
		    WHEN sunday_not_allow THEN 
			dbms_output.put_line('Updating not allowed on Sunday');
			END ;
			/