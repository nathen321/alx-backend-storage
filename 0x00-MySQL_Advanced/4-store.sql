-- Create the trigger

CREATE TRIGGER uptodate
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items SET quantity = quantity - NEW.number WHERE NAME = NEW.item_name;
END//
