Drop Schema if exists lana_dog_walking;
create schema lana_dog_walking;
Use lana_dog_walking;

CREATE TABLE Client (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);
CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    pay_rate DECIMAL(10,2)
);
CREATE TABLE Dog (
    dog_id INT PRIMARY KEY,
    client_id INT,
    name VARCHAR(100),
    age INT,
    breed VARCHAR(100),

    FOREIGN KEY (client_id)
        REFERENCES Client(client_id)
);
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    date DATE,
    time TIME,
    duration INT,
    dog_id INT,
    staff_id INT,

    FOREIGN KEY (dog_id)
        REFERENCES Dog(dog_id),

    FOREIGN KEY (staff_id)
        REFERENCES Staff(staff_id)
);
describe client;
describe staff;
describe dog;
describe appointment;
Show tables;