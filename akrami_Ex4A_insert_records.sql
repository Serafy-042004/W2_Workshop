USE lana_dog_walking;

-- 1. Insert records into Client (Parent table - no foreign keys)
INSERT INTO Client (name, phone_number, email, address) VALUES
('Sarah Jenkins', '925-555-0101', 'sjenkins@example.com', '123 Meadow Lane, Concord, CA'),
('Michael Chang', '925-555-0102', 'mchang@example.com', '456 Willow Road, Concord, CA'),
('Emily Rodriguez', '925-555-0103', 'erodriguez@example.com', '789 Pine Street, Concord, CA'),
('David Smith', '925-555-0104', 'dsmith@example.com', '321 Oak Avenue, Concord, CA'),
('Jessica Taylor', '925-555-0105', 'jtaylor@example.com', '654 Cedar Court, Concord, CA'),
('Robert Johnson', '925-555-0106', 'rjohnson@example.com', '987 Elm Boulevard, Concord, CA'),
('Amanda Martinez', '925-555-0107', 'amartinez@example.com', '147 Maple Drive, Concord, CA'),
('James Wilson', '925-555-0108', 'jwilson@example.com', '258 Birch Way, Concord, CA'),
('Lisa Anderson', '925-555-0109', 'landerson@example.com', '369 Walnut Circle, Concord, CA'),
('William Thomas', '925-555-0110', 'wthomas@example.com', '741 Cherry Street, Concord, CA');

-- 2. Insert records into Staff (Parent table - no foreign keys)
INSERT INTO Staff (staff_name, phone_number, email, pay_rate) VALUES
('Alex Rivera', '925-555-0201', 'arivera@lanadogs.com', 18.50),
('Samantha Brooks', '925-555-0202', 'sbrooks@lanadogs.com', 20.00),
('Jordan Vance', '925-555-0203', 'jvance@lanadogs.com', 19.25),
('Taylor Swift', '925-555-0204', 'tswift@lanadogs.com', 21.00),
('Morgan Freeman', '925-555-0205', 'mfreeman@lanadogs.com', 19.50);

-- 3. Insert records into Dog (Depends on Client)
INSERT INTO Dog (client_id, dog_name, age, breed, notes) VALUES
(1, 'Max', 3, 'Golden Retriever', 'Friendly, loves playing fetch with tennis balls.'),
(2, 'Bella', 2, 'French Bulldog', 'Short walks only, sensitive to warm weather.'),
(3, 'Charlie', 5, 'Beagle', 'Easily distracted by scents, keep on tight leash.'),
(4, 'Luna', 1, 'German Shepherd Puppy', 'In training, working on leash manners.'),
(5, 'Cooper', 4, 'Labrador Retriever', 'High energy, loves swimming and running.'),
(6, 'Daisy', 6, 'Cavalier King Charles', 'Gentle senior dog, prefers calm pace.'),
(7, 'Rocky', 3, 'Boxer', 'Very energetic and playful.'),
(8, 'Milo', 2, 'Siberian Husky', 'Needs secure harness, high pull drive.'),
(9, 'Zoe', 4, 'Australian Shepherd', 'Very smart, responds well to commands.'),
(10, 'Buster', 7, 'Mixed Breed', 'Loves treats, a bit slow on long walks.');

-- 4. Insert records into Appointment (Depends on Dog and Staff)
INSERT INTO Appointment (dog_id, walker_id, date, time, duration, status) VALUES
(1, 1, '2026-10-25', '09:00:00', 45, 'Scheduled'),
(2, 2, '2026-10-25', '10:30:00', 30, 'Scheduled'),
(3, 3, '2026-10-25', '13:00:00', 60, 'Scheduled'),
(4, 4, '2026-10-26', '08:30:00', 30, 'Scheduled'),
(5, 5, '2026-10-26', '10:00:00', 45, 'Scheduled'),
(6, 1, '2026-10-26', '14:00:00', 30, 'Scheduled'),
(7, 2, '2026-10-27', '09:00:00', 60, 'Scheduled'),
(8, 3, '2026-10-27', '11:00:00', 45, 'Scheduled'),
(9, 4, '2026-10-27', '15:00:00', 30, 'Scheduled'),
(10, 5, '2026-10-28', '10:00:00', 60, 'Scheduled');

SELECT * FROM appointment;
