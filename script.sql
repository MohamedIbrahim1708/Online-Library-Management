USE [master]
GO
/****** Object:  Database [MyLibraryDB]    Script Date: 3/10/2022 11:59:20 PM ******/
CREATE DATABASE [MyLibraryDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyLibraryDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyLibraryDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyLibraryDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyLibraryDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MyLibraryDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyLibraryDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyLibraryDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyLibraryDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyLibraryDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyLibraryDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyLibraryDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyLibraryDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyLibraryDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyLibraryDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyLibraryDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyLibraryDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyLibraryDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyLibraryDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyLibraryDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyLibraryDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyLibraryDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyLibraryDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyLibraryDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyLibraryDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyLibraryDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyLibraryDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyLibraryDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyLibraryDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyLibraryDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MyLibraryDB] SET  MULTI_USER 
GO
ALTER DATABASE [MyLibraryDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyLibraryDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyLibraryDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyLibraryDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyLibraryDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyLibraryDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyLibraryDB', N'ON'
GO
ALTER DATABASE [MyLibraryDB] SET QUERY_STORE = OFF
GO
USE [MyLibraryDB]
GO
/****** Object:  Table [dbo].[Admin_Login_tbl]    Script Date: 3/10/2022 11:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin_Login_tbl](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Full_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin_Login_tbl] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author_Master_tbl]    Script Date: 3/10/2022 11:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author_Master_tbl](
	[Author_ID] [nchar](10) NOT NULL,
	[Author_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Author_Master_tbl] PRIMARY KEY CLUSTERED 
(
	[Author_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Issue_tbl]    Script Date: 3/10/2022 11:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Issue_tbl](
	[Member_ID] [nvarchar](50) NULL,
	[Member_Name] [nvarchar](50) NULL,
	[Book_ID] [nvarchar](50) NULL,
	[Book_Name] [nvarchar](max) NULL,
	[Issue_Date] [nvarchar](50) NULL,
	[Due_Date] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Master_tbl]    Script Date: 3/10/2022 11:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Master_tbl](
	[Book_ID] [nchar](10) NOT NULL,
	[Book_Name] [nvarchar](max) NULL,
	[Genre] [nvarchar](max) NULL,
	[Author_Name] [nvarchar](max) NULL,
	[Publisher_Name] [nvarchar](max) NULL,
	[Publish_Date] [nvarchar](50) NULL,
	[Language] [nvarchar](50) NULL,
	[Edition] [nvarchar](max) NULL,
	[Book_Cost] [nchar](10) NULL,
	[No_Of_Pages] [nchar](10) NULL,
	[Book_Description] [nvarchar](max) NULL,
	[Actual_Stock] [nchar](10) NULL,
	[Current_Stock] [nchar](10) NULL,
	[Book_Img_Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book_Master_tbl] PRIMARY KEY CLUSTERED 
(
	[Book_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member_Master_tbl]    Script Date: 3/10/2022 11:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Master_tbl](
	[Full_Name] [nvarchar](50) NULL,
	[DOB] [nvarchar](50) NULL,
	[Contact_No] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[PinCode] [nvarchar](50) NULL,
	[Full_Address] [nvarchar](max) NULL,
	[Member_ID] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Account_Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_Member_Master_tbl] PRIMARY KEY CLUSTERED 
(
	[Member_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher_Master_tbl]    Script Date: 3/10/2022 11:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher_Master_tbl](
	[Publisher_ID] [nchar](10) NOT NULL,
	[Publisher_Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Publisher_Master_tbl] PRIMARY KEY CLUSTERED 
(
	[Publisher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MyLibraryDB] SET  READ_WRITE 
GO
