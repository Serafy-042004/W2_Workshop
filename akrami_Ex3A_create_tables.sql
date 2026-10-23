DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

-- 1. Client Table
CREATE TABLE Client (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

-- 2. Staff Table
CREATE TABLE Staff (
    walker_id INT AUTO_INCREMENT PRIMARY KEY,
    staff_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    pay_rate DECIMAL(5,2)
);

-- 3. Dog Table (Depends on Client)
CREATE TABLE Dog (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    dog_name VARCHAR(50) NOT NULL,
    age INT,
    breed VARCHAR(50),
    notes TEXT,
    FOREIGN KEY (client_id) REFERENCES Client(client_id)
);

-- 4. Appointment Table (Depends on Dog and Staff)
CREATE TABLE Appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    walker_id INT NOT NULL,
    date DATE,
    time TIME,
    duration INT,
    status VARCHAR(50),
    FOREIGN KEY (dog_id) REFERENCES Dog(dog_id),
    FOREIGN KEY (walker_id) REFERENCES Staff(walker_id)
);