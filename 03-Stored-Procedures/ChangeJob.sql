--create a Procedure to change employee job
 CREATE OR REPLACE PROCEDURE change_job
 (p_empno IN NUMBER,p_job IN VARCHAR2,p_assign OUT VARCHAR2)
  AS 
  BEGIN 
   UPDATE emp SET job=p_job WHERE 
   empno=p_empno;
    commit;
	dbms_output.put_line(' JOB UPDATED....');
	 
	 SELECT JOB INTO p_assign
	 FROM emp
	 WHERE empno=p_empno;
	 END;
	 /