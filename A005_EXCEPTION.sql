--DECLARE
--    MINHAEXE EXCEPTION;
--    n NUMBER := 10;

SET SERVEROUTPUT ON;
  
CREATE OR REPLACE PROCEDURE PROC_EXCEPTION IS
    MINHAEXE EXCEPTION;
    n NUMBER := 10;
  
BEGIN
    FOR i IN &i .. &n LOOP
    dbms_output.put_line(i * i);
        IF i * 2 = 10 THEN
            RAISE MINHAEXE;
            
        END IF;
    END LOOP;
    
    EXCEPTION
        WHEN MINHAEXE THEN
            RAISE_APPLICATION_ERROR(-20015, 'Você caiu na exceção');
END;