CREATE TABLE cars
vin_num INTEGER PRIMARY KEY
make VARCHAR(50)
model VARCHAR(50)
year INTEGER
used BOOLEAN
base_cost MONEY
for_sale BOOLEAN
customer_id INTEGER
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)


CREATE TABLE customers
customer_id SERIAL PRIMARY KEY
first_name VARCHAR(20)
last_name VARCHAR(20)
phone NUMERIC(10)
email VARCHAR(50)
date_added TIMESTAMP

CREATE TABLE invoices
invoice_id SERIAL PRIMARY KEY
date TIMESTAMP
customer_id INTEGER
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
employee_id INTEGER
FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
vin_num INTEGER
FOREIGN KEY (vinnum) REFERENCES cars(vin_num)
amount MONEY
car_sale BOOLEAN

CREATE TABLE employees
employee_id SERIAL PRIMARY KEY
first_name VARCHAR(20)
last_name VARCHAR(20)
job_title VARCHAR(20)
email VARCHAR(50)
birthday date
pin_code NUMERIC(4)
phone NUMERIC(10)

CREATE TABLE services_tickets
service_id SERIAL PRIMARY KEY
service_done VARCHAR(50)
invoice_id INTEGER
FOREIGN KEY (invoice_id) REFERNCES invoices(invoice_id)
vin_num INTEGER
FOREIGN KEY (vinnum) REFERENCES cars(vin_num)
date_start date
date_finished date

CREATE TABLE service_done_by
employee_id INTEGER
FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
service_id INTEGER
FOREIGN KEY (service_id) REFERENCES services_tickets(service_id)
