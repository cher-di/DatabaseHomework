-- Код создания
CREATE TABLE appointments (
    app_app      VARCHAR(30) PRIMARY KEY,
    app_salary   NUMBER(8,2) NOT NULL
);

-- Пример ввода данных
INSERT INTO appointments (
    app_app,
    app_salary
) VALUES (
    'тест должность',
    100000
);

-- Код создания
CREATE SEQUENCE employers_seq START WITH 1;

CREATE TABLE employers (
    emp_id        NUMBER(6) DEFAULT employers_seq.NEXTVAL PRIMARY KEY,
    emp_dep_id    NUMBER(2) NOT NULL
        REFERENCES departs ( dep_id ),
    emp_name      VARCHAR(30) NOT NULL,
    emp_sname     VARCHAR(30) NOT NULL,
    emp_pname     VARCHAR(30),
    emp_email     VARCHAR(100) NOT NULL,
    emp_pas_ser   CHAR(10) NOT NULL,
    emp_gender    CHAR(2) NOT NULL, -- 2 тк оракл почему-то считает что для одной буквы нужно 2
    emp_inn       CHAR(12) NOT NULL,
    emp_snils     CHAR(14) NOT NULL,
    emp_adress    VARCHAR(500) NOT NULL,
    emp_wphone    VARCHAR(30) NOT NULL,
    emp_phone     VARCHAR(30),
    emp_app       VARCHAR(30) NOT NULL
        REFERENCES appointments ( app_app ),
    emp_chief     NUMBER(6)
);

-- Пример ввода данных
INSERT INTO employers (
    emp_dep_id,
    emp_name,
    emp_sname,
    emp_pname,
    emp_email,
    emp_pas_ser,
    emp_gender,
    emp_inn,
    emp_snils,
    emp_adress,
    emp_wphone,
    emp_phone,
    emp_app,
    emp_chief
) VALUES (
    1,
    'тест имя',
    'тест фамилия',
    'тест отчество',
    'тестовое мыло',
    '1234567890',
    'м',
    '123456789012',
    '12345678901234',
    'тестовый адрес',
    'тестовый раб тел',
    'тестовый тел',
    'тест должность',
    1
);