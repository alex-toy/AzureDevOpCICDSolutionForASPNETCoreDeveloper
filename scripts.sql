CREATE DATABASE [BlogDb-Dev];
CREATE DATABASE [BlogDb-Prod];
CREATE DATABASE [BlogDb-Stage];

GO

USE [BlogDb-Dev];
--USE [BlogDb-Stage];
--USE [BlogDb-Prod];



CREATE TABLE [dbo].[Articles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [varchar](150) NULL,
	[Title] [varchar](50) NULL,
	[Description] [varchar](400) NULL,
	[PubDate] [date] NULL,
	[Featured] [bit] NULL,
 CONSTRAINT [PK_Topics] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Development
INSERT INTO [dbo].[Articles] ([ImageUrl], [Title], [Description], [PubDate], [Featured]) VALUES 
('https://as2.ftcdn.net/v2/jpg/00/81/87/33/1000_F_81873311_hQ1QqlaKL8lXWvVJebzhro4L6q6krqyP.jpg', 'Build & Develop Housing', 'The time it takes to build a new single-family home is close to the average of around seven months. Here are the key steps for building a new home and the primary costs involved.','2024-06-01',1)
,('https://as2.ftcdn.net/v2/jpg/00/81/87/33/1000_F_81873311_hQ1QqlaKL8lXWvVJebzhro4L6q6krqyP.jpg', 'Construction Plan', 'Construction plan to build a new home that is close to the average is available by many construction companies.','2024-06-02',0)
,('https://as2.ftcdn.net/v2/jpg/00/81/87/33/1000_F_81873311_hQ1QqlaKL8lXWvVJebzhro4L6q6krqyP.jpg', 'Build Up Easily', 'Build up your project house easily with new tools that accelerate the development process of your construction plan.','2024-06-03',0)

-- Staging
INSERT INTO [dbo].[Articles] ([ImageUrl], [Title], [Description], [PubDate], [Featured]) VALUES 
('https://as2.ftcdn.net/v2/jpg/02/50/63/09/1000_F_250630964_yEYyA4uZt272sIddfgyHaYcKhTzEFnL3.jpg', 'Satge & Perform', 'The staging area in is a crucial component that plays a significant role in streamlining the movement of performance. It serves as an organized unit within the unit structure, facilitating the smooth flow of incoming and outgoing activities.','2024-07-19',1)
,('https://as2.ftcdn.net/v2/jpg/01/40/25/57/1000_F_140255729_WyGB6Oopss4YnW5GJGSphs8cbBhyPstm.jpg', 'Act Behind Scenes', 'Staging is abehind of scenes actions that keeps acting activities under watch and control before delivery of the art.','2024-07-14',0)
,('https://as1.ftcdn.net/v2/jpg/00/04/07/28/1000_F_4072876_a07Xpz2FKd7HNtVs1o8EaMlzG8z4Mt3m.jpg', 'Staging Before Going', 'Before hitting the road, a staging phase is critical for great performance unless you know what you do with your acts.','2024-07-11',0)


-- Production
INSERT INTO [dbo].[Articles] ([ImageUrl], [Title], [Description], [PubDate], [Featured]) VALUES 
('https://as1.ftcdn.net/v2/jpg/01/91/33/80/1000_F_191338038_tlI8zGPPMUvxFgjIY6iEK5ZoJnYFB2Ru.jpg', 'Produce & Innovate', 'An innovative product can cut through a stagnant market and meet customer needs in new, exciting ways. At its heart, innovation allows businesses to stay relevant and drive growth. It can be challenging to foster innovative thinking within your firm, understand what innovation opportunities exist, and how to execute them with your current capabilities.','2024-08-21',1)
,('https://as2.ftcdn.net/v2/jpg/01/23/48/29/1000_F_123482918_3SPETRnfNFuqIWWRDhoWnYgusEOM0IYt.jpg', 'Productivity Speed', 'Recent research has indicated that a reduction of throughput time is an effective strategy to improve productivity speed.','2024-08-27',0)
,('https://as1.ftcdn.net/v2/jpg/01/14/58/56/1000_F_114585686_t0VrO0Kv2EXDghkFXRaqSpLXnwXucLkM.jpg', 'Produce For Customer', 'Produce in general refers to generates value for customers and it refers to items with value that are delivered to the consumers.','2024-08-22',0)