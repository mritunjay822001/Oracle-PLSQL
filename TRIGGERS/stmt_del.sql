--create a trigger to restrict user to delete records

 CREATE OR REPLACE TRIGGER del_trg
  before DELETE 
   ON emp
    BEGIN 
	 raise_application_error(-20045,'you have no authority to delete records');
	  END;
	  /