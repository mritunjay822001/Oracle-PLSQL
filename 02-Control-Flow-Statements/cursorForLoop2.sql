DECLARE 
 CURSOR C1 IS SELECT * FROM PLAYERS;
  BEGIN 
   FOR r IN c1
   Loop
   dbms_output.put_line(r.pname||' '||r.sixes||' '||r.fours);
   END loop;
   END ;
   /