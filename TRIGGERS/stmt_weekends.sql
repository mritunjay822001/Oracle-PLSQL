--define a triggers to restrict users on weekends to perfom DMLs
 CREATE OR REPLACE TRIGGER weekends_trg
  before INSERT OR UPDATE OR DELETE 
  ON emp
   DECLARE 
    v_days varchar2(3);
	 BEGIN 
	  v_days:= to_char(sysdate,'DY');
	   IF v_days= 'SUN' OR 'SAT' THEN 
	   raise_application_error(-20088,'You Can Not Perform DMls operation On Weekend,Try on MON-FRI');
	   END IF ;
	   END;
	   /