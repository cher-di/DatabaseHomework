-- Код создания
CREATE TABLE licenses_types (
    lt_type   VARCHAR(10) PRIMARY KEY
);

-- Пример ввода данных
INSERT INTO licenses_types ( lt_type ) VALUES ( 'т лиц' );

-- Код создания
CREATE SEQUENCE licenses_seq START WITH 1;

CREATE TABLE licenses (
    lic_id         NUMBER(10) DEFAULT licenses_seq.NEXTVAL PRIMARY KEY,
    lic_login      VARCHAR(30) NOT NULL
        REFERENCES customers ( cust_login ),
    lic_contract   NUMBER(10) NOT NULL
        REFERENCES products ( prod_contract ),
    lic_date       DATE NOT NULL,
    lic_type       VARCHAR(10) NOT NULL
        REFERENCES licenses_types ( lt_type ),
    lic_price      NUMBER(7) NOT NULL CHECK ( lic_price >= 0 ),
    lic_key        VARCHAR(40) NOT NULL,
    lic_number     NUMBER(4) NOT NULL,
    lic_in_use     NUMBER(4) NOT NULL,
    CONSTRAINT licenses_ck CHECK ( lic_number >= lic_in_use )
);

-- Пример ввода данных
INSERT INTO licenses (
    lic_login,
    lic_contract,
    lic_date,
    lic_type,
    lic_price,
    lic_key,
    lic_number,
    lic_in_use
) VALUES (
    'тестовый логин',
    1,
    '24-04-2019',
    'т лиц',
    1234567,
    '1234567890',
    1234,
    1234
);

-- Код создания
CREATE TABLE subscription_pay (
    sp_id           NUMBER(10)
        REFERENCES licenses ( lic_id ),
    sp_pay_date     DATE,
    sp_mounth_cnt   NUMBER(3) NOT NULL CHECK ( sp_mounth_cnt > 0 ),
    CONSTRAINT subscription_pay_pk PRIMARY KEY ( sp_id,
    sp_pay_date )
);

-- Пример ввода данных
INSERT INTO subscription_pay (
    sp_id,
    sp_pay_date,
    sp_mounth_cnt
) VALUES (
    1,
    '24-04-2019',
    1
);