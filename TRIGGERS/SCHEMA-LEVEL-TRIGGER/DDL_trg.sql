--define a trigger to restrict user[c##mritunjay] toi perform ddl operations
--DDL(alter,purge,truncate,rename)
 CREATE OR REPLACE TRIGGER ddl_trg
  before ALTER OR  purge OR TRUNCATE  OR rename
   ON c##mritunjay.SCHEMA 
    BEGIN 
	 raise_application_error(-20022,'can not allow to perfom DDL-contact to admin for access');
	  END;
	  /
