-- Код создания
CREATE TABLE requests_themes (
    rt_theme   VARCHAR(40) PRIMARY KEY
);

-- Пример ввода данных
INSERT INTO requests_themes ( rt_theme ) VALUES ( 'тестовая тема' );

-- Код создания
CREATE TABLE requests_statuses (
    rs_status   VARCHAR(40) PRIMARY KEY
);

-- Пример ввода данных
INSERT INTO requests_statuses ( rs_status ) VALUES ( 'тестовый статус' );

-- Код создания
CREATE SEQUENCE requests_seq START WITH 1;

CREATE TABLE requests (
    req_id       NUMBER(10) DEFAULT requests_seq.NEXTVAL PRIMARY KEY,
    req_login    VARCHAR(30)
        REFERENCES customers ( cust_login ),
    req_theme    VARCHAR(40)
        REFERENCES requests_themes ( rt_theme ),
    req_date     DATE,
    req_emp_id   NUMBER(6)
        REFERENCES employers ( emp_id ),
    req_descr    VARCHAR(1000),
    req_status   VARCHAR(40)
        REFERENCES requests_statuses ( rs_status )
);

-- Пример ввода данных
INSERT INTO requests (
    req_login,
    req_theme,
    req_date,
    req_emp_id,
    req_descr,
    req_status
) VALUES (
    'тестовый логин',
    'тестовая тема',
    '24-04-2019',
    1,
    'тестовое описание',
    'тестовый статус'
);