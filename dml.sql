INSERT INTO cars(
    vin_num
    make
    model,
    year,
    used,
    base_cost,
    for_sale
    customer_id
)VALUES(
    "Toyota",
    "RAV4",
    2015,
    TRUE,
    10,000,
    FALSE
);


INSERT INTO customers(
    customer_id
    first_name,
    last_name,
    phone,
    email,
    date_added
)VALUES(
    "Brian"
    "Vo"
    123-456-7890
    "Vobrian025@gmail.com"
    01/01/2023
);

INSERT INTO invoices(
    invoice_id,
    date,
    customer_id,
    employee_id,
    vin_num,
    amount,
    car_sale
)VALUES(
    01/02/2023
    200
    TRUE
);

INSERT INTO employees(
    employee_id,
    first_name,
    last_name,
    job_title,
    email,
    birthday,
    pin_code,
    phone
)VALUES(
    "Byron"
    "Do"
    "Mechanic"
    "Dobyron@gmail.com"
    05/05/1995
    4321
    098-765-4321
);

INSERT INTO services_tickets(
    service_id,
    service_done,
    invoice_id,
    vin_num,
    date_start,
    date_finish
)VALUES(
    "Oil change"
    01/03/20023
    01/04/2023
);

INSERT INTO service_done_by(
    employee_id,
    service_id
)VALUES();