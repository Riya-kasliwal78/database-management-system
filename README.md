# Laundry Management System - DBMS Project

## 📌 Overview
This project is a **Database Management System** for a laundry service business.  
It helps manage customers, employees, services, orders, payments, and assignments in an organized way.

Key features:
- Manage customer information and their order history.
- Maintain employee details, roles, and salaries.
- Define laundry services and pricing.
- Track orders with status updates and delivery dates.
- Record payments with method and amount.
- Assign employees to specific orders.
- Store item details such as type, color, and fabric.

---

## 🗂 Database Schema

### Tables
1. **Customers** – Stores customer details.
2. **Employees** – Employee information, including role and salary.
3. **Services** – List of laundry services with prices.
4. **Orders** – Tracks customer orders, status, and delivery dates.
5. **OrderServices** – Links orders to specific services and quantities.
6. **Payments** – Stores payment transactions for orders.
7. **Assignments** – Tracks employee assignments to orders.
8. **OrderItems** – Lists items in each order with descriptions.

---

## 📄 Sample Data
The repository includes a SQL file with **INSERT statements** for all tables.

Example:
```sql
-- Insert into Customers table
INSERT INTO Customers (name, phone_number, email, address)
VALUES ('Alice Johnson', '1234567890', 'alice@example.com', '123 Maple Street');
