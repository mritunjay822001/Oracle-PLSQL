--define a trigger to print dml operations  completed sucessfully
 CREATE OR REPLACE TRIGGER audit_mess
  after INSERT OR UPDATE OR DELETE 
   ON emp
    DECLARE 
	 op varchar2(15);
	  BEGIN 
	   IF INSERTING THEN 
	   op:= 'INSERT';
	    elsif UPDATING THEN 
		 op:='UPDATE';
		  elsif DELETING THEN 
		   op:= 'DELETE';
		    END IF;
			dbms_output.put_line('DML OPERATION COMPLETED SUCESSFULLY');   
			INSERT INTO emp_audit
			VALUES (user,systimestamp,op);
			END;
			/