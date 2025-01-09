-- Get all trains and their capacity
SELECT TrainName, Capacity FROM Trains;

-- Find passengers who booked a specific train
SELECT p.Name, b.TrainID
FROM Passengers p
JOIN Bookings b ON p.PassengerID = b.PassengerID
WHERE b.TrainID = 1;

-- Find available seats on a train
SELECT t.TrainName, (t.Capacity - COUNT(b.BookingID)) AS AvailableSeats
FROM Trains t
LEFT JOIN Bookings b ON t.TrainID = b.TrainID
GROUP BY t.TrainID;
