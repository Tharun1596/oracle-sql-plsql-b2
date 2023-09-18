-- This is a comment.

DECLARE -- Declaration section.
    v_num NUMBER;
    
BEGIN -- Execution section.
    v_num := 1;
    
    -- v_num := 1 / 0; -- uncomment this line to get exception message.
    
    DBMS_OUTPUT.PUT_LINE('v_num: ' || v_num);
    
EXCEPTION -- Exception section.
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(sqlcode || ': ' || sqlerrm);
END;
/