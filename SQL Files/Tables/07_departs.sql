-- Код создания
CREATE SEQUENCE departs_seq START WITH 1;

CREATE TABLE departs (
    dep_id      NUMBER(2) DEFAULT departs_seq.NEXTVAL PRIMARY KEY,
    dep_name    VARCHAR(50) NOT NULL,
    dep_email   VARCHAR(100) NOT NULL CHECK ( REGEXP_LIKE ( dep_email,
    '.+@.+\..+' ) )
);

-- Пример ввода данных
INSERT INTO departs (
    dep_name,
    dep_email
) VALUES (
    'тестовый отдел',
    'test@mail.ru'
);