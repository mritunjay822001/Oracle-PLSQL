--define a procedure alter table
 
  CREATE OR REPLACE PROCEDURE alter_table(p_table varchar2,
  p_query varchar2)
   AS 
    BEGIN 
	EXECUTE IMMEDIATE 'ALTER TABLE '||p_table||' '|| p_query;
	 dbms_output.put_line(p_table|| 'table altered');
	 end;
	 /