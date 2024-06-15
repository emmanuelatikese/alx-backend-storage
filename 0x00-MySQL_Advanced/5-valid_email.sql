-- triggering
-- email validation

DELIMITER //

CREATE TRIGGER email_val
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email != OLD.email THEN
        SET valid_email = 0;
    END IF;
END //

DELIMITER ;