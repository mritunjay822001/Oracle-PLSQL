--define a function to return job by empno
 
 CREATE OR REPLACE FUNCTION empJob(p_empno NUMBER) RETURN VARCHAR 
  AS 
   p_job emp.job%type;
    BEGIN 
	SELECT job INTO p_job
	FROM emp
	WHERE empno=p_empno;
	 RETURN p_job;
	 END;
	 /