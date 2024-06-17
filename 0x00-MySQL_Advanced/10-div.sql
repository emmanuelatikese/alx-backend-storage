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
    ELSE
        SET Ans = 0;
    END IF;
    RETURN Ans;
END //

DELIMITER ;