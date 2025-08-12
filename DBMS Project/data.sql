-- Insert sample data into Customers table

INSERT INTO Customers (name, phone_number, email, address) VALUES ('Alice Johnson', '1234567890', 'alice@example.com', '123 Maple Street');
INSERT INTO Customers (name, phone_number, email, address) VALUES ('Bob Smith', '2345678901', 'bob@example.com', '456 Oak Avenue');
INSERT INTO Customers (name, phone_number, email, address) VALUES ('Charlie Brown', '3456789012', 'charlie@example.com', '789 Pine Lane');
INSERT INTO Customers (name, phone_number, email, address) VALUES ('David Clark', '4567890123', 'david@example.com', '321 Cedar Road');
INSERT INTO Customers (name, phone_number, email, address) VALUES ('Eve Adams', '5678901234', 'eve@example.com', '654 Birch Boulevard');


-- Insert sample data into Employees table

INSERT INTO Employees (name, phone_number, role, salary) VALUES ('Jane Doe', '6789012345', 'Manager', 50000);
INSERT INTO Employees (name, phone_number, role, salary) VALUES ('John Green', '7890123456', 'Worker', 25000);
INSERT INTO Employees (name, phone_number, role, salary) VALUES ('Emily White', '8901234567', 'Worker', 25000);
INSERT INTO Employees (name, phone_number, role, salary) VALUES ('Michael Black', '9012345678', 'Delivery', 20000);
INSERT INTO Employees (name, phone_number, role, salary) VALUES ('Sara Blue', '0123456789', 'Worker', 25000);


-- -- Insert sample data into Services table

INSERT INTO Services (service_name, price) VALUES ('Washing', 10.00);
INSERT INTO Services (service_name, price) VALUES ('Dry Cleaning', 20.00);
INSERT INTO Services (service_name, price) VALUES ('Ironing', 5.00);
INSERT INTO Services (service_name, price) VALUES ('Folding', 2.50);
INSERT INTO Services (service_name, price) VALUES ('Stain Removal', 15.00);


-- -- Insert sample data into Orders table

INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (1, TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2024-10-05', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (2, TO_DATE('2024-10-02', 'YYYY-MM-DD'), TO_DATE('2024-10-06', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (3, TO_DATE('2024-10-03', 'YYYY-MM-DD'), TO_DATE('2024-10-07', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (4, TO_DATE('2024-10-04', 'YYYY-MM-DD'), NULL, 'Pending');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (5, TO_DATE('2024-10-05', 'YYYY-MM-DD'), NULL, 'Pending');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (1, TO_DATE('2024-10-06', 'YYYY-MM-DD'), TO_DATE('2024-10-10', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (2, TO_DATE('2024-10-07', 'YYYY-MM-DD'), NULL, 'In Progress');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (3, TO_DATE('2024-10-08', 'YYYY-MM-DD'), NULL, 'In Progress');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (4, TO_DATE('2024-10-09', 'YYYY-MM-DD'), NULL, 'In Progress');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (5, TO_DATE('2024-10-10', 'YYYY-MM-DD'), NULL, 'Pending');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (1, TO_DATE('2024-10-11', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (2, TO_DATE('2024-10-12', 'YYYY-MM-DD'), NULL, 'Pending');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (3, TO_DATE('2024-10-13', 'YYYY-MM-DD'), TO_DATE('2024-10-17', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (4, TO_DATE('2024-10-14', 'YYYY-MM-DD'), NULL, 'In Progress');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (5, TO_DATE('2024-10-15', 'YYYY-MM-DD'), TO_DATE('2024-10-19', 'YYYY-MM-DD'), 'Completed');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (1, TO_DATE('2024-10-16', 'YYYY-MM-DD'), NULL, 'Pending');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (2, TO_DATE('2024-10-17', 'YYYY-MM-DD'), NULL, 'In Progress');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (3, TO_DATE('2024-10-18', 'YYYY-MM-DD'), NULL, 'Pending');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (4, TO_DATE('2024-10-19', 'YYYY-MM-DD'), NULL, 'In Progress');
INSERT INTO Orders (customer_id, order_date, delivery_date, status) VALUES (5, TO_DATE('2024-10-20', 'YYYY-MM-DD'), NULL, 'Pending');





-- -- Insert sample data into OrderServices table



INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (1, 1, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (1, 2, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (1, 4, 5);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (2, 1, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (2, 3, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (3, 2, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (3, 5, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (4, 1, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (4, 4, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (5, 2, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (5, 3, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (6, 1, 4);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (6, 3, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (7, 4, 5);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (7, 5, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (8, 2, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (8, 3, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (9, 1, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (9, 5, 4);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (10, 2, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (10, 3, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (11, 1, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (11, 4, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (12, 2, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (12, 5, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (13, 1, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (13, 3, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (14, 4, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (14, 5, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (15, 1, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (15, 2, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (16, 3, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (16, 5, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (17, 4, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (17, 1, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (18, 2, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (18, 3, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (19, 1, 1);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (19, 4, 2);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (20, 5, 3);
INSERT INTO OrderServices (order_id, service_id, quantity) VALUES (20, 3, 1);



-- -- Insert sample data into Payments table

INSERT INTO Payments (order_id, amount_paid, payment_date, payment_method) VALUES (1, 45.00, TO_DATE('2024-10-05', 'YYYY-MM-DD'), 'Credit Card');
INSERT INTO Payments (order_id, amount_paid, payment_date, payment_method) VALUES (2, 30.00, TO_DATE('2024-10-06', 'YYYY-MM-DD'), 'Cash');
INSERT INTO Payments (order_id, amount_paid, payment_date, payment_method) VALUES (3, 35.00, TO_DATE('2024-10-07', 'YYYY-MM-DD'), 'UPI');
INSERT INTO Payments (order_id, amount_paid, payment_date, payment_method) VALUES (6, 60.00, TO_DATE('2024-10-10', 'YYYY-MM-DD'), 'Credit Card');
INSERT INTO Payments (order_id, amount_paid, payment_date, payment_method) VALUES (11, 20.00, TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Cash');
INSERT INTO Payments (order_id, amount_paid, payment_date, payment_method) VALUES (13, 40.00, TO_DATE('2024-10-17', 'YYYY-MM-DD'), 'UPI');
INSERT INTO Payments (order_id, amount_paid, payment_date, payment_method) VALUES (15, 25.00, TO_DATE('2024-10-19', 'YYYY-MM-DD'), 'Credit Card');





-- -- -- Insert sample data into Assignments table


INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (1, 2, TO_DATE('2024-10-01', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (2, 3, TO_DATE('2024-10-02', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (3, 4, TO_DATE('2024-10-03', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (4, 2, TO_DATE('2024-10-04', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (5, 3, TO_DATE('2024-10-05', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (6, 4, TO_DATE('2024-10-06', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (7, 2, TO_DATE('2024-10-07', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (8, 3, TO_DATE('2024-10-08', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (9, 4, TO_DATE('2024-10-09', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (10, 2, TO_DATE('2024-10-10', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (11, 3, TO_DATE('2024-10-11', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (12, 4, TO_DATE('2024-10-12', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (13, 2, TO_DATE('2024-10-13', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (14, 3, TO_DATE('2024-10-14', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (15, 4, TO_DATE('2024-10-15', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (16, 2, TO_DATE('2024-10-16', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (17, 3, TO_DATE('2024-10-17', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (18, 4, TO_DATE('2024-10-18', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (19, 2, TO_DATE('2024-10-19', 'YYYY-MM-DD'));
INSERT INTO Assignments (order_id, employee_id, assignment_date) VALUES (20, 3, TO_DATE('2024-10-20', 'YYYY-MM-DD'));


-- -- -- Insert sample data into OrderItems table

INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (1, 'Shirt', 'Blue', 'Cotton');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (1, 'Pants', 'Black', 'Polyester');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (2, 'Dress', 'Red', 'Silk');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (2, 'Blouse', 'White', 'Linen');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (3, 'T-shirt', 'Green', 'Cotton');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (3, 'Jacket', 'Black', 'Wool');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (4, 'Skirt', 'Pink', 'Cotton');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (5, 'Jeans', 'Blue', 'Denim');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (5, 'Sweater', 'Gray', 'Wool');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (6, 'Shirt', 'White', 'Cotton');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (7, 'Coat', 'Brown', 'Wool');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (8, 'Shorts', 'Yellow', 'Cotton');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (9, 'Trousers', 'Navy', 'Polyester');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (10, 'Jacket', 'Black', 'Leather');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (11, 'Dress', 'Purple', 'Silk');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (12, 'Pants', 'Beige', 'Linen');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (13, 'Blouse', 'Orange', 'Cotton');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (14, 'Shirt', 'Red', 'Polyester');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (15, 'Jacket', 'Green', 'Wool');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (16, 'Sweater', 'Blue', 'Cashmere');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (17, 'Coat', 'Gray', 'Wool');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (18, 'Blouse', 'Pink', 'Silk');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (19, 'Skirt', 'Yellow', 'Linen');
INSERT INTO OrderItems (order_id, item_name, color, fabric_type) VALUES (20, 'Shorts', 'Black', 'Cotton');
