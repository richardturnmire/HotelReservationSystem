--
--   List rooms with a given combination of amenities
--

USE [HotelReservations]
GO
DECLARE @amenity1 INT, @amenity2 INT, @amenity3 INT

SET @amenity1 = 2   -- Flat screen TV
SET @amenity2 = 5   -- Coffee maker
SET @amenity3 = 7   -- Wi-fi

SELECT R.[RoomNumber]  	 
  FROM [dbo].[Room] AS R
  INNER JOIN dbo.Room_Amenity AS RA ON RA.RoomId = R.Roomid
  LEFT JOIN dbo.Amenity AS A ON A.AmenityId = RA.AmentityId
  WHERE A.AmenityId IN (@amenity1, @amenity2, @amenity3)
   
  group BY R.RoomNumber 
   
   HAVING COUNT(*) > 1 and
    Sum(Case when a.AmenityId = @amenity1 then 1 else 0 end) >= 1 AND
     Sum(Case when a.AmenityId = @amenity2 then 1 else 0 end) >= 1 AND
     SUM(CASE WHEN a.AmenityId = @amenity3 THEN 1 ELSE 0 END) >=1


            



  
GO


