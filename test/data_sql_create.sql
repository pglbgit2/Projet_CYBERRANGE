/*
-----------------------------------------------------------------
--          SCRIPT SQL Projet_Deploiment | Groupe DAN          --
-----------------------------------------------------------------
-- Utilisé avec MySQL

-- POUR LA VM DATABASE UNIQUEMENT
*/

DROP DATABASE IF EXISTS MonSite;
CREATE DATABASE MonSite;
USE MonSite; 
/*'USE <Database>' Devrait marcher normalement*/
CREATE TABLE Users (
	Userid int PRIMARY KEY AUTO_INCREMENT,
	Username varchar(255),
	Email varchar(255) NOT NULL,
	Pwd varchar(255) NOT NULL);

CREATE TABLE SECURE_LOGS (
	BreachID int PRIMARY KEY AUTO_INCREMENT,
	DOBr date,
	Request varchar(255) NOT NULL);

/* Utilise la commande : 'sudo mysql < data_sql_create.sql  */
