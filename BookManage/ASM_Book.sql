USE [ASM_Book]
GO
ALTER TABLE [dbo].[Comment] DROP CONSTRAINT [FK_Comment_Book]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Book] DROP CONSTRAINT [FK_Book_Author]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/7/2019 9:12:04 AM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 8/7/2019 9:12:04 AM ******/
DROP TABLE [dbo].[Publisher]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 8/7/2019 9:12:04 AM ******/
DROP TABLE [dbo].[Comment]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/7/2019 9:12:04 AM ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 8/7/2019 9:12:04 AM ******/
DROP TABLE [dbo].[Book]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 8/7/2019 9:12:04 AM ******/
DROP TABLE [dbo].[Author]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 8/7/2019 9:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorId] [int] NOT NULL,
	[AuthorName] [nvarchar](50) NULL,
	[History] [nvarchar](max) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 8/7/2019 9:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[CateId] [int] NULL,
	[AuthorId] [int] NULL,
	[PubId] [int] NULL,
	[Summary] [ntext] NULL,
	[ImgUrl] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NULL,
	[Quantity] [varchar](50) NULL,
	[CreatedDate] [smalldatetime] NULL,
	[ModifiedDate] [smalldatetime] NULL,
	[IsActive] [varchar](50) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 8/7/2019 9:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateId] [int] NOT NULL,
	[CateName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comment]    Script Date: 8/7/2019 9:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentId] [int] NOT NULL,
	[BookId] [int] NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedDate] [smalldatetime] NULL,
	[IsActive] [nvarchar](50) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 8/7/2019 9:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[PubId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[PubId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/7/2019 9:12:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [History]) VALUES (1, N'Micael Siemsen', N'Author Biography')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [History]) VALUES (2, N'John Mandel', N'Author Fiction')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [History]) VALUES (3, N'Robert M. Pirsig', N'Politics & Current Affairs')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [History]) VALUES (4, N'Richard Adams', N'History')
INSERT [dbo].[Author] ([AuthorId], [AuthorName], [History]) VALUES (5, N'Bill Bryson', N'Health & Fitness')
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (1, N'ALBERT EINSTEIN', 1, 1, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'biography1.jpg', CAST(30 AS Decimal(18, 0)), N'20', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (2, N'MY LIFE AND WORK', 1, 1, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'biography2.jpg', CAST(24 AS Decimal(18, 0)), N'20', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (3, N'PLANETARIUM', 2, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Fiction1.jpg', CAST(22 AS Decimal(18, 0)), N'20', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (4, N'HATCHELL DINOSAUR', 2, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Fiction2.jpg', CAST(15 AS Decimal(18, 0)), N'10', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (5, N'FITNESS NUTRITON', 3, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Health&Fitness1.jpg', CAST(33 AS Decimal(18, 0)), N'30', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (6, N'FITNESS PERFECTION', 3, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Health&Fitness2.jpg', CAST(11 AS Decimal(18, 0)), N'50', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (7, N'HISTORY & CIVICS', 4, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'History1.jpg', CAST(24 AS Decimal(18, 0)), N'30', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (8, N'HISTORY & CIVICS PART 1', 4, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'History2.jpg', CAST(30 AS Decimal(18, 0)), N'22', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (9, N'EVE SILVER', 5, 1, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Mystery1.jpg', CAST(44 AS Decimal(18, 0)), N'12', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (10, N'CHARLES TODD', 5, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Mystery2.jpg', CAST(11 AS Decimal(18, 0)), N'100', CAST(0xAA7F0000 AS SmallDateTime), NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (11, N'SINISTER SUMMER', 5, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Mystery3.jpg', CAST(35 AS Decimal(18, 0)), N'30', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (12, N'DARK ANGEL', 5, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Mystery4.jpg', CAST(46 AS Decimal(18, 0)), N'60', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (13, N'SECRET SEVEN', 5, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Mystery5.jpg', CAST(50 AS Decimal(18, 0)), N'66', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (14, N'HISTORY KURNOOL', 4, 1, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'History3.jpg', CAST(23 AS Decimal(18, 0)), N'51', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (15, N'HISTORY IRELAND', 4, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'History4.jpg', CAST(53 AS Decimal(18, 0)), N'45', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (16, N'SILENT WOMAN', 2, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Fiction3.jpg', CAST(34 AS Decimal(18, 0)), N'46', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (17, N'THE DRESS', 2, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Fiction4.jpg', CAST(45 AS Decimal(18, 0)), N'34', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (18, N'THE GOLLANCZ', 2, 5, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Fiction5.jpg', CAST(54 AS Decimal(18, 0)), N'24', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (19, N'HISTORY CIVICS', 4, 5, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'History5.jpg', CAST(56 AS Decimal(18, 0)), N'67', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (20, N'YUVRAJ SINGH', 1, 5, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Biography3.jpg', CAST(56 AS Decimal(18, 0)), N'34', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (21, N'JOHN NEWTON', 1, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Biography4.jpg', CAST(67 AS Decimal(18, 0)), N'46', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (22, N'PHILLIP HUGHES', 1, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Biography5.jpg', CAST(67 AS Decimal(18, 0)), N'45', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (23, N'OWNER''S HEALTH', 3, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Health & Fitness3.jpg', CAST(78 AS Decimal(18, 0)), N'34', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (24, N'DAILY HEALTH', 3, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Health & Fitness4.jpg', CAST(55 AS Decimal(18, 0)), N'23', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (25, N'MINDFUL KIDS', 3, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Health & Fitness5.jpg', CAST(23 AS Decimal(18, 0)), N'45', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (26, N'CURRENT AFFAIRS', 6, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Politics & Current Affairs1.jpg', CAST(67 AS Decimal(18, 0)), N'56', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (27, N'CONTEMPORARY AFFAIRS', 6, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Politics & Current Affairs2.jpg', CAST(45 AS Decimal(18, 0)), N'24', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (28, N'GENERAL STUDIES', 6, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Politics & Current Affairs3.jpg', CAST(65 AS Decimal(18, 0)), N'76', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (29, N'IMPLO SION', 6, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Politics & Current Affairs4.jpg', CAST(54 AS Decimal(18, 0)), N'43', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (30, N'TRAINING LOVE', 6, 1, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Politics & Current Affairs5.jpg', CAST(21 AS Decimal(18, 0)), N'23', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (31, N'RILIGION BUNDLE', 7, 3, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Rellgion1.jpg', CAST(34 AS Decimal(18, 0)), N'45', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (32, N'LOSING RILIGION', 7, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Rellgion2.jpg', CAST(56 AS Decimal(18, 0)), N'45', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (33, N'THE RELIGION', 7, 1, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Rellgion3.jpg', CAST(23 AS Decimal(18, 0)), N'56', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (34, N'BEAUTIFUL RELIGION', 7, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Rellgion4.jpg', CAST(78 AS Decimal(18, 0)), N'67', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (35, N'DISCOVERING GOD', 7, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Rellgion5.jpg', CAST(23 AS Decimal(18, 0)), N'45', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (36, N'SPIN SELLING', 9, 1, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Sale1.jpg', CAST(12 AS Decimal(18, 0)), N'56', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (37, N'SPIRIT MAGIC', 9, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Sale2.jpg', CAST(13 AS Decimal(18, 0)), N'67', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (38, N'NETWORK MARKETING', 9, 4, 4, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Sale3.jpg', CAST(47 AS Decimal(18, 0)), N'7', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (39, N'EVERYBODY LIES', 9, 5, 3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Sale4.jpg', CAST(56 AS Decimal(18, 0)), N'4', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (40, N'EXTREME OWNERSHIP', 9, 5, 1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Sale5.jpg', CAST(45 AS Decimal(18, 0)), N'5', NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (41, N'ROTECTOR ALES', 9, 2, 2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam et sunt incidunt rem fuga accusantium ipsa nulla architecto quaerat! Ducimus voluptatibus unde nesciunt saepe amet qui veritatis cum ea dolor.
Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae fugit ad ducimus distinctio atque laborum iusto, unde perspiciatis neque beatae quis dolorem, non deleniti doloremque, dicta maiores voluptas dolorum et.
', N'Sale6.jpg', CAST(50 AS Decimal(18, 0)), N'2', NULL, NULL, N'False')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'True')
INSERT [dbo].[Book] ([BookId], [Title], [CateId], [AuthorId], [PubId], [Summary], [ImgUrl], [Price], [Quantity], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'True')
SET IDENTITY_INSERT [dbo].[Book] OFF
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (1, N'Biography', N'Description Biography')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (2, N'Fiction', N'Fiction')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (3, N'Health & Fitness', N'Health & Fitness')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (4, N'History', N'History')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (5, N'Mystery', N'Mystery')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (6, N'Politics & Current Affairs', N'Politics & Current Affairs')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (7, N'Religion', N'Religion')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (8, N'Sale', N'Sale')
INSERT [dbo].[Category] ([CateId], [CateName], [Description]) VALUES (9, N'Special', N'Special')
INSERT [dbo].[Publisher] ([PubId], [Name], [Description]) VALUES (1, N'NXBA', N'aa')
INSERT [dbo].[Publisher] ([PubId], [Name], [Description]) VALUES (2, N'NXBB', N'bb')
INSERT [dbo].[Publisher] ([PubId], [Name], [Description]) VALUES (3, N'NXBC', N'cc')
INSERT [dbo].[Publisher] ([PubId], [Name], [Description]) VALUES (4, N'NXBD', N'dd')
INSERT [dbo].[Users] ([UserName], [Password], [Email], [IsActive]) VALUES (N'phucpm', N'asd', N'phuc@gmail.com', NULL)
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([AuthorId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category] FOREIGN KEY([CateId])
REFERENCES [dbo].[Category] ([CateId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([PubId])
REFERENCES [dbo].[Publisher] ([PubId])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([BookId])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Book]
GO
