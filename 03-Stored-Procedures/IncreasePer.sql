--create a Procedure to update sal by percetage
-- column v_per format 999999.99
CREATE OR REPLACE PROCEDURE per_inc
(p_empno IN emp.empno%type,p_per IN float,p_display OUT FLOAT )
 AS 
  BEGIN 
  UPDATE emp SET sal=sal+sal*p_per/100
  WHERE empno=p_empno;
   COMMIT;
    dbms_output.put_line('given percentage increased to employee..');
	 SELECT sal INTO p_display FROM emp
	 WHERE empno=p_empno;
	  END;
	  /