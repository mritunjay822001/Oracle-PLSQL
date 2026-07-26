-- Q.4 Create a Procedure to update department number
 CREATE OR REPLACE PROCEDURE update_dept
 (p_empno IN NUMBER,p_deptno IN emp.deptno%type, p_assign OUT emp.deptno%type) 
 AS 
 BEGIN 
 UPDATE emp SET deptno=p_deptno
 WHERE empno=p_empno;
 commit;
 dbms_output.put_line('Deptno Assigned...');
  SELECT deptno INTO p_assign
  FROM emp
  WHERE empno=p_empno;
   END;
   /