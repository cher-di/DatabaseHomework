-- Код создания
CREATE TABLE application_area (
    aa_area   VARCHAR(20) PRIMARY KEY
);

-- Пример ввода данных
INSERT INTO application_area ( aa_area ) VALUES ( 'тест обл' );

-- Код создания
CREATE TABLE programs (
    prog_contract    NUMBER(10) PRIMARY KEY
        REFERENCES products ( prod_contract ),
    prog_area        VARCHAR(20) NOT NULL
        REFERENCES application_area ( aa_area ),
    prog_exp_date    INTERVAL DAY TO SECOND CHECK ( prog_exp_date > numtodsinterval(0,'second') ),
    prog_upgrade     NUMBER(1) CHECK ( REGEXP_LIKE ( prog_upgrade,
    '0|1' ) ),
    prog_downgrade   NUMBER(1) CHECK ( REGEXP_LIKE ( prog_downgrade,
    '0|1' ) )
);

-- Пример ввода данных
INSERT INTO programs (
    prog_contract,
    prog_area,
    prog_exp_date,
    prog_upgrade,
    prog_downgrade
) VALUES (
    1,
    'тест обл',
    INTERVAL '30' DAY,
    1,
    1
);