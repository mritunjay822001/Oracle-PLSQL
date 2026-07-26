DECLARE 
 p players%rowtype;
  CURSOR c1 IS SELECT * FROM players;
   BEGIN 
    OPEN c1;
	LOOP
	 FETCH  c1 INTO p;
	  EXIT WHEN c1%notfound;
	  dbms_output.put_line('pname='||p.pname||' '||'sixes='||p.sixes
	  ||' '||'fours='||p.fours||' '||'debut_year='||p.debut);
	  END Loop;
	   dbms_output.put_line(c1%ROWCOUNT ||'rows fetched....');
	    CLOSE c1;
		END;
		/