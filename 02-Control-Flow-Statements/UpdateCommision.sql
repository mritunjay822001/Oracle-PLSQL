DECLARE
v_amount float;
BEGIN

v_amount:=&amount;

 UPDATE emp SET comm= NVL(comm,0)+v_amount
 WHERE comm IS null;
 commit;
 dbms_output.put_line('comm increased....');
 end;
 /