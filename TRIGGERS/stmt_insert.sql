--create trigger to display message row inserted
 CREATE OR REPLACE TRIGGER insert_trg
  after INSERT
   ON emp
    BEGIN  
	 dbms_output.put_line('Record inserted Sucessfully...');
	 END;
	 /