BEGIN 
FOR r IN (SELECT * FROM players)
loop
dbms_output.put_line(r.pname||' '||r.sixes||' '||r.fours);
END loop;
END ;
/