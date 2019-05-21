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
    SELECT sp_id AS lic_id, SUM(sp_mounth_cnt) AS exp_date
    GROUP BY sp_id;
      
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
        
-- Распределение запросов к техподдержке по темам за последний год в процентах
CREATE OR REPLACE VIEW requests_distribution AS
    SELECT
        req_theme,
        COUNT(req_id) / (
            SELECT
                COUNT(*)
            FROM
                requests
            WHERE
                req_date >= add_months(SYSDATE,-12)
        ) * 100 rc
    FROM
        requests
    WHERE
        req_date >= add_months(SYSDATE,-12)
    GROUP BY
        req_theme;