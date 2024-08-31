USE [master]
GO
/****** Object:  Database [TransactionDB]    Script Date: 8/26/2024 4:54:55 PM ******/
CREATE DATABASE [TransactionDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TransactionDB', FILENAME = N'C:\Users\DELL\TransactionDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TransactionDB_log', FILENAME = N'C:\Users\DELL\TransactionDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TransactionDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TransactionDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TransactionDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TransactionDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TransactionDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TransactionDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TransactionDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TransactionDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TransactionDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TransactionDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TransactionDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TransactionDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TransactionDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TransactionDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TransactionDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TransactionDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TransactionDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TransactionDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TransactionDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TransactionDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TransactionDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TransactionDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TransactionDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TransactionDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TransactionDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TransactionDB] SET  MULTI_USER 
GO
ALTER DATABASE [TransactionDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TransactionDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TransactionDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TransactionDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TransactionDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TransactionDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TransactionDB] SET QUERY_STORE = OFF
GO
USE [TransactionDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/26/2024 4:54:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 8/26/2024 4:54:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](12) NOT NULL,
	[BeneficiaryName] [nvarchar](100) NOT NULL,
	[BankName] [nvarchar](100) NOT NULL,
	[SWIFTCode] [nvarchar](11) NOT NULL,
	[Amount] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TransactionDB] SET  READ_WRITE 
GO
