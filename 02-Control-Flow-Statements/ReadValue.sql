	DECLARE								
	 x number(3);
	 y number(3);
	 z number(4);
	 
		BEGIN
		 x:=&x;
		 y:=&y;
		 z:=x+y;
		dbms_output.put_line('sum=' ||'   '||z);
		end;
		/