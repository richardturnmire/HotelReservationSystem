--
--  Top 10 bills for customer
--

DECLARE @cust VARCHAR(20);
SET @cust = 'Peck';

USE HotelReservations;

SELECT TOP 10  b.BillId, r.CustomerId, c.CustomerName, b.BillTotal FROM Bill AS B
INNER JOIN dbo.Reservation AS R ON b.ReservationId = r.ReservationId
INNER JOIN dbo.Customers AS C ON c.CustomerId = r.CustomerId
   
   WHERE c.CustomerName LIKE '%' + @cust + '%'
   ORDER BY c.CustomerName, b.BillTotal DESC