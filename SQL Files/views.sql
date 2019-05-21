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

-- Сроки истечения платных подписок (до какого срока проплачена подписка)
CREATE OR REPLACE VIEW subscription_expiration_date AS
    SELECT
        temp.lic_id
        add_months(temp.lic_date,SUM(temp.sp_month_cnt) AS lic_exp_date
    FROM
        (SELECT * FROM licenses, subscription_pay WHERE lic_id = sp_id) temp
    WHERE
        temp.lic_type = 'т лиц'
    GROUP BY temp.lic_id;
      
-- Запросы к техподдержке, датированные сегодняшним днем
CREATE OR REPLACE VIEW today_request AS
    SELECT
        req_id,
        req_login,
        req_theme,
        req_emp_id,
        req_descr,
        req_status
    FROM
        requests
    WHERE
        trunc(SYSDATE) = trunc(req_date);
        
-- Распределение запросов к техподдержке по темам за последний год
CREATE OR REPLACE VIEW 