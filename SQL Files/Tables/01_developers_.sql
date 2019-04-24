-- Код создания
CREATE SEQUENCE developers_seq START WITH 1;

CREATE TABLE developers (
    dev_id          NUMERIC(10) DEFAULT developers_seq.NEXTVAL PRIMARY KEY,
    dev_name        VARCHAR(200),
    dev_founddate   DATE,
    dev_adress      VARCHAR(200),
    dev_email       VARCHAR(100)
);

-- Пример ввода данных
INSERT INTO developers (
    dev_name,
    dev_founddate,
    dev_adress,
    dev_email
) VALUES (
    'тестовое имя',
    '24-04-2019',
    'тестовый адрес',
    'тестовое мыло'
);

-- Код создания
CREATE TABLE dev_phones (
    dph_id      NUMERIC(10)
        REFERENCES developers ( dev_id ),
    dph_phone   VARCHAR(30),
    CONSTRAINT dev_phones_pk PRIMARY KEY ( dph_id,
    dph_phone )
);

-- Пример ввода данных
INSERT INTO dev_phones (
    dph_id,
    dph_phone
) VALUES (
    1,
    'тестовый тел'
);