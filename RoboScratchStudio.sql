USE [RoboScratchStudio]
GO
/****** Object:  Table [dbo].[Benefit]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[benefit_description] [nvarchar](100) NULL,
 CONSTRAINT [PK_Benefit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_Categories]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Course_Categories_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course_title_Images]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course_title_Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image_title] [varchar](max) NULL,
	[id_course] [int] NULL,
 CONSTRAINT [PK_Course_title_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[subtext] [nvarchar](max) NULL,
	[age_request] [nvarchar](50) NULL,
	[duration_in_week] [nvarchar](50) NULL,
	[duration_in_day] [nvarchar](50) NULL,
	[id_course_category] [int] NULL,
 CONSTRAINT [PK_courses_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galleries]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[galleries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img] [varchar](max) NULL,
	[id_course] [int] NULL,
	[id_course_categoty] [int] NULL,
 CONSTRAINT [PK_galleries] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pricing_text] [nvarchar](50) NULL,
	[subtext] [nvarchar](100) NULL,
	[currency] [nvarchar](50) NULL,
	[price] [money] NULL,
	[user_category] [nvarchar](50) NULL,
	[duration_course] [nvarchar](50) NULL,
	[id_category] [int] NULL,
	[id_course] [int] NULL,
	[id_pricing_category] [int] NULL,
 CONSTRAINT [PK_Pricing] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_Benefit]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_Benefit](
	[id_pricing] [int] NOT NULL,
	[id_benefit] [int] NOT NULL,
 CONSTRAINT [PK_Pricing_Benefit] PRIMARY KEY CLUSTERED 
(
	[id_pricing] ASC,
	[id_benefit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricing_Categories]    Script Date: 9/2/2024 4:09:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricing_Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Pricing_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Benefit] ON 

INSERT [dbo].[Benefit] ([id], [benefit_description]) VALUES (1, N'Giảm 16% học phí')
INSERT [dbo].[Benefit] ([id], [benefit_description]) VALUES (2, N'Giảm 20% học phí')
INSERT [dbo].[Benefit] ([id], [benefit_description]) VALUES (3, N'Giảm 25% học phí')
INSERT [dbo].[Benefit] ([id], [benefit_description]) VALUES (4, N'Tặng tài liệu')
INSERT [dbo].[Benefit] ([id], [benefit_description]) VALUES (5, N'Tặng 1 buổi trải nghiệm lắp ráp rotbot EV3 hoặc lập trình game với scratch')
INSERT [dbo].[Benefit] ([id], [benefit_description]) VALUES (6, N'Tặng 2 buổi trải nghiệm lắp ráp rotbot EV3 hoặc lập trình game với scratch')
SET IDENTITY_INSERT [dbo].[Benefit] OFF
GO
SET IDENTITY_INSERT [dbo].[Course_Categories] ON 

INSERT [dbo].[Course_Categories] ([id], [name]) VALUES (1, N'Wedo')
INSERT [dbo].[Course_Categories] ([id], [name]) VALUES (2, N'EV3')
INSERT [dbo].[Course_Categories] ([id], [name]) VALUES (3, N'Game')
INSERT [dbo].[Course_Categories] ([id], [name]) VALUES (4, N'IOT')
SET IDENTITY_INSERT [dbo].[Course_Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Course_title_Images] ON 

INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (1, N'wedokit.png', 1)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (2, N'wedorobo1.png', 1)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (3, N'helicopter.png', 1)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (4, N'wedoroboall.png', 1)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (5, N'ev3kit.png', 2)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (6, N'ev3scratch.png', 2)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (7, N'ev3giro.png', 2)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (8, N'ev3elephant.png', 2)
INSERT [dbo].[Course_title_Images] ([id], [image_title], [id_course]) VALUES (9, N'scratchgame.mp4', 3)
SET IDENTITY_INSERT [dbo].[Course_title_Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([id], [name], [subtext], [age_request], [duration_in_week], [duration_in_day], [id_course_category]) VALUES (1, N'Wedo Robo Scratch', N'Khóa học WeDo Robo Scratch là bước đầu tuyệt vời cho trẻ em khám phá thế giới lập trình và robotics. Tại đây, các em sẽ học cách lập trình các mô hình robot thông qua phần mềm Scratch, giúp phát triển tư duy logic và kỹ năng giải quyết vấn đề. Với phương pháp học tập kết hợp giữa sáng tạo và thực hành, khóa học không chỉ mang lại niềm vui mà còn khơi dậy niềm đam mê công nghệ trong trẻ. Đội ngũ giảng viên giàu kinh nghiệm sẽ hướng dẫn từng bước, đảm bảo mỗi học viên đều có thể tự tin tạo ra các dự án robot độc đáo của riêng mình.', N'
7 - 10 tuổi', N'1 buổi/tuần', N'2 tiếng', 1)
INSERT [dbo].[Courses] ([id], [name], [subtext], [age_request], [duration_in_week], [duration_in_day], [id_course_category]) VALUES (2, N'EV3 Robo Scratch', N'Khóa học EV3 Robo Scratch là cơ hội hoàn hảo cho trẻ em nâng cao kỹ năng lập trình và khám phá thế giới robotics. Trong khóa học này, các em sẽ học cách lập trình và điều khiển các robot EV3 thông qua phần mềm Scratch, giúp phát triển tư duy logic và kỹ năng giải quyết vấn đề. Chương trình học kết hợp giữa lý thuyết và thực hành sáng tạo, mang đến cho trẻ trải nghiệm học tập thú vị và bổ ích. Đội ngũ giảng viên chuyên nghiệp sẽ hướng dẫn từng bước, đảm bảo rằng mỗi học viên có thể tự tin tạo ra các dự án robot phức tạp và độc đáo của riêng mình.', N'10 - 15 tuổi', N'1 buổi/tuần', N'2 tiếng', 2)
INSERT [dbo].[Courses] ([id], [name], [subtext], [age_request], [duration_in_week], [duration_in_day], [id_course_category]) VALUES (3, N'Scratch Game Class', N'Khóa học Scratch Game Class là nơi lý tưởng để trẻ em bắt đầu hành trình trở thành nhà lập trình game. Tại đây, các em sẽ học cách tạo ra các trò chơi hấp dẫn từ những ý tưởng đơn giản, sử dụng phần mềm Scratch. Khóa học giúp phát triển tư duy logic, kỹ năng sáng tạo và giải quyết vấn đề thông qua các dự án thú vị và thực tế. Với sự hướng dẫn tận tình từ đội ngũ giảng viên giàu kinh nghiệm, các em sẽ tự tin tạo ra những trò chơi độc đáo của riêng mình, đồng thời khám phá niềm đam mê công nghệ và lập trình ngay từ sớm.', N'9 - 15 tuổi', N'1 buổi/tuần', N'2 tiếng', 3)
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[galleries] ON 

INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (1, N'IMG_4769.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (2, N'IMG_4784.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (3, N'IMG_4776.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (4, N'IMG_4772.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (5, N'IMG_4860.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (6, N'IMG_4788.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (7, N'IMG_4785.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (8, N'IMG_4777.png', 1, 1)
INSERT [dbo].[galleries] ([id], [img], [id_course], [id_course_categoty]) VALUES (9, N'IMG_4779.png', 1, 1)
SET IDENTITY_INSERT [dbo].[galleries] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricing] ON 

INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (2, NULL, N'Gói 1 Tháng', N'đ', 500.0000, N'bé', N'tháng', 1, 1, 2)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (3, NULL, N'Gói 2 Tháng', N'đ', 960.0000, N'bé', N'tháng', 1, 1, 3)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (4, NULL, N'Gói 3 Tháng', N'đ', 1350.0000, N'bé', N'tháng', 1, 1, 4)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (5, NULL, N'Gói 1 Tháng', N'đ', 500.0000, N'bé', N'tháng', 2, 2, 2)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (6, NULL, N'Gói 2 Tháng', N'đ', 960.0000, N'bé', N'tháng', 2, 2, 3)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (7, NULL, N'Gói 3 Tháng', N'đ', 1350.0000, N'bé', N'tháng', 2, 2, 4)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (8, NULL, N'Gói 1 Tháng', N'đ', 500.0000, N'bé', N'tháng', 3, 3, 2)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (9, NULL, N'Gói 2 Tháng', N'đ', 960.0000, N'bé', N'tháng', 3, 3, 3)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (10, NULL, N'Gói 3 Tháng', N'đ', 1350.0000, N'bé', N'tháng', 3, 3, 4)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (11, NULL, N'Gói Buổi', N'đ', 150.0000, N'bé', N'buổi', 1, 1, 1)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (12, NULL, N'Gói buổi', N'đ', 150.0000, N'bé', N'buổi', 2, 2, 1)
INSERT [dbo].[Pricing] ([id], [pricing_text], [subtext], [currency], [price], [user_category], [duration_course], [id_category], [id_course], [id_pricing_category]) VALUES (13, NULL, N'Gói buổi', N'đ', 150.0000, N'bé', N'buổi', 3, 3, 1)
SET IDENTITY_INSERT [dbo].[Pricing] OFF
GO
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (2, 1)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (2, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (2, 5)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (3, 2)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (3, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (3, 5)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (4, 3)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (4, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (4, 6)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (5, 1)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (5, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (5, 5)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (6, 2)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (6, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (6, 5)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (7, 3)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (7, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (7, 5)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (8, 1)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (8, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (8, 5)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (9, 2)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (9, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (9, 5)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (10, 3)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (10, 4)
INSERT [dbo].[Pricing_Benefit] ([id_pricing], [id_benefit]) VALUES (10, 6)
GO
SET IDENTITY_INSERT [dbo].[Pricing_Categories] ON 

INSERT [dbo].[Pricing_Categories] ([id], [name]) VALUES (1, N'kiến tạo trẻ')
INSERT [dbo].[Pricing_Categories] ([id], [name]) VALUES (2, N'Tiến sĩ ham học')
INSERT [dbo].[Pricing_Categories] ([id], [name]) VALUES (3, N'Bác học thiên tài')
INSERT [dbo].[Pricing_Categories] ([id], [name]) VALUES (4, N'Nhà thông thái')
SET IDENTITY_INSERT [dbo].[Pricing_Categories] OFF
GO
ALTER TABLE [dbo].[Course_title_Images]  WITH CHECK ADD  CONSTRAINT [FK_Course_title_Images_Courses] FOREIGN KEY([id_course])
REFERENCES [dbo].[Courses] ([id])
GO
ALTER TABLE [dbo].[Course_title_Images] CHECK CONSTRAINT [FK_Course_title_Images_Courses]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Courses_Course_Categories] FOREIGN KEY([id_course_category])
REFERENCES [dbo].[Course_Categories] ([id])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Courses_Course_Categories]
GO
ALTER TABLE [dbo].[galleries]  WITH CHECK ADD  CONSTRAINT [FK_galleries_Course_Categories] FOREIGN KEY([id_course_categoty])
REFERENCES [dbo].[Course_Categories] ([id])
GO
ALTER TABLE [dbo].[galleries] CHECK CONSTRAINT [FK_galleries_Course_Categories]
GO
ALTER TABLE [dbo].[galleries]  WITH CHECK ADD  CONSTRAINT [FK_galleries_courses] FOREIGN KEY([id_course])
REFERENCES [dbo].[Courses] ([id])
GO
ALTER TABLE [dbo].[galleries] CHECK CONSTRAINT [FK_galleries_courses]
GO
ALTER TABLE [dbo].[Pricing]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Course_Categories1] FOREIGN KEY([id_category])
REFERENCES [dbo].[Course_Categories] ([id])
GO
ALTER TABLE [dbo].[Pricing] CHECK CONSTRAINT [FK_Pricing_Course_Categories1]
GO
ALTER TABLE [dbo].[Pricing]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Courses1] FOREIGN KEY([id_course])
REFERENCES [dbo].[Courses] ([id])
GO
ALTER TABLE [dbo].[Pricing] CHECK CONSTRAINT [FK_Pricing_Courses1]
GO
ALTER TABLE [dbo].[Pricing]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Pricing_Categories] FOREIGN KEY([id_pricing_category])
REFERENCES [dbo].[Pricing_Categories] ([id])
GO
ALTER TABLE [dbo].[Pricing] CHECK CONSTRAINT [FK_Pricing_Pricing_Categories]
GO
ALTER TABLE [dbo].[Pricing_Benefit]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Benefit_Benefit] FOREIGN KEY([id_benefit])
REFERENCES [dbo].[Benefit] ([id])
GO
ALTER TABLE [dbo].[Pricing_Benefit] CHECK CONSTRAINT [FK_Pricing_Benefit_Benefit]
GO
ALTER TABLE [dbo].[Pricing_Benefit]  WITH CHECK ADD  CONSTRAINT [FK_Pricing_Benefit_Pricing] FOREIGN KEY([id_pricing])
REFERENCES [dbo].[Pricing] ([id])
GO
ALTER TABLE [dbo].[Pricing_Benefit] CHECK CONSTRAINT [FK_Pricing_Benefit_Pricing]
GO
