CREATE DATABASE Pizzeria;


USE Pizzeria;


CREATE TABLE Chef (
    chef_id INT AUTO_INCREMENT PRIMARY KEY,
    chef_name VARCHAR(255) NOT NULL,
    chef_birthdate DATE
    chef_materials VARCHAR(255)
);

CREATE TABLE Seller (
    seller_id INT AUTO_INCREMENT PRIMARY KEY,
    seller_name VARCHAR(255) NOT NULL,
    seller_birthdate DATE
    seller_materials VARCHAR(255)
);

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR (255) NOT NULL,
    customer_credit_card VARCHAR (255)
    customer_phone VARCHAR (20)
    customer_mail VARCHAR (255)
);

CREATE TABLE Pizza (
    pizza_id INTEGER AUTO_INCREMENT PRIMARY KEY,
    pizza_type VARCHAR(255) NOT NULL,
    pizza_chef_id INTEGER,
    pizza_seller_id INTEGER,
    pizza_ingredients_id INTEGER,
    pizza_date_preparation DATE,
    FOREIGN KEY (pizza_chef_id) REFERENCES Chef(chef_id)
    FOREIGN KEY (pizza_seller_id) REFERENCES Seller(seller_id)
);

CREATE TABLE Purchase (
    purchase_id INT AUTO_INCREMENT PRIMARY KEY,
    purchase_pizza_id INTEGER,
    purchase_customer_id INTEGER,
    purchase_date DAT TEXT NOT NULL,
    FOREIGN KEY (purchase_pizza_id) REFERENCES Pizza (pizza_id)
    FOREIGN KEY (purchase_customer_id) REFERENCES Customer (customer_id)
);