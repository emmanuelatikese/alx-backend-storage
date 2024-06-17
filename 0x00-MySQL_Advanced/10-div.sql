-- starting with function
-- this is a div function


DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE Ans INT;
    IF b != 0 THEN
        SET Ans = a / b;
        RETURN Ans;
    ELSE
        RETURN 0;
    END IF;
END //

DELIMITER ;