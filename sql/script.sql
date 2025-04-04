USE [TourAgency]
GO
/****** Object:  Table [dbo].[ActualServices]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActualServices](
	[Id] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[AgreementId] [int] NOT NULL,
 CONSTRAINT [PK_ActualServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Agreement]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agreement](
	[Id] [int] NOT NULL,
	[ClientId] [int] NULL,
	[StatusId] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
 CONSTRAINT [PK_Agreement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [int] NOT NULL,
	[ClientType] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientType]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ClientType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [nchar](3) NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodTypes]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FoodTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CostPerNight] [money] NOT NULL,
	[Rating] [int] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelsByTour]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelsByTour](
	[Id] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
	[TourId] [int] NOT NULL,
 CONSTRAINT [PK_HotelsByTour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HotelsFoodTypes]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HotelsFoodTypes](
	[Id] [int] NOT NULL,
	[HotelId] [int] NOT NULL,
	[FoodTypeId] [int] NULL,
 CONSTRAINT [PK_HotelsFoodTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurances]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurances](
	[Id] [int] NOT NULL,
	[TouristId] [int] NOT NULL,
	[InsuranceTypeId] [int] NULL,
 CONSTRAINT [PK_Insurances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceTypes]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_InsuranceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceTypes]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Cost] [money] NULL,
 CONSTRAINT [PK_ServiceTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tourists]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tourists](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Passport] [nvarchar](10) NULL,
	[Visa] [nvarchar](50) NOT NULL,
	[ClientId] [int] NULL,
 CONSTRAINT [PK_Tourists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Cost] [money] NOT NULL,
	[NeededInsuranceId] [int] NULL,
	[CityId] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourServices]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourServices](
	[Id] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[TourId] [int] NOT NULL,
 CONSTRAINT [PK_TourServices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourTypes]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourTypes](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TourTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourTypesToTours]    Script Date: 18.03.2025 12:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourTypesToTours](
	[Id] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[TourId] [int] NULL,
 CONSTRAINT [PK_TourTypesToTours] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TourTypes] ([Id], [Name]) VALUES (1, N'Международный туризм')
INSERT [dbo].[TourTypes] ([Id], [Name]) VALUES (2, N'Внутренний туризм')
GO
ALTER TABLE [dbo].[ActualServices]  WITH CHECK ADD  CONSTRAINT [FK_ActualServices_Agreement] FOREIGN KEY([AgreementId])
REFERENCES [dbo].[Agreement] ([Id])
GO
ALTER TABLE [dbo].[ActualServices] CHECK CONSTRAINT [FK_ActualServices_Agreement]
GO
ALTER TABLE [dbo].[ActualServices]  WITH CHECK ADD  CONSTRAINT [FK_ActualServices_ServiceTypes] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[ServiceTypes] ([Id])
GO
ALTER TABLE [dbo].[ActualServices] CHECK CONSTRAINT [FK_ActualServices_ServiceTypes]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Clients]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Hotels] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Hotels]
GO
ALTER TABLE [dbo].[Agreement]  WITH CHECK ADD  CONSTRAINT [FK_Agreement_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Agreement] CHECK CONSTRAINT [FK_Agreement_Status]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_ClientType1] FOREIGN KEY([ClientType])
REFERENCES [dbo].[ClientType] ([Id])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_ClientType1]
GO
ALTER TABLE [dbo].[HotelsByTour]  WITH CHECK ADD  CONSTRAINT [FK_HotelsByTour_Hotels] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO
ALTER TABLE [dbo].[HotelsByTour] CHECK CONSTRAINT [FK_HotelsByTour_Hotels]
GO
ALTER TABLE [dbo].[HotelsByTour]  WITH CHECK ADD  CONSTRAINT [FK_HotelsByTour_Tours] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tours] ([Id])
GO
ALTER TABLE [dbo].[HotelsByTour] CHECK CONSTRAINT [FK_HotelsByTour_Tours]
GO
ALTER TABLE [dbo].[HotelsFoodTypes]  WITH CHECK ADD  CONSTRAINT [FK_HotelsFoodTypes_FoodTypes] FOREIGN KEY([HotelId])
REFERENCES [dbo].[FoodTypes] ([Id])
GO
ALTER TABLE [dbo].[HotelsFoodTypes] CHECK CONSTRAINT [FK_HotelsFoodTypes_FoodTypes]
GO
ALTER TABLE [dbo].[HotelsFoodTypes]  WITH CHECK ADD  CONSTRAINT [FK_HotelsFoodTypes_Hotels] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO
ALTER TABLE [dbo].[HotelsFoodTypes] CHECK CONSTRAINT [FK_HotelsFoodTypes_Hotels]
GO
ALTER TABLE [dbo].[Insurances]  WITH CHECK ADD  CONSTRAINT [FK_Insurances_InsuranceTypes] FOREIGN KEY([InsuranceTypeId])
REFERENCES [dbo].[InsuranceTypes] ([Id])
GO
ALTER TABLE [dbo].[Insurances] CHECK CONSTRAINT [FK_Insurances_InsuranceTypes]
GO
ALTER TABLE [dbo].[Insurances]  WITH CHECK ADD  CONSTRAINT [FK_Insurances_Tourists] FOREIGN KEY([TouristId])
REFERENCES [dbo].[Tourists] ([Id])
GO
ALTER TABLE [dbo].[Insurances] CHECK CONSTRAINT [FK_Insurances_Tourists]
GO
ALTER TABLE [dbo].[Tourists]  WITH CHECK ADD  CONSTRAINT [FK_Tourists_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Clients] ([Id])
GO
ALTER TABLE [dbo].[Tourists] CHECK CONSTRAINT [FK_Tourists_Clients]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_Cities] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_Cities]
GO
ALTER TABLE [dbo].[Tours]  WITH CHECK ADD  CONSTRAINT [FK_Tours_InsuranceTypes] FOREIGN KEY([NeededInsuranceId])
REFERENCES [dbo].[InsuranceTypes] ([Id])
GO
ALTER TABLE [dbo].[Tours] CHECK CONSTRAINT [FK_Tours_InsuranceTypes]
GO
ALTER TABLE [dbo].[TourServices]  WITH CHECK ADD  CONSTRAINT [FK_TourServices_ServiceTypes] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[ServiceTypes] ([Id])
GO
ALTER TABLE [dbo].[TourServices] CHECK CONSTRAINT [FK_TourServices_ServiceTypes]
GO
ALTER TABLE [dbo].[TourServices]  WITH CHECK ADD  CONSTRAINT [FK_TourServices_Tours] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tours] ([Id])
GO
ALTER TABLE [dbo].[TourServices] CHECK CONSTRAINT [FK_TourServices_Tours]
GO
ALTER TABLE [dbo].[TourTypesToTours]  WITH CHECK ADD  CONSTRAINT [FK_TourTypesToTours_Tours] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tours] ([Id])
GO
ALTER TABLE [dbo].[TourTypesToTours] CHECK CONSTRAINT [FK_TourTypesToTours_Tours]
GO
ALTER TABLE [dbo].[TourTypesToTours]  WITH CHECK ADD  CONSTRAINT [FK_TourTypesToTours_TourTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TourTypes] ([Id])
GO
ALTER TABLE [dbo].[TourTypesToTours] CHECK CONSTRAINT [FK_TourTypesToTours_TourTypes]
GO
