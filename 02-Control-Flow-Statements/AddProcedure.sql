--Create a Procedure to Add Two numbers

CREATE OR REPLACE PROCEDURE Add_numbers(x  IN NUMBER , y IN NUMBER )
 AS 
  z NUMBER(4);
   BEGIN 
   z:=x+y;
    dbms_output.put_line('SUM=' ||' '||z);
	END;
	/