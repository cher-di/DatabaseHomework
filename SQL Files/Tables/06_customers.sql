-- Код создания
CREATE TABLE customers (
    cust_login     VARCHAR(30) PRIMARY KEY,
    cust_nick      VARCHAR(50),
    cust_email     VARCHAR(100),
    cust_date      DATE,
    cust_phone     VARCHAR(30),
    cust_payment   NUMERIC(16)
);

-- Пример ввода данных
INSERT INTO customers (
    cust_login,
    cust_nick,
    cust_email,
    cust_date,
    cust_phone,
    cust_payment
) VALUES (
    'тестовый логин',
    'тестовый ник',
    'тестовое мыло',
    '24-04-2019',
    'тестовый тел',
    1234567890
);