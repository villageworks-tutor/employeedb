-- MySQL/MariaDB対応データベース作成・ユーザ作成スクリプト
DROP DATABASE IF EXISTS employeedb;
DROP USER IF EXISTS employeedb_admin;
CREATE DATABASE employeedb character SET utf8;
GRANT ALL PRIVILEGES ON employeedb.* to 'employeedb_admin'@'localhost' IDENTIFIED BY 'admin123';
