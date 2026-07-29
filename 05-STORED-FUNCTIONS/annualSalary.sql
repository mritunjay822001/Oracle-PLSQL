--Define a function to calculate annual salary of employee
 
  CREATE OR REPLACE FUNCTION annualSal(p_empno NUMBER) RETURN FLOAT
   AS 
    p_sal emp.sal%type;
	p_annual FLOAT ;
	 BEGIN 
	 SELECT sal INTO p_sal FROM emp WHERE 
	 empno=p_empno;
	 p_annual:=p_sal*12;
	 RETURN p_annual;
	  END;
	  /
    