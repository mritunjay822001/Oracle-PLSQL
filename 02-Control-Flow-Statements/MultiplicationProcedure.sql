--Create a Procedure to multiply three Numbers

CREATE OR REPLACE PROCEDURE multiplication(a IN NUMBER,b IN NUMBER,c IN NUMBER)

AS
x NUMBER(4);
BEGIN 
 x:=a*b*c;
 dbms_output.put_line('VALUE OF GIVEN NUMBER ='||' '||x);
 END;
 /
  