-- PL/SQL Implementation: Triggers, Functions, and Procedures

-- Trigger: Automatically updates the status of an order to 'In Progress' when assigned to an employee

CREATE OR REPLACE TRIGGER update_order_status
AFTER INSERT ON Assignments
FOR EACH ROW
BEGIN
    UPDATE Orders
    SET status = 'In Progress'
    WHERE order_id = :NEW.order_id;
END;
/


-- -- Function: Calculate the total amount of services for an order

CREATE OR REPLACE FUNCTION calculate_total_order_amount (p_order_id IN NUMBER) 
RETURN NUMBER 
IS
    total_amount NUMBER(10, 2);
BEGIN
    SELECT SUM(s.price * os.quantity)
    INTO total_amount
    FROM OrderServices os
    JOIN Services s ON os.service_id = s.service_id
    WHERE os.order_id = p_order_id;
    
    RETURN total_amount;
END;
/


-- -- Procedure: Complete an order and mark it as delivered

CREATE OR REPLACE PROCEDURE complete_order (p_order_id IN NUMBER) 
IS
BEGIN
    UPDATE Orders
    SET status = 'Delivered', 
        delivery_date = SYSDATE
    WHERE order_id = p_order_id;
END;
/





