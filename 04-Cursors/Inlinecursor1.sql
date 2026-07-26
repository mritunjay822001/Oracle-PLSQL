BEGIN 
FOR r IN (SELECT * FROM emp)
loop
dbms_output.put_line(r.ename||' '||r.sal||' '||r.job);
END loop;
end;
/