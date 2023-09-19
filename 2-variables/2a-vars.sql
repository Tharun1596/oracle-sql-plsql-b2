-- This is a comment.

-- Declaration section.
DECLARE
    v_num NUMBER := 1;

-- Execution section.
BEGIN
    -- v_num := 1/0; -- Uncomment this line to get exception message.

    DBMS_OUTPUT.PUT_LINE('hi');

-- Exception section.
EXCEPTION
    WHEN others THEN
        DBMS_OUTPUT.PUT_LINE(sqlcode || ' ' || sqlerrm)
END;
/