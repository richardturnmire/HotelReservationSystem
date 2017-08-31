--
--  Reservations ending on given date  -- list bill total with option to show reservations that have ot been billed yet.
--


DECLARE @qrydate DATE, @type VARCHAR(10), @small SMALLDATETIME;

SET @qrydate = CONVERT(DATE, '2017-08-28');
--SET @qrydate = CONVERT(DATE, '2017-01-01');
-- SET @qrydate = CONVERT(DATE, GETDATE());

 USE HotelReservations

SELECT r.ReservationId, R.Description, B.BillTotal FROM [dbo].[Reservation] AS R
FULL OUTER JOIN dbo.Bill AS B ON  b.ReservationId = r.ReservationId
-- WHERE  CONVERT(DATE, R.EndDate) = @qrydate
 WHERE  CONVERT(DATE, R.EndDate) = CONVERT(DATE, @qrydate) AND b.BillId IS NULL
  