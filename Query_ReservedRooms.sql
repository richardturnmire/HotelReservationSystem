DECLARE @qrydate DATE, @type VARCHAR(10);

SET @qrydate = CONVERT(DATE, '07/01/2017');
SET @qrydate = CONVERT(DATE, GETDATE());
USE HotelReservations
SELECT @qrydate AS 'Date',  Ho.[HotelName], lo.LocationName, rm.[RoomNumber] FROM	dbo.Room AS rm
LEFT  JOIN dbo.Hotel_Location AS HL ON HL.HotelLocationId = rm.HotelLocationId
LEFT join dbo.Hotel AS HO ON HO.HotelId = HL.HotelId
LEFT JOIN dbo.Location AS LO ON Lo.LocationId = HL.LocationId
LEFT JOIN  dbo.Reservation_HotelLocation AS RHL ON RHL.HotelLocationId = HL.HotelLocationId
LEFT JOIN dbo.Reservation AS R ON R.ReservationId = RHL.ReservationId
WHERE  @qrydate BETWEEN convert(date, R.BeginDate) AND convert(date, R.EndDate)
-- WHERE @qrydate = CONVERT(DATE, r.BeginDate)