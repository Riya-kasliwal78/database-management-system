-- Table for Customers (Strong Entity with Primary Key)
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    email VARCHAR(30) UNIQUE,
    address VARCHAR(50)
);

-- Table for Employees (Strong Entity with Primary Key)
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    role VARCHAR2(10) CHECK (role IN ('Manager', 'Worker', 'Delivery')) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

-- Service Types (Strong Entity with Primary Key)
CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(30) NOT NULL,
    price DECIMAL(5, 2) NOT NULL
);

-- Table for Orders (Weak Entity with Partial Key and Identifying Relationship)
CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    order_date DATE NOT NULL,
    delivery_date DATE,
    status VARCHAR2(20) DEFAULT 'Pending' CHECK (status IN ('Pending', 'In Progress', 'Completed', 'Delivered')),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);

-- Composite Entity for Many-to-Many Relationship between Orders and Services
CREATE TABLE OrderServices (
    order_id INT,
    service_id INT,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, service_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (service_id) REFERENCES Services(service_id) ON DELETE CASCADE
);

-- Table for Payments (Weak Entity associated with Orders)
CREATE TABLE Payments (
    payment_id INT,
    order_id INT,
    amount_paid DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR2(20) CHECK (payment_method IN ('Cash', 'Credit Card', 'UPI')) NOT NULL,
    PRIMARY KEY (payment_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE
);

-- Table for Assignments (Mapping 1:N Relationship between Employees and Orders)
CREATE TABLE Assignments (
    assignment_id INT PRIMARY KEY,
    order_id INT,
    employee_id INT,
    assignment_date DATE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id) ON DELETE SET NULL
);

-- Mapping Participation Constraint: Ensuring an Employee is always assigned to an Order
ALTER TABLE Assignments
    ADD CONSTRAINT chk_assignment_date CHECK (assignment_date IS NOT NULL);

-- Composite Table for Tracking Item in Order (Composite Attributes Example)
CREATE TABLE OrderItems (
    order_item_id INT  PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(30),
    color VARCHAR(20),
    fabric_type VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE
);



