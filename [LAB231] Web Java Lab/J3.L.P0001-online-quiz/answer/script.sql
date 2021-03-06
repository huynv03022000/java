USE [master]
GO
/****** Object:  Database [EasyCMS]    Script Date: 06/11/2018 12:18:08 ******/
CREATE DATABASE [EasyCMS] ON  PRIMARY 
( NAME = N'EasyCMS', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EasyCMS.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EasyCMS_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\EasyCMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EasyCMS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EasyCMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EasyCMS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [EasyCMS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [EasyCMS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [EasyCMS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [EasyCMS] SET ARITHABORT OFF
GO
ALTER DATABASE [EasyCMS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [EasyCMS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [EasyCMS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [EasyCMS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [EasyCMS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [EasyCMS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [EasyCMS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [EasyCMS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [EasyCMS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [EasyCMS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [EasyCMS] SET  DISABLE_BROKER
GO
ALTER DATABASE [EasyCMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [EasyCMS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [EasyCMS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [EasyCMS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [EasyCMS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [EasyCMS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [EasyCMS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [EasyCMS] SET  READ_WRITE
GO
ALTER DATABASE [EasyCMS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [EasyCMS] SET  MULTI_USER
GO
ALTER DATABASE [EasyCMS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [EasyCMS] SET DB_CHAINING OFF
GO
USE [EasyCMS]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 06/11/2018 12:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](50) NULL,
	[opt1] [nvarchar](500) NULL,
	[opt2] [nvarchar](500) NULL,
	[opt3] [nvarchar](500) NULL,
	[opt4] [nvarchar](500) NULL,
	[answer] [nvarchar](500) NULL,
	[created] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Question] ON
INSERT [dbo].[Question] ([id], [content], [opt1], [opt2], [opt3], [opt4], [answer], [created]) VALUES (1, N'What is the capital of Vietnam', N'Hanoi', N'Saigon', N'HCM City', N'Lang Son', N'1', CAST(0x0000A8F000A011F6 AS DateTime))
INSERT [dbo].[Question] ([id], [content], [opt1], [opt2], [opt3], [opt4], [answer], [created]) VALUES (2, N'Is Mr.Minh fancy ?', N'So fancy', N'Fancy and galant', N'I''m a big fan', N'All', N'4', CAST(0x0000A8F000A05A3F AS DateTime))
INSERT [dbo].[Question] ([id], [content], [opt1], [opt2], [opt3], [opt4], [answer], [created]) VALUES (3, N'What is the name of this university?', N'FPT Daigaku', N'FPTU', N'FPTHCM', N'Do not care', N'12', CAST(0x0000A8F000A0A627 AS DateTime))
INSERT [dbo].[Question] ([id], [content], [opt1], [opt2], [opt3], [opt4], [answer], [created]) VALUES (4, N'Name of question 4', N'answer ichi', N'Answer ni', N'answer san', N'answer yon', N'2', CAST(0x0000A8FC00B32039 AS DateTime))
INSERT [dbo].[Question] ([id], [content], [opt1], [opt2], [opt3], [opt4], [answer], [created]) VALUES (8, N'ssssssss<br>dddddddddd', N'ddddddddd', N'ddddddddd', N'dddddddd', N'ddddddddddddddddddddd', N'2', CAST(0x0000A8FC00B5C9AD AS DateTime))
INSERT [dbo].[Question] ([id], [content], [opt1], [opt2], [opt3], [opt4], [answer], [created]) VALUES (9, N'dddddddd<br>ddddddddd<br>ddddddddd', N'dsfdsfdsf', N'dsfsdfsd', N'fdsfdsfsd', N'fsdfsdfsdfsd', N'123', CAST(0x0000A8FC00B5E2EE AS DateTime))
SET IDENTITY_INSERT [dbo].[Question] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 06/11/2018 12:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[type] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([id], [username], [password], [email], [type]) VALUES (1, N'Minh', N'123456', N'mra00000@gmail.com', 1)
INSERT [dbo].[Users] ([id], [username], [password], [email], [type]) VALUES (2, N'MrVD', N'123456', N'ahihi@gmail.com', 1)
INSERT [dbo].[Users] ([id], [username], [password], [email], [type]) VALUES (3, N'MrAhihi', N'123456', N'ah@gmail.com', 1)
INSERT [dbo].[Users] ([id], [username], [password], [email], [type]) VALUES (4, N'MrGalan', N'123456', N'galan@ahihi.com', 0)
INSERT [dbo].[Users] ([id], [username], [password], [email], [type]) VALUES (5, N'MrSFAG', N'12345678', N'mfagman@ahihi.com', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[QuizHistory]    Script Date: 06/11/2018 12:18:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizHistory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NULL,
	[numOfQuiz] [int] NULL,
	[correctAnswer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[QuizHistory] ON
INSERT [dbo].[QuizHistory] ([id], [studentId], [numOfQuiz], [correctAnswer]) VALUES (1, 5, 3, 2)
INSERT [dbo].[QuizHistory] ([id], [studentId], [numOfQuiz], [correctAnswer]) VALUES (2, 5, 6, 2)
SET IDENTITY_INSERT [dbo].[QuizHistory] OFF
/****** Object:  Default [DF__Question__create__0519C6AF]    Script Date: 06/11/2018 12:18:11 ******/
ALTER TABLE [dbo].[Question] ADD  DEFAULT (getdate()) FOR [created]
GO
/****** Object:  ForeignKey [fk_studentId_1]    Script Date: 06/11/2018 12:18:11 ******/
ALTER TABLE [dbo].[QuizHistory]  WITH CHECK ADD  CONSTRAINT [fk_studentId_1] FOREIGN KEY([studentId])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[QuizHistory] CHECK CONSTRAINT [fk_studentId_1]
GO
