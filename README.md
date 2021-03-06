# SQL-challenge
> This challenge involves data engineering & analysis of employee records of an organization.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Analysis](#analysis)

## General info
This is a SQL data analysis project of an organization's employee/departments data.
The goal is to review the six .csv files, sketch ERD of tables - define datatypes, primary keys, foreign keys, get the data in SQL tables & analyze it to inspect the information asked.

## Technologies
Project is created with:
* PostgreSQL 11
* jupyter notebook - version 6.0.3

## Setup
To run this project, install or check installation of :
* PostgreSQL 11
* SQLAlchemy

## Analysis

### Data Engineering:

* sketched the ERD using quickdatabasediagrams.com
* created a db named sql-hw in PostgreSQL & copied the QuickDBD-export.sql in database query tool & ran it to replicate tables & dependencies created using quickdatabasediagrams.com into SQL.
* tables were created in correct order to handle foreign keys. Eg: titles table was created before employees table as employees table references titles table for title_id.

### Data Analysis:

* ran the queries to analyze the employee information like name,salary, departments.
* filtered data to get specific information eg: employees hired in a particular year, employees with specific names.
* utilized SQLAlchemy to connect to postgres db & query salaries & titles table.
* used pandas read_sql_query to connect to the db and run queries on salaries & titles tables. 
* utilizied pandas bins to get various salary categories & created a histogram to see these salary ranges to identify most common salary ranges for the employees.
* ran a query in postgres to get the average salary per title & exported that as a .csv file.
* plotted a bar chart of avg salary per title using pandas.
* used a mix of pandas & sqlalchemy here to analyze this data problem.
