Link to ERD 
https://dbdiagram.io/d/677fe0a86b7fa355c36936f4

# Train Booking System

## Overview
The Train Booking System is a relational database designed to manage and organize train operations efficiently. It provides functionality for storing data about train stations, passengers, trains, bookings, and more.

## Features
- **Stations Management:** Stores station details, including name and location.
- **Passenger Management:** Keeps track of passenger details like name, contact information, and address.
- **Train Bookings:** Records passenger bookings, seat allocation, travel dates, and booking status.
- **Route Management:** Manages train routes with start and end stations, travel duration, and distance.
- **Schedules:** Tracks train schedules with departure and arrival times.

## Files
- `booking.sql:` SQL script to define the database schema.
- `sample_data.sql:` SQL script containing sample data for populating the database.
- `queries.sql:` SQL script with example queries to test and interact with the database.
- `train_booking.db:` SQLite database file created from the schema and populated with sample data.
- `README.md:` Documentation for the project.

## Setup Instructions

### Prerequisites
Ensure the following are installed on your system:
- SQLite: [Installation Guide](https://www.sqlite.org/download.html)
- VS Code (optional, but recommended) with the [SQLite extension](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite).

### Steps to Set Up the Database

1. **Clone the Repository:**
    ```bash
    git clone <repository-url>
    cd train-booking-system
    ```

2. **Open SQLite Database:**
    - If using VS Code:
        - Open the project folder in VS Code.
        - Use the SQLite extension to open `train_booking.db`.
    - Alternatively, open the database directly in your SQLite CLI or GUI tool.

3. **Run the Schema:**
    - Open `booking.sql` and execute the SQL commands to create the database schema.

4. **Populate the Database:**
    - Open `sample_data.sql` and execute the SQL commands to insert sample data into the tables.

5. **Test the Database:**
    - Use `queries.sql` to run example queries and verify that the database is functioning correctly.

## Example Queries
Here are a few examples from the `queries.sql` file:

- **Get all trains and their capacity:**
    ```sql
    SELECT TrainName, Capacity FROM Trains;
    ```

- **Find passengers who booked a specific train:**
    ```sql
    SELECT p.Name, b.TrainID
    FROM Passengers p
    JOIN Bookings b ON p.PassengerID = b.PassengerID
    WHERE b.TrainID = 1;
    ```

- **Find available seats on a train:**
    ```sql
    SELECT t.TrainName, (t.Capacity - COUNT(b.BookingID)) AS AvailableSeats
    FROM Trains t
    LEFT JOIN Bookings b ON t.TrainID = b.TrainID
    GROUP BY t.TrainID;
    ```

## Project Structure
```
train-booking-system/
├── train_booking.db      # SQLite database file
├── booking.sql           # Schema definition for the database
├── sample_data.sql       # Sample data for populating the database
├── queries.sql           # Example queries for testing the database
└── README.md             # Documentation for the project
```

## How to Contribute
1. Fork the repository.
2. Create a feature branch:
    ```bash
    git checkout -b feature-name
    ```
3. Commit your changes:
    ```bash
    git commit -m "Add feature-name"
    ```
4. Push to your branch:
    ```bash
    git push origin feature-name
    ```
5. Open a pull request.
6. link to ERD
7. https://dbdiagram.io/d/677fe0a86b7fa355c36936f4

## Future Improvements
- Add more tables for additional features, such as train employees or maintenance schedules.
- Integrate a frontend interface for user-friendly interaction with the database.
- Implement backend support for dynamic data interaction (e.g., using Python Flask, Django, or Node.js).

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

You can update your README file with this structured format.
