-- Код создания
CREATE TABLE customers (
    cust_login     VARCHAR(30) PRIMARY KEY,
    cust_nick      VARCHAR(50) NOT NULL,
    cust_email     VARCHAR(100) NOT NULL CHECK ( REGEXP_LIKE ( cust_email,
    '.+@.+\..+' ) ),
    cust_date      DATE NOT NULL,
    cust_phone     VARCHAR(30) NOT NULL CHECK ( REGEXP_LIKE ( cust_phone,
    '[[:digit:]]' ) ),
    cust_payment   NUMBER(16) NOT NULL
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
    'test@mail.ru',
    '24-04-2019',
    '123',
    1234567890
);