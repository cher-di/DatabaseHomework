-- Код создания
CREATE SEQUENCE departs_seq START WITH 1;

CREATE TABLE departs (
    dep_id      NUMERIC(2) DEFAULT departs_seq.NEXTVAL PRIMARY KEY,
    dep_name    VARCHAR(50),
    dep_email   VARCHAR(100)
);

-- Пример ввода данных
INSERT INTO departs (
    dep_name,
    dep_email
) VALUES (
    'тестовый отдел',
    'тестовое мыло'
);