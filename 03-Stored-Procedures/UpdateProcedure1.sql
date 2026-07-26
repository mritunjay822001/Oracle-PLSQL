--Define a Procedure to increase salary of Specific
--employee with specific amount.
--Send updated salary out of the Procedure

CREATE OR REPLACE PROCEDURE update_salary
(p_empno IN NUMBER,P_amount IN NUMBER,p_sal OUT NUMBER)
AS
 BEGIN 
 UPDATE emp SET sal=sal+p_amount
 WHERE empno=p_empno;
 commit;
  dbms_output.put_line('SAL INCREASED TO EMPLOYEE');
   SELECT sal INTO p_sal FROM emp
   WHERE empno=p_empno;
   END;
   /
  