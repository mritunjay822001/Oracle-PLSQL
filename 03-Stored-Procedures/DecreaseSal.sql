--Create a Procedure to Decrease specific amount to specific  employee
 CREATE OR REPLACE PROCEDURE decrease_salary
 (p_empno IN NUMBER,p_amount IN NUMBER,p_sal OUT NUMBER)
 AS
  BEGIN 
   UPDATE emp SET sal=sal-p_amount
   WHERE empno=p_empno;
    commit;
	dbms_output.put_line('SAL DECREASED TO GIVEN EMPLOYEE');
	 
	 SELECT sal INTO p_sal
	 FROM emp
	 WHERE empno=p_empno;
	 END;
	 /