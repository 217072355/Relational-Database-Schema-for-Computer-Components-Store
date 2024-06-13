CREATE TABLE COMPONENT(

COMPONENT_ID VARCHAR(5) UNIQUE NOT NULL,
COMPONENT_NAME VARCHAR(15) NOT NULL,
COMPONENT_DESCR VARCHAR(15) NOT NULL,
COMPONENT_CAT VARCHAR(15) NOT NULL,
COMPONENT_PRICE REAL NOT NULL,
PRIMARY KEY (COMPONENT_ID)

);

CREATE TABLE TECHNICIAN(

TECH_NAME VARCHAR(15) NOT NULL,
TECH_SURNAME VARCHAR(15) NOT NULL,
TECH_EMAIL VARCHAR(15) UNIQUE NOT NULL,
PRIMARY KEY (TECH_EMAIL)

);

CREATE TABLE CUSTOMER(

CUST_NAME VARCHAR(15) NOT NULL,
CUST_SURNAME VARCHAR(15) NOT NULL,
CUST_EMAIL VARCHAR(15) UNIQUE NOT NULL,
PRIMARY KEY(CUST_EMAIL)

);

CREATE TABLE Computers (
  BUILD_NAME VARCHAR(100)UNIQUE NOT NULL,
  TECH_EMAIL VARCHAR(15) UNIQUE NOT NULL,
  CUST_EMAIL VARCHAR(15) UNIQUE NOT NULL,
  PRIMARY KEY (BUILD_NAME),
  FOREIGN KEY (TECH_EMAIL) REFERENCES TECHNICIAN(TECH_EMAIL),
  FOREIGN KEY (CUST_EMAIL) REFERENCES CUSTOMER(CUST_EMAIL)
);

CREATE TABLE BUILD_COMPUTER(
BUILD_ID INT NOT NULL,
BUILD_NAME VARCHAR(10) UNIQUE NOT NULL,
COMPONENT_ID VARCHAR(5) UNIQUE NOT NULL,
NUM_COMPONENTS INT NOT NULL,
PRIMARY KEY (BUILD_ID),
FOREIGN KEY (BUILD_NAME) REFERENCES Computers(BUILD_NAME),
FOREIGN KEY (COMPONENT_ID) REFERENCES COMPONENT(COMPONENT_ID)

);

/*
Using SQL, insert TWO records into the TECHNICIAN table created to demonstrate that I have created them correctly
*/
INSERT INTO TECHNICIAN (COMPONENT_ID, TECH_SURNAME, TECH_EMAIL) VALUES
('Lindokuhle', 'Zondo', 'mlindozondo88@gmail.com'),
('Thuthukani', 'Sbiya', 'thuthusbiya99@gmail.com');

/*
Using SQL, insert TWO records into the COMPONENT table created to demonstrate that I have created them correctly
*/
INSERT INTO COMPONENT (COMPONENT_ID,COMPONENT_NAME, COMPONENT_DESCR,COMPONENT_CAT,COMPONENT_PRICE) VALUES
(1, 'Intel Core i5 Processor', 'Processor for improved performance', 'CPU', 250.00),
(2, '8 GB RAM', 'Better performance', 'RAM', 499.99);

/*
Using SQL, insert TWO records into the CUSTOMER table created to demonstrate that I have created them correctly
*/
INSERT INTO CUSTOMER (CUST_NAME,CUST_SURNAME,CUST_EMAIL) VALUES
('Sabelo', 'Dlomo', 'sabelodlomo12@gmail.com'),
('Senzo', 'Myaka', 'senzomyaka34@gmail.com');

/*
Using SQL, insert TWO records into the Computers table created to demonstrate that I have created them correctly
*/
INSERT INTO Computers (BUILD_NAME,TECH_EMAIL,CUST_EMAIL) VALUES
('COMPUTER1', 'mlindozondo88@gmail.com', 'sabelodlomo12@gmail.com'),
('COMPUTER2',  'thuthusbiya99@gmail.com', 'senzomyaka34@gmail.com');

/*
Using SQL, insert TWO records into the BUILD_COMPUTER table created to demonstrate that I have created them correctly
*/
INSERT INTO BUILD_COMPUTER (BUILD_ID,BUILD_NAME,COMPONENT_ID,NUM_COMPONENTS) VALUES
(1,'COMPUTER1',1,1),
(2,'COMPUTER2',2,3);


