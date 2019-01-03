#!/bin/sh -xe
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password123 -Q "SELECT 1"

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password123 -Q "IF DB_ID('TestDb') IS NULL BEGIN; PRINT 'Creating TestDb'; CREATE DATABASE TestDb; END;"
/opt/mssql-tools/bin/sqlcmd -d TestDb -S localhost -U sa -P Password123 -Q "IF NOT EXISTS (SELECT 1 FROM sys.fulltext_catalogs WHERE [name] = 'ft') BEGIN; PRINT 'Creating fulltext catalog ft'; CREATE FULLTEXT CATALOG ft AS DEFAULT; END;"
