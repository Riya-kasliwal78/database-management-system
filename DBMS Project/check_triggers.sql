CREATE OR REPLACE TRIGGER trg_check_phone_number
BEFORE INSERT OR UPDATE ON Customers
FOR EACH ROW
BEGIN
    IF NOT REGEXP_LIKE(:NEW.phone_number, '^\d{10}$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Phone number must contain exactly 10 digits.');
    END IF;
END;
/


CREATE OR REPLACE TRIGGER trg_check_phone_number_employees
BEFORE INSERT OR UPDATE ON Employees
FOR EACH ROW
BEGIN
    IF NOT REGEXP_LIKE(:NEW.phone_number, '^\d{10}$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Phone number must contain exactly 10 digits.');
    END IF;
END;
/
