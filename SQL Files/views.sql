-- Список сотрудников и их почта
CREATE VIEW devs_emails AS
    SELECT
        dev_name,
        dev_email
    FROM
        developers;

-- Список продуктов за последний месяц
CREATE OR REPLACE VIEW recent_products AS
    SELECT
        prod_name
    FROM
        products
    WHERE
        prod_date >= SYSDATE - 30;

-- Сотрудники мужчины
CREATE OR REPLACE VIEW men_emp AS
    SELECT
        emp_name,
        emp_sname,
        emp_pname
    FROM
        employers
    WHERE
        emp_gender = 'м';
-- Сотрудники женщины
CREATE OR REPLACE VIEW men_emp AS
    SELECT
        emp_name,
        emp_sname,
        emp_pname
    FROM
        employers
    WHERE
        emp_gender = 'ж';