-- Смена сессии для создания пользователей:
ALTER SESSION SET "_ORACLE_SCRIPT" = true;

-- Создание пользователей
CREATE USER ts IDENTIFIED BY parol; -- сотрудники техподдержки
CREATE USER wwd IDENTIFIED BY parol; -- сотрудники из отдела по работе с разработчиками
CREATE USER wwc IDENTIFIED BY parol; -- сотрудники из отдела по работе с каталогом
CREATE USER bk IDENTIFIED BY parol; -- бухгалтерия
CREATE USER hr IDENTIFIED BY parol; -- отдел кадров
CREATE USER cl IDENTIFIED BY parol; -- клиенты

-- Техподержка
GRANT SELECT ON products TO ts;
GRANT SELECT ON products_types TO ts;
GRANT SELECT ON language_reference_table TO ts;
GRANT SELECT ON localization TO ts;
GRANT SELECT ON programs TO ts;
GRANT SELECT ON games TO ts;
GRANT SELECT,INSERT,UPDATE,DELETE ON licenses TO ts;
GRANT SELECT ON licenses_types TO ts;
GRANT SELECT,INSERT,UPDATE,DELETE ON subscription_pay TO ts;
GRANT SELECT,INSERT,UPDATE,DELETE ON customers TO ts;
GRANT SELECT ON departs TO ts;
GRANT SELECT ON employers TO ts;
GRANT SELECT,INSERT,UPDATE ON requests TO ts;
GRANT SELECT,INSERT,UPDATE,DELETE ON requests_themes TO ts;
GRANT SELECT,INSERT,UPDATE,DELETE ON requests_statuses TO ts;

-- Отдел по работе с разработчиками
GRANT SELECT,INSERT,UPDATE,DELETE ON developers TO wwd;
GRANT SELECT,INSERT,UPDATE,DELETE ON dev_phones TO wwd;
GRANT SELECT ON products TO wwd;
GRANT SELECT ON products_types TO wwd;
GRANT SELECT ON language_reference_table TO wwd;
GRANT SELECT ON localization TO wwd;
GRANT SELECT ON programs TO wwd;
GRANT SELECT ON games TO wwd;
GRANT SELECT ON departs TO wwd;
GRANT SELECT ON employers TO wwd;

-- Отдел по работе с каталогом
GRANT SELECT ON developers TO wwc;
GRANT SELECT,INSERT,UPDATE,DELETE ON products TO wwc;
GRANT SELECT,INSERT,UPDATE,DELETE ON products_types TO wwc;
GRANT SELECT,INSERT,UPDATE,DELETE ON language_reference_table TO wwc;
GRANT SELECT,INSERT,UPDATE,DELETE ON localization TO wwc;
GRANT SELECT,INSERT,UPDATE,DELETE ON programs TO wwc;
GRANT SELECT,INSERT,UPDATE,DELETE ON games TO wwc;
GRANT SELECT,INSERT,UPDATE,DELETE ON licenses_types TO wwc;
GRANT SELECT ON departs TO wwc;
GRANT SELECT ON employers TO wwc;

-- Бухгалтерия
GRANT SELECT ON developers TO bk;
GRANT SELECT ON dev_phones TO bk;
GRANT SELECT ON products TO bk;
GRANT SELECT ON products_types TO bk;
GRANT SELECT ON programs TO bk;
GRANT SELECT ON games TO bk;
GRANT SELECT ON licenses TO bk;
GRANT SELECT ON licenses_types TO bk;
GRANT SELECT ON subscription_pay TO bk;
GRANT SELECT ON customers TO bk;
GRANT SELECT ON departs TO bk;
GRANT SELECT ON employers TO bk;
GRANT SELECT ON appointments TO bk;

-- Отдел кадров
GRANT SELECT,INSERT,UPDATE,DELETE ON departs TO hr;
GRANT SELECT,INSERT,UPDATE,DELETE ON employers TO hr;
GRANT SELECT,INSERT,UPDATE,DELETE ON appointments TO hr;

-- Клиенты
GRANT SELECT ON products TO cl;
GRANT SELECT ON products_types TO cl;
GRANT SELECT ON localization TO cl;
GRANT SELECT ON programs TO cl;
GRANT SELECT ON games TO cl;
GRANT SELECT,INSERT,UPDATE,DELETE ON customers TO cl;
GRANT SELECT,INSERT ON requests TO cl;
GRANT SELECT ON requests_themes TO cl;
GRANT SELECT ON requests_statuses TO cl;