import tkinter as tk
from tkinter import messagebox, ttk
import oracledb

# Oracle Database Connection Configuration
DB_USER = "c##sakshi1"
DB_PASSWORD = "taxi123"
DB_DSN = "desktop-pk58n40:1521/xe"

# Connect to Oracle Database
def connect_db():
    try:
        conn = oracledb.connect(user=DB_USER, password=DB_PASSWORD, dsn=DB_DSN)
        return conn
    except oracledb.DatabaseError as e:
        messagebox.showerror("Database Error", str(e))
        return None

# Authenticate User
def authenticate_user(user_type, username, phone_number, login_window):
    conn = connect_db()
    if not conn:
        return

    cursor = conn.cursor()
    
    # Query based on user type
    if user_type == "Employee":
        query = "SELECT employee_id, name FROM Employees WHERE name = :1 AND phone_number = :2"
    else:
        query = "SELECT customer_id, name FROM Customers WHERE name = :1 AND phone_number = :2"

    cursor.execute(query, (username, phone_number))
    user = cursor.fetchone()
    conn.close()

    if user:
        login_window.destroy()
        if user_type == "Employee":
            show_employee_analytics()
        else:
            show_customer_dashboard(user[0])  # Pass customer_id
    else:
        messagebox.showerror("Error", f"Invalid {user_type} credentials")

# Employee Analytics
def show_employee_analytics():
    analytics_window = tk.Toplevel()
    analytics_window.title("Employee Analytics")
    analytics_window.geometry("600x400")

    tk.Label(analytics_window, text="Employee Analytics Dashboard", font=("Arial", 16)).pack(pady=10)
    
    conn = connect_db()
    if conn:
        cursor = conn.cursor()
        cursor.execute("""
            SELECT role, COUNT(*), AVG(salary) 
            FROM Employees 
            GROUP BY role
        """)
        analytics_data = cursor.fetchall()
        conn.close()

        tree = ttk.Treeview(analytics_window, columns=("Role", "Count", "Average Salary"), show="headings")
        tree.heading("Role", text="Role")
        tree.heading("Count", text="Count")
        tree.heading("Average Salary", text="Average Salary")
        tree.pack(fill=tk.BOTH, expand=True)

        for row in analytics_data:
            tree.insert("", tk.END, values=row)

# Customer Dashboard
def show_customer_dashboard(customer_id):
    customer_window = tk.Toplevel()
    customer_window.title("Customer Dashboard")
    customer_window.geometry("600x400")

    tk.Label(customer_window, text="Welcome, Customer!", font=("Arial", 16)).pack(pady=10)
    
    tk.Label(customer_window, text="Service ID:").pack(pady=5)
    service_id_entry = tk.Entry(customer_window)
    service_id_entry.pack(pady=5)

    tk.Label(customer_window, text="Quantity:").pack(pady=5)
    quantity_entry = tk.Entry(customer_window)
    quantity_entry.pack(pady=5)

    def place_order():
        conn = connect_db()
        if conn:
            cursor = conn.cursor()
            service_id = service_id_entry.get()
            quantity = quantity_entry.get()

            try:
                cursor.execute("""
                    INSERT INTO Orders (order_id, customer_id, order_date, status)
                    VALUES (SEQ_ORDER_ID.NEXTVAL, :1, SYSDATE, 'Pending')
                """, [customer_id])
                cursor.execute("SELECT SEQ_ORDER_ID.CURRVAL FROM DUAL")
                order_id = cursor.fetchone()[0]

                cursor.execute("""
                    INSERT INTO OrderServices (order_id, service_id, quantity)
                    VALUES (:1, :2, :3)
                """, [order_id, service_id, quantity])

                conn.commit()
                messagebox.showinfo("Success", "Order placed successfully!")
            except Exception as e:
                conn.rollback()
                messagebox.showerror("Error", str(e))
            finally:
                conn.close()

    tk.Button(customer_window, text="Place Order", command=place_order).pack(pady=10)

# Main Login Screen
def main():
    root = tk.Tk()
    root.title("Login")
    root.geometry("300x300")

    tk.Label(root, text="User Type", font=("Arial", 14)).pack(pady=10)
    
    user_type_var = tk.StringVar(value="Customer")
    tk.Radiobutton(root, text="Customer", variable=user_type_var, value="Customer").pack()
    tk.Radiobutton(root, text="Employee", variable=user_type_var, value="Employee").pack()

    tk.Label(root, text="Username:").pack(pady=5)
    username_entry = tk.Entry(root)
    username_entry.pack(pady=5)

    tk.Label(root, text="Phone Number:").pack(pady=5)
    phone_entry = tk.Entry(root)
    phone_entry.pack(pady=5)

    def login():
        user_type = user_type_var.get()
        username = username_entry.get()
        phone_number = phone_entry.get()
        authenticate_user(user_type, username, phone_number, root)

    tk.Button(root, text="Login", command=login).pack(pady=20)
    root.mainloop()

if __name__ == "__main__":
    main()
