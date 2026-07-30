DECLARE 
 x NUMBER(4);
 y NUMBER(4);
 z NUMBER(4);
  BEGIN 
   x:=&x;
   y:=&y;
   z:=x/y;
    dbms_output.put_line(' value of z='||' '|| z);
	 EXCEPTION
	  WHEN zero_divide THEN 
	  dbms_output.put_line('Num can not divied by zero');
	   WHEN value_error THEN 
	   dbms_output.put_line('invalid format/mismatch format');
	   WHEN others THEN 
	   dbms_output.put_line('Something Went Wrong- try after while');
	   END;
	   /