--Define a function to calculate experience of employee
CREATE OR REPLACE FUNCTION experience(p_empno NUMBER) RETURN NUMBER
 AS 
 v_hiredate DATE;
 v_exp NUMBER;
  BEGIN 
   SELECT hiredate INTO v_hiredate FROM emp
   WHERE empno=p_empno;
    v_exp:=trunc((sysdate-v_hiredate)/365);
	 RETURN v_exp;
	 END;
	 /