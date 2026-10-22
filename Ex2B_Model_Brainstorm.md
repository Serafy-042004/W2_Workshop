#Requirements and Conceptual model
- Henry Li
- Sayaeed Arashullah Akrami

## Requirements
* Who is the end user? - Lana, who owns the dog walking business and needs a database to organize her business.
* What does she need to do? -She needs to keep track of her clients, dogs she walks, her staff, and her appointments.
* What categories of data and info we need to track?
    * Clients --Name, Phone Number, Email, Address
    * Dogs --Dog's name, age, breed, and additional noted related to dog.
    * Staff --Staff's name, Staff's id, phone number, email, pay rate.
    * Appointments --Date, time, duration, The staff handling the appointment, the client, the dog names

## Logical Model
* Client Table: Holds client contact details and the PK is client_id.
* Dog Table: Holds dog details, linked to their owner (PK: dog_id, FK: client_id).
* Staff Table: Holds staff details (PK: walker_id).
* Appointments Table: Connects dogs to the staff member who walk them, and holds appointments detail (PK: appointment_id, FK: dog_id,).

Notes:
   It all starts from a clients as they are the main unique identifiers that connect to other tables. All the connections between the tables are the same.
   
   For the appointment section, one has the client_id in the appointments, however we vouched to remove that from that section. Some name differ, but the attributes are the same.

   Not much difference between the two tables, so approach was the same.
   
