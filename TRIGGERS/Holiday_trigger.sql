--define a trigger to restrict user from performing DML on 15 AUG & 26 JAN
 
  CREATE OR REPLACE TRIGGER holiday_trg
   before INSERT OR UPDATE OR DELETE 
    ON emp
	  BEGIN 
	  IF to_char(sysdate,'DD-MON') IN('15-AUG','26-JAN') THEN 
	  raise_application_error(-20077,'DML NOT ALLOWED ON HOLIDAYS');
	   END if;
	   end;
	   /
	 