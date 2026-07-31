--define user defined to handle error(divide by 1 exception)

 DECLARE 
  a NUMBER(4);
  b NUMBER(4);
  x NUMBER(4);
  one_divide EXCEPTION;
   BEGIN 
  a:=&a;
  b:=&b;
  x:=a/b;
   IF 
    b=1 THEN 
	RAISE one_divide;
	 END IF ;
	 dbms_output.put_line('x='||' '||x);
	  EXCEPTION
	  WHEN one_divide THEN 
	   dbms_output.put_line('Denominator must be greater than 1');
	    END ;
		/
	