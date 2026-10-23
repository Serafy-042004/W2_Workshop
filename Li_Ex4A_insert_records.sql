Use lana_dog_walking;

INSERT INTO Client (client_id, name, phone, email, address)
VALUES
    (1001, 'Alex Morgan', '510-555-0142', 'alex.morgan@example.com', '125 Maple St, San Leandro, CA 94577'),
    (1002, 'Jordan Lee', '510-555-0187', 'jordan.lee@example.com', '842 Park Ave, Oakland, CA 94610'),
    (1003, 'Morgan Davis', '510-555-0312', 'morgan.davis@example.com', '214 Oak St, Berkeley, CA 94704'),
    (1004, 'Jamie Wilson', '510-555-0345', 'jamie.wilson@example.com', '731 Pine St, Oakland, CA 94607'),
    (1005, 'Riley Chen', '510-555-0398', 'riley.chen@example.com', '98 Cedar Ave, Alameda, CA 94501'),
    (1006, 'Avery Patel', '510-555-0421', 'avery.patel@example.com', '450 Elm St, Hayward, CA 94541'),
    (1007, 'Cameron Reed', '510-555-0476', 'cameron.reed@example.com', '61 Willow Rd, Fremont, CA 94536'),
    (1008, 'Drew Martinez', '510-555-0519', 'drew.martinez@example.com', '820 Spruce St, San Leandro, CA 94578'),
    (1009, 'Quinn Taylor', '510-555-0562', 'quinn.taylor@example.com', '315 Bayview Dr, Richmond, CA 94801'),
    (1010, 'Reese Kim', '510-555-0614', 'reese.kim@example.com', '127 Lake St, San Mateo, CA 94401');
    
INSERT INTO Staff (staff_id, name, phone, email, pay_rate)
VALUES
    (501, 'Taylor Brooks', '510-555-0211', 'taylor.brooks@example.com', 22.50),
    (502, 'Casey Nguyen', '510-555-0264', 'casey.nguyen@example.com', 24.00),
    (503, 'Morgan Ellis', '510-555-0712', 'morgan.ellis@example.com', 21.75),
    (504, 'Jamie Carter', '510-555-0748', 'jamie.carter@example.com', 23.50),
    (505, 'Riley Foster', '510-555-0783', 'riley.foster@example.com', 25.00),
    (506, 'Avery Grant', '510-555-0826', 'avery.grant@example.com', 22.00),
    (507, 'Cameron Hayes', '510-555-0871', 'cameron.hayes@example.com', 24.50),
    (508, 'Drew Sullivan', '510-555-0915', 'drew.sullivan@example.com', 23.25),
    (509, 'Quinn Parker', '510-555-0964', 'quinn.parker@example.com', 26.00),
    (510, 'Reese Morgan', '510-555-1032', 'reese.morgan@example.com', 22.75);
    
INSERT INTO Dog (dog_id, client_id, name, age, breed)
VALUES
    (2001, 1001, 'Buddy', 4, 'Golden Retriever'),
    (2002, 1001, 'Luna', 2, 'Beagle'),
    (2003, 1002, 'Milo', 6, 'Labrador'),
    (2004, 1003, 'Cooper', 3, 'Border Collie'),
    (2005, 1004, 'Daisy', 5, 'Poodle'),
    (2006, 1005, 'Rocky', 7, 'German Shepherd'),
    (2007, 1006, 'Coco', 1, 'Cocker Spaniel'),
    (2008, 1007, 'Teddy', 4, 'Corgi'),
    (2009, 1008, 'Rosie', 6, 'Australian Shepherd'),
    (2010, 1009, 'Finn', 2, 'French Bulldog');
INSERT INTO Appointment (appointment_id, date, time, duration, dog_id, staff_id)
VALUES
    (3001, '2026-10-27', '09:00:00', 60, 2001, 501),
    (3002, '2026-10-28', '11:30:00', 30, 2002, 502),
    (3003, '2026-10-29', '14:00:00', 60, 2003, 501),
    (3004, '2026-10-30', '09:30:00', 45, 2004, 503),
    (3005, '2026-10-31', '10:00:00', 60, 2005, 504),
    (3006, '2026-11-01', '13:00:00', 30, 2006, 505),
    (3007, '2026-11-02', '08:30:00', 60, 2007, 506),
    (3008, '2026-11-03', '15:00:00', 45, 2008, 507),
    (3009, '2026-11-04', '11:00:00', 60, 2009, 508),
    (3010, '2026-11-05', '14:30:00', 30, 2010, 509);
    
Select * from client;
Select * from Staff;
Select * from dog;
Select * from appointment;

    