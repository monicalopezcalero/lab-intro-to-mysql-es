CREATE DATABASE lab_intro_to_mysql;
USE DATABASE lab_intro_to_mysql;
CREATE TABLE Customer (
    CustomerID VARCHAR(50) PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(50),
    Address VARCHAR(500),
    Phone VARCHAR(20),
    City VARCHAR(50),
    Province VARCHAR(50),
    Country VARCHAR(50),
    PostalCode VARCHAR(10)
);

CREATE TABLE Invoices (
    Invoice_ID VARCHAR(50) PRIMARY KEY,
    InvoiceDate DATE,
    Vehicle_ID VARCHAR(50),
    Customer_ID VARCHAR(50),
    Seller_ID VARCHAR(50),
    FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (Seller_ID) REFERENCES Sellers(Seller_ID)
);

CREATE TABLE Sellers (
    Seller_ID VARCHAR(50) PRIMARY KEY,
    Seller_Name VARCHAR(50),
    Store VARCHAR(200)
);

CREATE TABLE Vehicles (
    Vehicle_ID VARCHAR(50) PRIMARY KEY,
    VIN VARCHAR(100),
    Manufacturer VARCHAR(50),
    Model VARCHAR(50),
    Year SMALLINT,
    Color VARCHAR(50)
);