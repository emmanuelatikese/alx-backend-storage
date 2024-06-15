-- triggering
-- adding new order

DELIMITER //

CREATE TRIGGER reduce_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
 UPDATE items
 SET items.quantity = items.quantity - NEW.number
 WHERE
 NEW.item_name = items.name;
END //

DELIMITER ;