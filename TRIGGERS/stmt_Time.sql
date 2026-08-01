--define a trigger to restrict user from DML operations on specific time
 CREATE OR REPLACE TRIGGER t2
  before INSERT OR UPDATE OR DELETE 
   ON emp
    DECLARE 
	 v_time VARCHAR2(4);
	  BEGIN 
	   v_time:= to_char(systimestamp,'HH24');
	    IF v_time  NOT BETWEEN '10' AND '15' THEN 
		 raise_application_error(-20090,'please login between 10:00AM to 4:00PM only');
		  END IF ;
		  END;
		  /