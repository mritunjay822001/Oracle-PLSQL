--define a trigger to restrict user[c##mritunjay] from dropping any
-- database objects

 CREATE OR REPLACE TRIGGER schema_trg
  before DROP 
   ON c##mritunjay.SCHEMA 
   BEGIN 
   raise_application_error(-20035,'dropping any db objects not allowed');
    END ;
	/