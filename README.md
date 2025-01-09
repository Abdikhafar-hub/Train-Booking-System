Train Booking System
Overview
This is a relational database for a Train Booking System. The database stores and manages information about train stations, passengers, trains, bookings, routes, and schedules.

Files
booking.sql: Defines the database schema.
sample_data.sql: Contains sample data for testing.
queries.sql: Example queries for testing the database.
train_booking.db: SQLite database file created and populated with the schema and sample data.
Instructions
Use booking.sql to create the database schema.
Open booking.sql in your SQLite tool or VS Code.
Execute the commands to create the tables and relationships.
Use sample_data.sql to populate the database with test data.
Open sample_data.sql and run the commands to insert sample data into the tables.
Test the database using queries.sql.
Open queries.sql and execute the test queries to verify the database functionality.
Example Queries
Here are some example queries you can find in queries.sql:

Retrieve all trains and their capacity:

sql
Copy code
SELECT TrainName, Capacity FROM Trains;
Find passengers who booked a specific train:

sql
Copy code
SELECT p.Name, b.TrainID
FROM Passengers p
JOIN Bookings b ON p.PassengerID = b.PassengerID
WHERE b.TrainID = 1;
Find available seats on a train:

sql
Copy code
SELECT t.TrainName, (t.Capacity - COUNT(b.BookingID)) AS AvailableSeats
FROM Trains t
LEFT JOIN Bookings b ON t.TrainID = b.TrainID
GROUP BY t.TrainID;
