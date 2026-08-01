--create a trigger torestrict user from updating records
 CREATE OR REPLACE TRIGGER update_trg
 before UPDATE 
  ON emp
   BEGIN 
   raise_application_error(-20010,'you have no authority to make chnages in the table');
    END;
	/