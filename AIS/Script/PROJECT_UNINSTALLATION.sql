DISC
CONN project_ac/ac@orcl;
BEGIN
DELETE FROM transaction_tables;
DELETE FROM credit_tables;
DELETE FROM debit_tables;
DELETE FROM journal_tables;
DELETE FROM user_table;
DELETE FROM accounts;
DELETE FROM categories;
DELETE FROM income_statements;
DELETE FROM chart_of_accounts;
DELETE FROM jobs;
DELETE FROM COMPANY_DETAILS;
DELETE FROM finances;
COMMIT;
END;
/
------------------------------------------------

---------------------------------------------------------------
DROP TABLE transaction_tables PURGE;
DROP TABLE journal_tables PURGE;
DROP TABLE credit_tables PURGE;
DROP TABLE debit_tables PURGE;
DROP TABLE user_table PURGE;
DROP TABLE accounts PURGE;
DROP TABLE categories PURGE;
DROP TABLE income_statements PURGE;
DROP TABLE chart_of_accounts PURGE;
DROP TABLE AIS_IMAGE PURGE;
DROP TABLE BRANCH_INFORMATION PURGE;
DROP TABLE BANK_INFORMATION PURGE;
DROP TABLE BANK_NAME PURGE;
DROP TABLE jobs PURGE;
DROP TABLE COMPANY_DETAILS PURGE;
DROP SEQUENCE coa_seq;
DROP TABLE finances;
---------------------------------------------------------------
DROP VIEW account_balanced;
DROP VIEW trial_balance;
DROP VIEW ledger;
DROP VIEW acc_type_amount;
DROP VIEW inc_state;
DROP VIEW monthly_cash_pro;
DROP VIEW equity_details;
DROP VIEW chart_of_acc;
DROP VIEW debit_voucher;
DROP VIEW credit_voucher;
DROP VIEW journal_voucher;
DROP VIEW current_asset;
DROP VIEW fixed_asset;
DROP VIEW contra_asset;
DROP VIEW current_liabilities;
DROP VIEW fixed_liabilities;
DROP VIEW contra_liabilities;
DROP VIEW owner_equity;
DROP VIEW contra_equity; 
DROP VIEW accounts_view;
DROP VIEW monthly_cash;
DROP VIEW trial_balance_pro;
DROP VIEW current_liabilities_pro;
DROP VIEW ledger_pro;
DROP VIEW DEBIT_voucher_PRO;
DROP VIEW monthly_cashatbank_pro;
DROP VIEW monthly_cashatbank;
DROP VIEW credit_voucher_PRO;
DROP VIEW JOURNAL_voucher_PRO;
DROP VIEW asset;
DROP VIEW liability;
DROP VIEW equity;
DROP VIEW as_month;
DROP VIEW bank_in;
DROP VIEW bank_out;
-------------------------------------------------------------
DROP FUNCTION acc_currval; 
DROP FUNCTION acc_currval2;
DROP FUNCTION dr_voucher_seq; 
DROP FUNCTION cr_voucher_seq;
DROP FUNCTION jr_voucher_seq;
DROP FUNCTION debit_trial;
DROP FUNCTION credit_trial;
------------------------------------

CONN sys/sys@orcl as sysdba

REVOKE CREATE USER FROM project_ac;
REVOKE resource FROM project_ac;
REVOKE UNLIMITED TABLESPACE FROM project_ac;
REVOKE DBA FROM project_ac;
REVOKE CONNECT FROM project_ac;
REVOKE CREATE VIEW, CREATE DATABASE LINK, CREATE SEQUENCE, QUERY REWRITE,
                ADMINISTER DATABASE TRIGGER, CREATE SESSION, ALTER SESSION, CREATE MATERIALIZED VIEW, 
                CREATE SYNONYM, CREATE TABLE FROM project_ac;

DROP USER project_ac CASCADE;
COMMIT;
DISC;
CONN;
