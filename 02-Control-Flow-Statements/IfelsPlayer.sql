DECLARE 
v_pname players.pname%type;
v_debut players.debut%type;
 v_year varchar2(4);
 v_message varchar2(30);
  BEGIN 
  v_pname:='&pname';
    SELECT debut INTO v_debut
	FROM players
	WHERE pname=v_pname;
	v_year:=to_char(v_debut,'yyyy');
	 IF v_year='2008' THEN 
	 v_message:='LEGEND PLAYER';
	 elsif v_year='2016' THEN 
	 v_message:='ELITE PLAYER';
	 END IF;
	 dbms_output.put_line('HE IS'||'  '||v_message);
	 END;
	 /