CREATE TABLE Stations (
    StationID INT PRIMARY KEY,
    StationName VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactDetails VARCHAR(100),
    Address TEXT
);

CREATE TABLE Trains (
    TrainID INT PRIMARY KEY,
    TrainName VARCHAR(100),
    TrainType VARCHAR(50),
    Capacity INT
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    PassengerID INT,
    TrainID INT,
    StationID INT,
    BookingDate DATE,
    TravelDate DATE,
    SeatNumber INT,
    Status VARCHAR(20) CHECK (Status IN ('Confirmed', 'Pending', 'Cancelled')),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);

CREATE TABLE Routes (
    RouteID INT PRIMARY KEY,
    TrainID INT,
    StartStationID INT,
    EndStationID INT,
    Duration TIME,
    Distance DECIMAL(5, 2),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StartStationID) REFERENCES Stations(StationID),
    FOREIGN KEY (EndStationID) REFERENCES Stations(StationID)
);

CREATE TABLE Schedules (
    ScheduleID INT PRIMARY KEY,
    TrainID INT,
    RouteID INT,
    DepartureTime TIME,
    ArrivalTime TIME,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)
);
