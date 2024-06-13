Computer Build Management System

Overview

This project sets up a relational database for managing computer components, technicians, customers, and their relationships. The SQL script creates the necessary tables and populates them with sample data to demonstrate correct functionality and usage.

Features

Components Table: Stores information about various computer components.
Technicians Table: Stores information about technicians responsible for building computers.
Customers Table: Stores information about customers ordering the computer builds.
Computers Table: Manages the relationship between technicians and customers for specific computer builds.
Build_Computer Table: Links computer builds with their respective components and quantities.
Database Schema
COMPONENT

COMPONENT_ID VARCHAR(5) UNIQUE NOT NULL
COMPONENT_NAME VARCHAR(15) NOT NULL
COMPONENT_DESCR VARCHAR(15) NOT NULL
COMPONENT_CAT VARCHAR(15) NOT NULL
COMPONENT_PRICE REAL NOT NULL
TECHNICIAN

TECH_NAME VARCHAR(15) NOT NULL
TECH_SURNAME VARCHAR(15) NOT NULL
TECH_EMAIL VARCHAR(15) UNIQUE NOT NULL
CUSTOMER

CUST_NAME VARCHAR(15) NOT NULL
CUST_SURNAME VARCHAR(15) NOT NULL
CUST_EMAIL VARCHAR(15) UNIQUE NOT NULL
Computers

BUILD_NAME VARCHAR(100) UNIQUE NOT NULL
TECH_EMAIL VARCHAR(15) UNIQUE NOT NULL
CUST_EMAIL VARCHAR(15) UNIQUE NOT NULL
BUILD_COMPUTER

BUILD_ID INT NOT NULL
BUILD_NAME VARCHAR(10) UNIQUE NOT NULL
COMPONENT_ID VARCHAR(5) UNIQUE NOT NULL
NUM_COMPONENTS INT NOT NULL

Sample Data

The script includes sample data to illustrate the use of the database schema:

Technicians

Lindokuhle Zondo (mlindozondo88@gmail.com)
Thuthukani Sbiya (thuthusbiya99@gmail.com)
Components

Intel Core i5 Processor (CPU, $250.00)
8 GB RAM (RAM, $499.99)
Customers

Sabelo Dlomo (sabelodlomo12@gmail.com)
Senzo Myaka (senzomyaka34@gmail.com)
Computers

COMPUTER1 built by Lindokuhle Zondo for Sabelo Dlomo
COMPUTER2 built by Thuthukani Sbiya for Senzo Myaka
Build_Computer

COMPUTER1 includes 1 Intel Core i5 Processor
COMPUTER2 includes 3 8 GB RAM modules

Usage
Execute the SQL script to create the database schema and populate it with sample data.
Verify the creation of tables and insertion of sample data by querying the database.
Conclusion
This SQL script provides a structured approach to managing computer builds, ensuring data integrity and establishing clear relationships between components, technicians, and customers. Use this as a foundation to build more complex database systems for computer management or similar projects.

