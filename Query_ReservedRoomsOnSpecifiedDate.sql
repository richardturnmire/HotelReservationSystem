DECLARE @qrydate DATE, @type VARCHAR(10), @small SMALLDATETIME;

-- SET @qrydate = CONVERT(DATE, '2017-03-06');
SET @qrydate = CONVERT(DATE, GETDATE());
 USE HotelReservations

SELECT @qrydate AS 'Date',  Ho.[HotelName], lo.LocationName, rm.[RoomNumber] FROM	dbo.Room AS rm
-- SELECT * FROM dbo.Room AS rm
LEFT  JOIN dbo.Hotel_Location AS HL ON HL.HotelLocationId = rm.HotelLocationId

LEFT join dbo.Hotel AS HO ON HO.HotelId = HL.HotelId
RIGHT JOIN dbo.Location AS LO ON Lo.LocationId = HL.LocationId
  JOIN  dbo.Reservation_HotelLocation AS RHL ON RHL.HotelLocationId = HL.HotelLocationId
 JOIN dbo.Reservation AS R ON R.ReservationId = RHL.ReservationId
 WHERE  @qrydate BETWEEN CONVERT(DATE, R.BeginDate) AND CONVERT(DATE, R.EndDate)
 ORDER BY HO.HotelName, LO.LocationName, rm.RoomNumber
