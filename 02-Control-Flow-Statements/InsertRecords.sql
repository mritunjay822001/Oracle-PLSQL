BEGIN
 INSERT INTO student50 VALUES (&sid,'&sname','&city');
 commit;
 dbms_output.put_line('record succesfully inserted...');
 end;
 /