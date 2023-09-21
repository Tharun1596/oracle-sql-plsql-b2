-- This is a comment.

-- Declaration section.
DECLARE
    v_num NUMBER := 1;
    v_name VARCHAR2(10);

-- Execution section.
BEGIN
    -- v_num := 1/0; -- Uncomment this line to get exception message.
    v_name := 'Gopal';
    DBMS_OUTPUT.PUT_LINE('hi');
    DBMS_OUTPUT.PUT_LINE(LENGTH(v_name));
-- Exception section.
EXCEPTION
    WHEN others THEN
        DBMS_OUTPUT.PUT_LINE(sqlcode || ' ' || sqlerrm);
END;
/