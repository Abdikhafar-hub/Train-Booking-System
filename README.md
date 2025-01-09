Train Booking System with SQLite
Overview
This project implements a train booking system using an SQLite database. The database stores information about train stations, trains, passengers, bookings, routes, and schedules. It provides functionality to manage and query this information efficiently.

Features
Train Stations Management: Stores station names and locations.
Passenger Data Management: Stores passenger details like name, contact, and address.
Train Bookings: Tracks passenger bookings, seat allocation, travel dates, and booking status.
Route Management: Stores train routes with start and end stations, travel duration, and distance.
Schedules: Tracks train schedules with departure and arrival times.
Project Structure
perl
Copy code
train-booking-system/
     
├── booking.sql           # Database schema file
├── sample_data.sql       # File with sample data to populate the database
├── queries.sql           # Test queries to verify the database functionality
└── README.md             # Project documentation
Setup Instructions
Follow these steps to set up the project and start working with the SQLite database:

Step 1: Install SQLite
Linux: Run sudo apt install sqlite3 in the terminal.
Windows: Download SQLite from the official website, extract it, and add it to the system PATH.
macOS: SQLite is pre-installed; verify it with sqlite3 --version.
Step 2: Set Up the Project
Clone the repository or download the project files.
Open the project folder in VS Code.
Step 3: Install SQLite Extension in VS Code
Open VS Code.
Go to the Extensions Marketplace (Ctrl+Shift+X).
Search for SQLite (by AlexCovizzi) and install it.
Step 4: Create the SQLite Database
Locate the train_booking.db file in the project folder.
Open the file using the SQLite Explorer extension in VS Code.
Step 5: Run the Schema
Open booking.sql in VS Code.
Highlight all the SQL commands and execute them in SQLite Explorer to create the database tables.
Step 6: Populate the Database
Open sample_data.sql in VS Code.
Highlight the sample data SQL commands and execute them in SQLite Explorer to insert data into the tables.
Step 7: Test the Database
Open queries.sql in VS Code.
Run the queries in SQLite Explorer to test and verify the database functionality.
Example Queries
Here are some examples of the queries included in queries.sql:

Get all trains and their capacity:

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
Future Improvements
Add more tables, such as Employees for staff management.
Implement a frontend or backend interface for user interaction.
Integrate advanced search and filtering options for trains and bookings.
Contributing
Contributions are welcome! Please fork this repository, create a branch for your feature or fix, and submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.















