-- Смена сессии для создания пользователей:
ALTER SESSION SET "_ORACLE_SCRIPT" = true;

-- Создание пользователей
CREATE USER tech_support IDENTIFIED BY password1; -- техподдержка
CREATE USER work_with_dev IDENTIFIED BY password2; -- отдел по работе с разработчиками
CREATE USER work_with_catalog IDENTIFIED BY password3; -- отдел по работе с каталогом
CREATE USER bookkeeping IDENTIFIED BY password4; -- бухгалтерия
CREATE USER human_res IDENTIFIED BY password5; -- отдел кадров
CREATE USER customers IDENTIFIED BY password6; -- клиенты

-- Техподержка
GRANT SELECT ON products TO tech_support;
GRANT SELECT ON products_types TO tech_support;
GRANT SELECT ON language_reference_table TO tech_support;
GRANT SELECT ON localization TO tech_support;
GRANT SELECT ON programs TO tech_support;
GRANT SELECT ON games TO tech_support;
GRANT SELECT,INSERT,UPDATE,DELETE ON licenses TO tech_support;
GRANT SELECT ON licenses_types TO tech_support;
GRANT SELECT,INSERT,UPDATE,DELETE ON subscription_pay TO tech_support;
GRANT SELECT,INSERT,UPDATE,DELETE ON customers TO tech_support;
GRANT SELECT ON departs TO tech_support;
GRANT SELECT ON employers TO tech_support;
GRANT SELECT,INSERT,UPDATE ON requests TO tech_support;
GRANT SELECT,INSERT,UPDATE,DELETE ON requests_themes TO tech_support;
GRANT SELECT,INSERT,UPDATE,DELETE ON requests_statuses TO tech_support;

-- Отдел по работе с разработчиками
GRANT SELECT,INSERT,UPDATE,DELETE ON developers TO work_with_dev;
GRANT SELECT,INSERT,UPDATE,DELETE ON dev_phones TO work_with_dev;
GRANT SELECT ON products TO work_with_dev;
GRANT SELECT ON products_types TO work_with_dev;
GRANT SELECT ON language_reference_table TO work_with_dev;
GRANT SELECT ON localization TO work_with_dev;
GRANT SELECT ON programs TO work_with_dev;
GRANT SELECT ON games TO work_with_dev;
GRANT SELECT ON departs TO work_with_dev;
GRANT SELECT ON employers TO work_with_dev;

-- Отдел по работе с каталогом
GRANT SELECT ON developers TO work_with_catalog;
GRANT SELECT,INSERT,UPDATE,DELETE ON products TO work_with_catalog;
GRANT SELECT,INSERT,UPDATE,DELETE ON products_types TO work_with_catalog;
GRANT SELECT,INSERT,UPDATE,DELETE ON language_reference_table TO work_with_catalog;
GRANT SELECT,INSERT,UPDATE,DELETE ON localization TO work_with_catalog;
GRANT SELECT,INSERT,UPDATE,DELETE ON programs TO work_with_catalog;
GRANT SELECT,INSERT,UPDATE,DELETE ON games TO work_with_catalog;
GRANT SELECT,INSERT,UPDATE,DELETE ON licenses_types TO work_with_catalog;
GRANT SELECT ON departs TO work_with_catalog;
GRANT SELECT ON employers TO work_with_catalog;

-- Бухгалтерия
GRANT SELECT ON developers TO bookkeeping;
GRANT SELECT ON dev_phones TO bookkeeping;
GRANT SELECT ON products TO bookkeeping;
GRANT SELECT ON products_types TO bookkeeping;
GRANT SELECT ON programs TO bookkeeping;
GRANT SELECT ON games TO bookkeeping;
GRANT SELECT ON licenses TO bookkeeping;
GRANT SELECT ON licenses_types TO bookkeeping;
GRANT SELECT ON subscription_pay TO bookkeeping;
GRANT SELECT ON customers TO bookkeeping;
GRANT SELECT ON departs TO bookkeeping;
GRANT SELECT ON employers TO bookkeeping;
GRANT SELECT ON appointments TO bookkeeping;

-- Отдел кадров
GRANT SELECT,INSERT,UPDATE,DELETE ON departs TO human_res;
GRANT SELECT,INSERT,UPDATE,DELETE ON employers TO human_res;
GRANT SELECT,INSERT,UPDATE,DELETE ON appointments TO human_res;

-- Клиенты
GRANT SELECT ON products TO customers;
GRANT SELECT ON products_types TO customers;
GRANT SELECT ON localization TO customers;
GRANT SELECT ON programs TO customers;
GRANT SELECT ON games TO customers;
GRANT SELECT,INSERT,UPDATE ON customers TO customers;
GRANT SELECT,INSERT ON requests TO customers;
GRANT SELECT ON requests_themes TO customers;
GRANT SELECT ON requests_statuses TO customers;