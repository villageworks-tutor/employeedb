-- PostgreSQL対応データベース作成・ユーザ作成スクリプト
DROP DATABASE IF EXISTS employeedb;
DROP USER IF EXISTS employeedb_admin;
CREATE USER employeedb_admin WITH password 'admin123';
CREATE DATABASE employeedb owner employeedb_admin encoding 'UTF8';
