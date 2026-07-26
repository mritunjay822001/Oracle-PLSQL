CREATE OR REPLACE PROCEDURE addition(x IN NUMBER,y IN NUMBER,z out NUMBER)
 AS 
 BEGIN 
  z:=x+y;
  -- dbms_output.put_line('SUM='|| z);
   END;
   /