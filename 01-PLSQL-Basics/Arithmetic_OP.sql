DECLARE
x number(4);
y number(4);
z number (4);
a number(4);

 BEGIN
  x:=&x;
  y:=&y;
  z:=&z;
  a:=x+y/z-x+z*y;
  dbms_output.put_line('value='||'    '|| a);
  end;
  /
  