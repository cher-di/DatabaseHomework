-- Список сотрудников и их почта
CREATE VIEW devs_emails AS
    SELECT
        dev_name,
        dev_email
    FROM
        developers;