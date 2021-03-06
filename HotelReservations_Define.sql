USE [HotelReservations]
GO
ALTER TABLE [dbo].[RoomPromotion_RoomPromotionRate] DROP CONSTRAINT [FK_RoomPromotion_RoomPromotionRate_RoomPromotionRate]
GO
ALTER TABLE [dbo].[RoomPromotion_RoomPromotionRate] DROP CONSTRAINT [FK_RoomPromotion_RoomPromotionRate_RoomPromotion]
GO
ALTER TABLE [dbo].[Room_RoomRate] DROP CONSTRAINT [FK_Room_RoomRate_RoomRate]
GO
ALTER TABLE [dbo].[Room_RoomRate] DROP CONSTRAINT [FK_Room_RoomRate_Room]
GO
ALTER TABLE [dbo].[Room_RoomPromotion] DROP CONSTRAINT [FK_Room_RoomPromotion_RoomPromotion]
GO
ALTER TABLE [dbo].[Room_RoomPromotion] DROP CONSTRAINT [FK_Room_RoomPromotion_Room]
GO
ALTER TABLE [dbo].[Room_Amenity] DROP CONSTRAINT [FK_Room_Amenity_Room]
GO
ALTER TABLE [dbo].[Room_Amenity] DROP CONSTRAINT [FK_Room_Amenity_Amenity]
GO
ALTER TABLE [dbo].[Room_Addon] DROP CONSTRAINT [FK_Room_Addon_Room]
GO
ALTER TABLE [dbo].[Room_Addon] DROP CONSTRAINT [FK_Room_Addon_Addon]
GO
ALTER TABLE [dbo].[Room] DROP CONSTRAINT [FK_Room_RoomType]
GO
ALTER TABLE [dbo].[Room] DROP CONSTRAINT [FK_Room_Hotel_Location]
GO
ALTER TABLE [dbo].[Reservation_HotelLocation] DROP CONSTRAINT [FK_Reservation_HotelLocation_Reservation]
GO
ALTER TABLE [dbo].[Reservation_HotelLocation] DROP CONSTRAINT [FK_Reservation_HotelLocation_Hotel_Location]
GO
ALTER TABLE [dbo].[Reservation] DROP CONSTRAINT [FK_Reservation_Customers]
GO
ALTER TABLE [dbo].[Hotel_Location] DROP CONSTRAINT [FK_Hotel_Location_Location]
GO
ALTER TABLE [dbo].[Hotel_Location] DROP CONSTRAINT [FK_Hotel_Location_Hotel]
GO
ALTER TABLE [dbo].[BillDetail] DROP CONSTRAINT [FK_BillDetail_Bill]
GO
ALTER TABLE [dbo].[Bill] DROP CONSTRAINT [FK_Bill_Reservation]
GO
ALTER TABLE [dbo].[Addon_AddonRate] DROP CONSTRAINT [FK_Addon_AddonRate_AddonRate]
GO
ALTER TABLE [dbo].[Addon_AddonRate] DROP CONSTRAINT [FK_Addon_AddonRate_Addon]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[RoomType]
GO
/****** Object:  Table [dbo].[RoomRate]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[RoomRate]
GO
/****** Object:  Table [dbo].[RoomPromotionRate]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[RoomPromotionRate]
GO
/****** Object:  Table [dbo].[RoomPromotion_RoomPromotionRate]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[RoomPromotion_RoomPromotionRate]
GO
/****** Object:  Table [dbo].[RoomPromotion]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[RoomPromotion]
GO
/****** Object:  Table [dbo].[Room_RoomRate]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Room_RoomRate]
GO
/****** Object:  Table [dbo].[Room_RoomPromotion]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Room_RoomPromotion]
GO
/****** Object:  Table [dbo].[Room_Amenity]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Room_Amenity]
GO
/****** Object:  Table [dbo].[Room_Addon]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Room_Addon]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Room]
GO
/****** Object:  Table [dbo].[Reservation_HotelLocation]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Reservation_HotelLocation]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Reservation]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[Hotel_Location]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Hotel_Location]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[BillDetail]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Bill]
GO
/****** Object:  Table [dbo].[Amenity]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Amenity]
GO
/****** Object:  Table [dbo].[AddonRate]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[AddonRate]
GO
/****** Object:  Table [dbo].[Addon_AddonRate]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Addon_AddonRate]
GO
/****** Object:  Table [dbo].[Addon]    Script Date: 2017-07-06 03:42:48 PM ******/
DROP TABLE [dbo].[Addon]
GO
/****** Object:  Table [dbo].[Addon]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addon](
	[AddonId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Addon] PRIMARY KEY CLUSTERED 
(
	[AddonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Addon_AddonRate]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addon_AddonRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddonId] [int] NOT NULL,
	[AddonRateId] [int] NOT NULL,
 CONSTRAINT [PK_Addon_AddonRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AddonRate]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddonRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AddonRate] [decimal](18, 2) NULL,
	[BeginDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
 CONSTRAINT [PK_AddonRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Amenity]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Amenity](
	[AmenityId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Amenity] PRIMARY KEY CLUSTERED 
(
	[AmenityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillId] [int] IDENTITY(1,1) NOT NULL,
	[ReservationId] [int] NULL,
	[BillTotal] [money] NOT NULL,
	[AddonTotal] [money] NULL,
	[SalesTax] [money] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[BillId] [int] NOT NULL,
	[BillDetailId] [int] NOT NULL,
	[Hotel] [int] NOT NULL,
	[Room] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Charge] [money] NOT NULL,
	[SalesTax] [money] NOT NULL,
	[HotelTax] [money] NOT NULL,
 CONSTRAINT [PK_BillDetail] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC,
	[BillDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[ReservationId] [int] NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[Phone] [varchar](16) NOT NULL,
	[Email] [varchar](50) NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[State] [nchar](2) NOT NULL,
	[ZipCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelId] [int] NOT NULL,
	[HotelName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel_Location]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel_Location](
	[HotelLocationId] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
	[LocationId] [int] NOT NULL,
 CONSTRAINT [PK_Hotel_Location] PRIMARY KEY CLUSTERED 
(
	[HotelLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[State] [nchar](2) NOT NULL,
	[ZipCode] [char](10) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ReservationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[BeginDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[NumberOfRooms] [smallint] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[CreditCard] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation_HotelLocation]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation_HotelLocation](
	[ReservationId] [int] NOT NULL,
	[HotelLocationId] [int] NOT NULL,
 CONSTRAINT [PK_Reservation_HotelLocation] PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC,
	[HotelLocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Roomid] [int] IDENTITY(1,1) NOT NULL,
	[HotelLocationId] [int] NOT NULL,
	[RoomNumber] [smallint] NOT NULL,
	[Floor] [smallint] NOT NULL,
	[RoomOccupancy] [smallint] NOT NULL,
	[MaxOccupancy] [smallint] NOT NULL,
	[RoomTypeId] [int] NULL,
	[ReservationId] [int] NULL,
 CONSTRAINT [PK_Room_1] PRIMARY KEY CLUSTERED 
(
	[Roomid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Addon]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Addon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[AddonId] [int] NOT NULL,
 CONSTRAINT [PK_Room_Addon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_Amenity]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Amenity](
	[RoomAmenitryId] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[AmentityId] [int] NOT NULL,
 CONSTRAINT [PK_Room_Amenity] PRIMARY KEY CLUSTERED 
(
	[RoomAmenitryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_RoomPromotion]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_RoomPromotion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NOT NULL,
	[PromotionId] [int] NOT NULL,
 CONSTRAINT [PK_Room_RoomPromotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room_RoomRate]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_RoomRate](
	[RoomId] [int] NOT NULL,
	[RoomRateId] [int] NOT NULL,
 CONSTRAINT [PK_Room_RoomRate] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC,
	[RoomRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomPromotion]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomPromotion](
	[RoomPromotionId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RoomPromotion] PRIMARY KEY CLUSTERED 
(
	[RoomPromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomPromotion_RoomPromotionRate]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomPromotion_RoomPromotionRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PromotionId] [int] NOT NULL,
	[PromotionRateId] [int] NOT NULL,
 CONSTRAINT [PK_RoomPromotion_RoomPromotionRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomPromotionRate]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomPromotionRate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PromotionType] [char](10) NOT NULL,
	[BeginDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NULL,
	[DiscountAmt] [smallmoney] NULL,
	[DiscountPercent] [decimal](6, 2) NULL,
 CONSTRAINT [PK_RoomPromotionRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomRate]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomRate](
	[RoomRateId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[BeginDate] [smalldatetime] NOT NULL,
	[EndDate] [smalldatetime] NOT NULL,
	[Rate] [smallmoney] NOT NULL,
 CONSTRAINT [PK_RoomRate] PRIMARY KEY CLUSTERED 
(
	[RoomRateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 2017-07-06 03:42:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[RoomType] [nchar](10) NULL,
	[RoomTypeDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addon_AddonRate]  WITH CHECK ADD  CONSTRAINT [FK_Addon_AddonRate_Addon] FOREIGN KEY([AddonId])
REFERENCES [dbo].[Addon] ([AddonId])
GO
ALTER TABLE [dbo].[Addon_AddonRate] CHECK CONSTRAINT [FK_Addon_AddonRate_Addon]
GO
ALTER TABLE [dbo].[Addon_AddonRate]  WITH CHECK ADD  CONSTRAINT [FK_Addon_AddonRate_AddonRate] FOREIGN KEY([AddonRateId])
REFERENCES [dbo].[AddonRate] ([Id])
GO
ALTER TABLE [dbo].[Addon_AddonRate] CHECK CONSTRAINT [FK_Addon_AddonRate_AddonRate]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Reservation] FOREIGN KEY([ReservationId])
REFERENCES [dbo].[Reservation] ([ReservationId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Reservation]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK_BillDetail_Bill] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bill] ([BillId])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK_BillDetail_Bill]
GO
ALTER TABLE [dbo].[Hotel_Location]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Location_Hotel] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotel] ([HotelId])
GO
ALTER TABLE [dbo].[Hotel_Location] CHECK CONSTRAINT [FK_Hotel_Location_Hotel]
GO
ALTER TABLE [dbo].[Hotel_Location]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Location_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[Hotel_Location] CHECK CONSTRAINT [FK_Hotel_Location_Location]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Customers] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Customers]
GO
ALTER TABLE [dbo].[Reservation_HotelLocation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_HotelLocation_Hotel_Location] FOREIGN KEY([HotelLocationId])
REFERENCES [dbo].[Hotel_Location] ([HotelLocationId])
GO
ALTER TABLE [dbo].[Reservation_HotelLocation] CHECK CONSTRAINT [FK_Reservation_HotelLocation_Hotel_Location]
GO
ALTER TABLE [dbo].[Reservation_HotelLocation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_HotelLocation_Reservation] FOREIGN KEY([ReservationId])
REFERENCES [dbo].[Reservation] ([ReservationId])
GO
ALTER TABLE [dbo].[Reservation_HotelLocation] CHECK CONSTRAINT [FK_Reservation_HotelLocation_Reservation]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Hotel_Location] FOREIGN KEY([HotelLocationId])
REFERENCES [dbo].[Hotel_Location] ([HotelLocationId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Hotel_Location]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomType] FOREIGN KEY([RoomTypeId])
REFERENCES [dbo].[RoomType] ([RoomTypeId])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_RoomType]
GO
ALTER TABLE [dbo].[Room_Addon]  WITH CHECK ADD  CONSTRAINT [FK_Room_Addon_Addon] FOREIGN KEY([AddonId])
REFERENCES [dbo].[Addon] ([AddonId])
GO
ALTER TABLE [dbo].[Room_Addon] CHECK CONSTRAINT [FK_Room_Addon_Addon]
GO
ALTER TABLE [dbo].[Room_Addon]  WITH CHECK ADD  CONSTRAINT [FK_Room_Addon_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Roomid])
GO
ALTER TABLE [dbo].[Room_Addon] CHECK CONSTRAINT [FK_Room_Addon_Room]
GO
ALTER TABLE [dbo].[Room_Amenity]  WITH CHECK ADD  CONSTRAINT [FK_Room_Amenity_Amenity] FOREIGN KEY([AmentityId])
REFERENCES [dbo].[Amenity] ([AmenityId])
GO
ALTER TABLE [dbo].[Room_Amenity] CHECK CONSTRAINT [FK_Room_Amenity_Amenity]
GO
ALTER TABLE [dbo].[Room_Amenity]  WITH CHECK ADD  CONSTRAINT [FK_Room_Amenity_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Roomid])
GO
ALTER TABLE [dbo].[Room_Amenity] CHECK CONSTRAINT [FK_Room_Amenity_Room]
GO
ALTER TABLE [dbo].[Room_RoomPromotion]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomPromotion_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Roomid])
GO
ALTER TABLE [dbo].[Room_RoomPromotion] CHECK CONSTRAINT [FK_Room_RoomPromotion_Room]
GO
ALTER TABLE [dbo].[Room_RoomPromotion]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomPromotion_RoomPromotion] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[RoomPromotion] ([RoomPromotionId])
GO
ALTER TABLE [dbo].[Room_RoomPromotion] CHECK CONSTRAINT [FK_Room_RoomPromotion_RoomPromotion]
GO
ALTER TABLE [dbo].[Room_RoomRate]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomRate_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([Roomid])
GO
ALTER TABLE [dbo].[Room_RoomRate] CHECK CONSTRAINT [FK_Room_RoomRate_Room]
GO
ALTER TABLE [dbo].[Room_RoomRate]  WITH CHECK ADD  CONSTRAINT [FK_Room_RoomRate_RoomRate] FOREIGN KEY([RoomRateId])
REFERENCES [dbo].[RoomRate] ([RoomRateId])
GO
ALTER TABLE [dbo].[Room_RoomRate] CHECK CONSTRAINT [FK_Room_RoomRate_RoomRate]
GO
ALTER TABLE [dbo].[RoomPromotion_RoomPromotionRate]  WITH CHECK ADD  CONSTRAINT [FK_RoomPromotion_RoomPromotionRate_RoomPromotion] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[RoomPromotion] ([RoomPromotionId])
GO
ALTER TABLE [dbo].[RoomPromotion_RoomPromotionRate] CHECK CONSTRAINT [FK_RoomPromotion_RoomPromotionRate_RoomPromotion]
GO
ALTER TABLE [dbo].[RoomPromotion_RoomPromotionRate]  WITH CHECK ADD  CONSTRAINT [FK_RoomPromotion_RoomPromotionRate_RoomPromotionRate] FOREIGN KEY([PromotionRateId])
REFERENCES [dbo].[RoomPromotionRate] ([Id])
GO
ALTER TABLE [dbo].[RoomPromotion_RoomPromotionRate] CHECK CONSTRAINT [FK_RoomPromotion_RoomPromotionRate_RoomPromotionRate]
GO
