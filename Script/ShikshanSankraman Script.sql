USE [master]
GO
/****** Object:  Database [NewDatabase]    Script Date: 23-02-2023 11:35:35 ******/
CREATE DATABASE [NewDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewDatabase', FILENAME = N'D:\MSSQL13.MSSQLSERVER\MSSQL\DATA\NewDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewDatabase_log', FILENAME = N'D:\MSSQL13.MSSQLSERVER\MSSQL\DATA\NewDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NewDatabase] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewDatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NewDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewDatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NewDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewDatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewDatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [NewDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [NewDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NewDatabase] SET QUERY_STORE = OFF
GO
USE [NewDatabase]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [NewDatabase]
GO
/****** Object:  Table [dbo].[Admin_tbl1]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_tbl1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Year] [nvarchar](50) NULL,
	[Month] [nvarchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[FileName] [varchar](50) NULL,
	[DateTime] [smalldatetime] NULL,
	[PdfUrl] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Admin_tbl1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[MiddleName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[EmailId] [varchar](100) NULL,
	[MobileNo] [varchar](100) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contact_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mahavidyalaya_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mahavidyalaya_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vargadar] [nvarchar](max) NULL,
	[SansthecheNav] [nvarchar](max) NULL,
	[MahavidyalayacheNav] [nvarchar](max) NULL,
	[SansthechaPatta] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[IndexNo] [nvarchar](max) NULL,
	[Taluka] [nvarchar](max) NULL,
	[Jhila] [nvarchar](max) NULL,
	[PincodeNo] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo1] [varchar](50) NULL,
	[MobileNo2] [varchar](50) NULL,
	[VarganiDate] [varchar](50) NULL,
	[Vargani] [nvarchar](max) NULL,
	[MonthStart] [nvarchar](max) NULL,
	[MonthEnd] [nvarchar](max) NULL,
	[Ip_Address] [nvarchar](max) NULL,
	[Date_Time] [datetime] NULL,
 CONSTRAINT [PK_Mahavidyalaya_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewChitrakar_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewChitrakar_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[EmailId] [varchar](50) NULL,
	[MobileNo1] [varchar](50) NULL,
	[MobileNo2] [varchar](50) NULL,
	[AadharNo] [varchar](50) NULL,
	[ChitrachaVishay] [nvarchar](max) NULL,
	[ShaikshanikPatrata] [nvarchar](max) NULL,
	[KaryalayachaPrakar] [nvarchar](max) NULL,
	[VyavasayikSthan] [nvarchar](max) NULL,
	[ChitraPrakashanStatus] [nvarchar](max) NULL,
	[Anubhav] [nvarchar](max) NULL,
	[KaryaratSthal] [nvarchar](max) NULL,
	[PrakashitChitra] [nvarchar](max) NULL,
	[PrakashitKashyamadhe] [nvarchar](max) NULL,
	[Vishay] [nvarchar](max) NULL,
	[AavadichaVishay] [nvarchar](max) NULL,
	[Payment] [nvarchar](max) NULL,
	[SamtiPatra] [nvarchar](max) NULL,
	[Chitra] [nvarchar](max) NULL,
	[Chitra2] [nvarchar](max) NULL,
 CONSTRAINT [PK_NewChitrakar_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewKaryalay_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewKaryalay_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vargadar] [nvarchar](max) NULL,
	[SurnameOfHead] [nvarchar](max) NULL,
	[Nav] [nvarchar](max) NULL,
	[VadilancheNav] [nvarchar](max) NULL,
	[KaryalayacheNav] [nvarchar](max) NULL,
	[GharNav] [nvarchar](max) NULL,
	[RoadName] [nvarchar](max) NULL,
	[NearMark] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[Taluka] [nvarchar](max) NULL,
	[Jhila] [nvarchar](max) NULL,
	[PincodeNo] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo1] [varchar](50) NULL,
	[MobileNo2] [varchar](50) NULL,
	[VarganiDate] [date] NULL,
	[Vargani] [nvarchar](max) NULL,
	[MonthStart] [nvarchar](max) NULL,
	[MonthEnd] [nvarchar](max) NULL,
	[Ip_Address] [nvarchar](max) NULL,
	[Date_Time] [datetime] NULL,
 CONSTRAINT [PK_NewKaryalay_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewVarganidar_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewVarganidar_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[FatherName] [nvarchar](max) NULL,
	[GharNav] [nvarchar](max) NULL,
	[RoadName] [nvarchar](max) NULL,
	[NearMark] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[Taluka] [nvarchar](max) NULL,
	[Jhila] [nvarchar](max) NULL,
	[PincodeNo] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo1] [varchar](50) NULL,
	[MobileNo2] [varchar](50) NULL,
	[VarganiDate] [varchar](50) NULL,
	[AadharCardNo] [varchar](50) NULL,
	[MonthStart] [nvarchar](max) NULL,
	[MonthEnd] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[Varagani] [nvarchar](max) NULL,
	[Ip_Address] [nvarchar](max) NULL,
	[Date_Time] [datetime] NULL,
 CONSTRAINT [PK_NewVarganidar_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewWriter_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewWriter_tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[EmailId] [varchar](50) NULL,
	[MobileNo1] [varchar](50) NULL,
	[MobileNo2] [varchar](50) NULL,
	[AadharNo] [varchar](50) NULL,
	[LekhachaVishay] [nvarchar](max) NULL,
	[ShaikshanikPatrata] [nvarchar](max) NULL,
	[KaryalayachaPrakar] [nvarchar](max) NULL,
	[VyavasaikSthan] [nvarchar](max) NULL,
	[LekhPrakashanStatus] [nvarchar](max) NULL,
	[Anubhav] [nvarchar](max) NULL,
	[KaryaratSthal] [nvarchar](max) NULL,
	[PrakashitLekh] [nvarchar](max) NULL,
	[PrakashitKashyamadhe] [nvarchar](max) NULL,
	[Vishay] [nvarchar](max) NULL,
	[AavadichaVishay] [nvarchar](max) NULL,
	[Payment] [nvarchar](max) NULL,
	[SamtiPatra] [nvarchar](max) NULL,
	[Lekh] [nvarchar](max) NULL,
	[Font] [nvarchar](max) NULL,
 CONSTRAINT [PK_NewWriter_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pratikriya_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pratikriya_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[MobileNo] [varchar](50) NULL,
	[Education] [nvarchar](max) NULL,
	[Varsh] [nvarchar](max) NULL,
	[Mahine] [nvarchar](max) NULL,
	[Pratikriya] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pratikriya_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_tbl](
	[Id] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Registration_tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[School_tbl]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[School_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vargadar] [nvarchar](max) NULL,
	[SansthecheNav] [nvarchar](max) NULL,
	[SchoolName] [nvarchar](max) NULL,
	[SansthechaPatta] [nvarchar](max) NULL,
	[SchoolAdd] [nvarchar](max) NULL,
	[CityName] [nvarchar](max) NULL,
	[IndexNo] [nvarchar](max) NULL,
	[Taluka] [nvarchar](max) NULL,
	[Jhila] [nvarchar](max) NULL,
	[PincodeNo] [nvarchar](max) NULL,
	[Email] [varchar](50) NULL,
	[MobileNo1] [varchar](50) NULL,
	[MobileNo2] [varchar](50) NULL,
	[Vargani] [varchar](50) NULL,
	[VarganiDate] [varchar](50) NULL,
	[MonthStart] [nvarchar](max) NULL,
	[MonthEnd] [nvarchar](max) NULL,
	[Ip_Address] [nvarchar](max) NULL,
	[Date_Time] [datetime] NULL,
 CONSTRAINT [PK_School_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mandal]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mandal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ino] [varchar](50) NULL,
	[year] [nvarchar](50) NULL,
	[month] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Mandal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_payment]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [nvarchar](max) NULL,
	[tracking_id] [nvarchar](max) NULL,
	[bank_ref_no] [nvarchar](max) NULL,
	[order_status] [nvarchar](max) NULL,
	[failure_message] [nvarchar](max) NULL,
	[payment_mode] [nvarchar](max) NULL,
	[card_name] [nvarchar](max) NULL,
	[status_code] [nvarchar](max) NULL,
	[status_message] [nvarchar](max) NULL,
	[currency] [nvarchar](max) NULL,
	[amount_money] [nvarchar](max) NULL,
	[billing_name] [nvarchar](max) NULL,
	[billing_address] [nvarchar](max) NULL,
	[billing_city] [nvarchar](max) NULL,
	[billing_state] [nvarchar](max) NULL,
	[billing_zip] [nvarchar](max) NULL,
	[billing_country] [nvarchar](max) NULL,
	[billing_tel] [nvarchar](max) NULL,
	[billing_email] [nvarchar](max) NULL,
	[delivery_name] [nvarchar](max) NULL,
	[delivery_address] [nvarchar](max) NULL,
	[delivery_city] [nvarchar](max) NULL,
	[delivery_state] [nvarchar](max) NULL,
	[delivery_zip] [nvarchar](max) NULL,
	[delivery_country] [nvarchar](max) NULL,
	[delivery_tel] [nvarchar](max) NULL,
	[merchant_param1] [nvarchar](max) NULL,
	[merchant_param2] [nvarchar](max) NULL,
	[merchant_param3] [nvarchar](max) NULL,
	[merchant_param4] [nvarchar](max) NULL,
	[merchant_param5] [nvarchar](max) NULL,
	[vault] [nvarchar](max) NULL,
	[offer_type] [nvarchar](max) NULL,
	[offer_code] [nvarchar](max) NULL,
	[discount_value] [nvarchar](max) NULL,
	[mer_account] [nvarchar](max) NULL,
	[eci_value] [nvarchar](max) NULL,
	[retry] [nvarchar](max) NULL,
	[response_code] [nvarchar](max) NULL,
	[billing_notes] [nvarchar](max) NULL,
	[trans_date] [nvarchar](max) NULL,
	[bin_country] [nvarchar](max) NULL,
	[active] [int] NULL,
 CONSTRAINT [PK_Tbl_payment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetFileDetailsNew]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFileDetailsNew]  
(  
@Id int=null  
)  
as  
begin  
select Id,FullName,SamtiPatra from NewChitrakar_tbl  
where Id=isnull(@Id,Id)  
End  
GO
/****** Object:  StoredProcedure [dbo].[GetFileDetailsNew1]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFileDetailsNew1]  
(  
@Id int=null  
)  
as  
begin  
select Id,Chitra,SamtiPatra from NewChitrakar_tbl  
where Id=isnull(@Id,Id)  
End 
GO
/****** Object:  StoredProcedure [dbo].[GetFileDetailsNew2]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFileDetailsNew2]  
(  
@Id int=null  
)  
as  
begin  
select Id,SamtiPatra,Chitra from NewChitrakar_tbl  
where Id=isnull(@Id,Id)  
End  
GO
/****** Object:  StoredProcedure [dbo].[GetFileDetailsNew3]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFileDetailsNew3]  
(  
@Id int=null  
)  
as  
begin  
select Id,Chitra2,Chitra from NewChitrakar_tbl  
where Id=isnull(@Id,Id)  
End  
GO
/****** Object:  StoredProcedure [dbo].[GetFilesOfWriter1]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesOfWriter1]  
(  
@Id int=null  
)  
as  
begin  
select Id,SamtiPatra,Lekh from NewWriter_tbl  
where Id=isnull(@Id,Id)  
End  
GO
/****** Object:  StoredProcedure [dbo].[GetFilesOfWriter2]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesOfWriter2]  
(  
@Id int=null  
)  
as  
begin  
select Id,Lekh,SamtiPatra from NewWriter_tbl  
where Id=isnull(@Id,Id)  
End  
GO
/****** Object:  StoredProcedure [dbo].[GetFilesOfWriter3]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetFilesOfWriter3]  
(  
@Id int=null  
)  
as  
begin  
select Id,Font,Lekh from NewWriter_tbl  
where Id=isnull(@Id,Id)  
End  
GO
/****** Object:  StoredProcedure [dbo].[GetPhotoDetails]    Script Date: 23-02-2023 11:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetPhotoDetails]  
(  
@Id int=null  
)  
as  
begin  
select Id, Photo,Varagani from NewVarganidar_tbl  
where Id=isnull(@Id,Id)  
End  
GO
USE [master]
GO
ALTER DATABASE [NewDatabase] SET  READ_WRITE 
GO
