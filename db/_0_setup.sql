--------------------------------------------------------------------------------
-- Hard Delete
--------------------------------------------------------------------------------

DROP DATABASE IF EXISTS bootstrap;
DROP USER IF EXISTS bootstrap;

--------------------------------------------------------------------------------
-- Roles
--------------------------------------------------------------------------------

CREATE USER bootstrap;

--------------------------------------------------------------------------------
-- Databases
--------------------------------------------------------------------------------

CREATE DATABASE bootstrap WITH OWNER bootstrap;