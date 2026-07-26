DECLARE
 v_empno emp.empno%TYPE;
 v_ename emp.ename%TYPE;
 v_sal   emp.sal%TYPE;
 v_job   emp.job%TYPE;
 
  BEGIN
   v_empno:=&empno;
    SELECT EMPNO,ENAME,SAL,JOB INTO v_empno,v_ename,v_sal,v_job
	FROM emp
	WHERE empno=v_empno;
	
	DBMS_OUTPUT.PUT_LINE('EMPNO='|| v_empno ||'   '||'ENAME='|| v_ename ||'   '|| 'SAL='|| v_sal||'   '|| 'JOB='|| v_job);
	end;
	/