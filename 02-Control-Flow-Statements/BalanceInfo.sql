DECLARE
v_accno accounts.accno%type;
v_cname accounts.cname%type;
v_branch accounts.branch%type;
v_balance accounts.balance%type;

 BEGIN
 
 v_accno:=&accno;
  
  SELECT accno,cname,branch,balance INTO v_accno,v_cname,v_branch,v_balance
  FROM accounts
  WHERE v_accno=accno;
  dbms_output.put_line('accno='||v_accno||' '||'cname='||v_cname
  ||'  '||'branch='||v_branch||' '||'balance='||v_balance);
  end;
  /