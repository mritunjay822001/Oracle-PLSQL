-- define a function to return commission of given employee.

 CREATE OR REPLACE FUNCTION getComm(p_empno NUMBER) RETURN NUMBER
  AS
  p_comm emp.comm%type;
  BEGIN 
   SELECT comm INTO p_comm
   FROM emp
   WHERE empno=p_empno;
   RETURN p_comm;
   END;
   /