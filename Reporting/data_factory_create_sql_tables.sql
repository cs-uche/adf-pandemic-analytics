/*
-- Purpose: Create the Schema and Tables for the Azure SQL database.
-- Author: Uche (with acknowledgment of code portions from Udemy course by Ramesh Retnasamy).
-- Data Source: Private Azure database containing files from https://opendata.ecdc.europa.eu/covid19/.
*/

-- Create the schema
CREATE SCHEMA covid_reporting
GO

-- Create the 'cases_and_deaths' table to store COVID-19 cases and deaths data.
DROP TABLE IF EXISTS covid_reporting.cases_and_deaths
GO
CREATE TABLE covid_reporting.cases_and_deaths
(
    country                 VARCHAR(100),
    country_code_2_digit    VARCHAR(2),
    country_code_3_digit    VARCHAR(3),
    population              BIGINT,
    cases_counts             BIGINT,
    deaths_counts            BIGINT,
    reported_date           DATE,
    source                  VARCHAR(500)
)
GO

-- Create the 'hospital_admissions_weekly' table to store weekly hospital admissions data.
DROP TABLE IF EXISTS covid_reporting.hospital_admissions_weekly
GO
CREATE TABLE covid_reporting.hospital_admissions_weekly
(
    country                 	VARCHAR(100),
    country_code_2_digit    	VARCHAR(2),
    country_code_3_digit    	VARCHAR(3),
    population              	BIGINT,
    reported_year_week      	VARCHAR(10),
    reported_week_start_date	DATE,
    reported_week_end_date      DATE,
    hospital_occupancy_count 	DECIMAL(5,2),
    icu_occupancy_count      	DECIMAL(5,2),
    source                  	VARCHAR(500)
)
GO

-- Create the 'hospital_admissions_daily' table to store daily hospital admissions data.
DROP TABLE IF EXISTS covid_reporting.hospital_admissions_daily
GO
CREATE TABLE covid_reporting.hospital_admissions_daily
(
    country                 VARCHAR(100),
    country_code_2_digit    VARCHAR(2),
    country_code_3_digit    VARCHAR(3),
    population              BIGINT,
    reported_date           DATE,
    hospital_occupancy_count FLOAT,
    icu_occupancy_count      FLOAT,
    source                  VARCHAR(500)
)
GO

-- Create the 'testing' table to store COVID-19 testing data.
DROP TABLE IF EXISTS covid_reporting.testing
GO
CREATE TABLE covid_reporting.testing
(
    country                 VARCHAR(100),
    country_code_2_digit    VARCHAR(2),
    country_code_3_digit    VARCHAR(3),
    year_week               VARCHAR(8),
    week_start_date         DATE,
    week_end_date           DATE,
    new_cases               BIGINT,
    tests_done              BIGINT,
    population              BIGINT,
    testing_data_source      VARCHAR(500)
)
GO

/*
/*
-- It is interesting to note the immediate effect of creating a table in Data Factory and observing the change in the Azure SQL database.
-- Purpose: Create the Schema and Tables for an Azure SQL database.
-- Author: Uche.
*/


CREATE SCHEMA demo
GO

CREATE TABLE demo.test_table(
	id				INT IDENTITY(1000,1),
	title			VARCHAR(200),
	first_name		VARCHAR(50),
	last_name		VARCHAR(50),
	date_created	DATE,
	date_modified	DATE,
	date_deleted	DATE
);
GO

-- DROP TABLE [demo].[test_table]

*/
