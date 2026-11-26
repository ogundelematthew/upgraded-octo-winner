CREATE DATABASE ojay_auto;

USE ojay_auto;

-- Admin Table
CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255)
);

-- Cars Table
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    car_name VARCHAR(100),
    brand VARCHAR(100),
    model VARCHAR(100),
    year INT,
    transmission VARCHAR(50),
    fuel VARCHAR(50),
    mileage VARCHAR(100),
    price DECIMAL(15,2),
    description TEXT,
    image VARCHAR(255),
    status ENUM('Available','Sold') DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Customer Inquiries
CREATE TABLE inquiries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Test Drive Bookings
CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    car_id INT,
    booking_date DATE,
    status VARCHAR(30) DEFAULT 'Pending',
    FOREIGN KEY (car_id) REFERENCES cars(id)
);

-- Default Admin Account
INSERT INTO admins(fullname,email,password)
VALUES(
'Ojay Auto Admin',
'Ogundelem925@gmail.com',
'admin123'
);