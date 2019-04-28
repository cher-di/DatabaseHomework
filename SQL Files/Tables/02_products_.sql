-- Код создания
CREATE TABLE products_types (
    pt_type   VARCHAR(10) PRIMARY KEY
);

-- Пример ввода данных
INSERT INTO products_types ( pt_type ) VALUES ( 'т тип' );

-- Код создания
CREATE TABLE language_reference_table (
    lrt_language   VARCHAR(30) PRIMARY KEY
);

-- Пример ввода данных
INSERT INTO language_reference_table ( lrt_language ) VALUES ( 'тестовый язык' );

-- Код создания
CREATE SEQUENCE products_seq START WITH 1;

CREATE TABLE products (
    prod_contract   NUMBER(10) DEFAULT products_seq.NEXTVAL PRIMARY KEY,
    prod_type       VARCHAR(10) NOT NULL
        REFERENCES products_types ( pt_type ),
    prod_name       VARCHAR(10) NOT NULL,
    prod_price      NUMBER(6) CHECK ( prod_price >= 0 ),
    prod_mprice     NUMBER(6) CHECK ( prod_mprice >= 0 ),
    prod_dev        NUMBER(10) NOT NULL
        REFERENCES developers ( dev_id ),
    prod_date       DATE NOT NULL,
    prod_upd_date   DATE NOT NULL,
    prod_sys_req    VARCHAR(1000) NOT NULL,
    CONSTRAINT date_ck CHECK ( prod_upd_date >= prod_date )
);

-- Пример ввода данных
INSERT INTO products (
    prod_type,
    prod_name,
    prod_price,
    prod_mprice,
    prod_dev,
    prod_date,
    prod_upd_date,
    prod_sys_req
) VALUES (
    'т тип',
    'т имя',
    123456,
    123456,
    1,
    '24-04-2019',
    '24-04-2019',
    'тестовые сист требования'
);

-- Код создания
CREATE TABLE localization (
    l_id         NUMBER(10)
        REFERENCES products ( prod_contract ),
    l_language   VARCHAR(30)
        REFERENCES language_reference_table ( lrt_language ),
    CONSTRAINT localization_pk PRIMARY KEY ( l_id,
    l_language )
);

-- Пример ввода данных
INSERT INTO localization (
    l_id,
    l_language
) VALUES (
    1,
    'тестовый язык'
);