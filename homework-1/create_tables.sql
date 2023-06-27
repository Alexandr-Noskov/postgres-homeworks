-- SQL-команды для создания таблиц
CREATE TABLE customers
# tables 1
(
    customer_id int PRIMARY KEY,
    company_name varchar(100) NOT NULL,
    contact_name varchar(100) NOT NULL
)

#INSERT INTO customers VALUES ();
# добавление данных

#SELECT FROM * customers
# выборка записей

CREATE TABLE employees
# tables 2
(
    employee_id int PRIMARY KEY,
    first_name varchar(100) NOT NULL,
    last_name varchar(100) NOT NULL,
    title varchar(100) NOT NULL,
    birth_date date,
    notes text
)

CREATE TABLE orders
# tables 3
(
    order_id int PRIMARY KEY,
    customer_id int REFERENCES customers (customer_id) NOT NULL,
    employee_id int REFERENCES employees (employee_id)NOT NULL,
    order_date varchar(100) NOT NULL,
    ship_city varchar(100) NOT NULL
)