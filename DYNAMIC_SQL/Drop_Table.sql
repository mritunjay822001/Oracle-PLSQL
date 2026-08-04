--define a procedure  to drop the table

 CREATE OR REPLACE PROCEDURE drop_table(p_table varchar2)
  AS 
  BEGIN 
   EXECUTE IMMEDIATE 'DROP TABLE '|| p_table;
    dbms_output.put_line(p_table|| 'table dropped');
	 END;
	 /