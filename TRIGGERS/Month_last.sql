--define a trigger to restrict user to perfom DMl on last day of month

 CREATE OR REPLACE TRIGGER end_trg
  before INSERT OR UPDATE OR DELETE 
   ON emp
    DECLARE 
	  BEGIN 

	    IF TRUNC(sysdate)=TRUNC(LAST_DAY(sysdate)) THEN 
		 raise_application_error(-20020,'last day of month you cannot perform DMLs');
		  END IF ;
		   END;
		   /