--define a trigger to restrict user from any DMl operations on SUNDAY
  CREATE OR REPLACE TRIGGER t1
   before INSERT OR UPDATE OR DELETE 
    ON emp
	 DECLARE 
	 v_day VARCHAR2(3);
	  BEGIN 
	   v_day:=to_char(sysdate,'DY');
	    IF v_day='SUN' THEN 
		raise_application_error(-20055,'YOU CANNOT PERFORM OPERATIONS ON SUNDAY');
		 END if;
		 END;
		 /