--Define a procedure to drop any database objects
  
   CREATE OR REPLACE PROCEDURE drop_object (p_obj_type varchar2,p_obj_name varchar2)
    AS 
	 BEGIN 
	  EXECUTE immediate 'drop ' || p_obj_type||' '||p_obj_name;
	   dbms_output.put_line(p_obj_type||' '||p_obj_name||'dropped');
	    END;
		/