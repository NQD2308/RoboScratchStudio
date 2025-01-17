USE [RoboScratchStudio]
GO
/****** Object:  Table [dbo].[Benefit]    Script Date: 9/7/2024 5:40:41 PM ******/
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
/****** Object:  Table [dbo].[Course_Categories]    Script Date: 9/7/2024 5:40:41 PM ******/
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
/****** Object:  Table [dbo].[Course_title_Images]    Script Date: 9/7/2024 5:40:41 PM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 9/7/2024 5:40:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[short_name] [nvarchar](50) NULL,
	[subtext] [nvarchar](max) NULL,
	[age_request] [nvarchar](50) NULL,
	[duration_in_week] [nvarchar](50) NULL,
	[duration_in_day] [nvarchar](50) NULL,
	[content] [nvarchar](max) NULL,
	[id_course_category] [int] NULL,
	[is_show] [bit] NULL,
 CONSTRAINT [PK_courses_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galleries]    Script Date: 9/7/2024 5:40:41 PM ******/
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
/****** Object:  Table [dbo].[Pricing]    Script Date: 9/7/2024 5:40:41 PM ******/
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
/****** Object:  Table [dbo].[Pricing_Benefit]    Script Date: 9/7/2024 5:40:41 PM ******/
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
/****** Object:  Table [dbo].[Pricing_Categories]    Script Date: 9/7/2024 5:40:41 PM ******/
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

INSERT [dbo].[Courses] ([id], [name], [short_name], [subtext], [age_request], [duration_in_week], [duration_in_day], [content], [id_course_category], [is_show]) VALUES (1, N'Wedo Robo Scratch', N'Wedo', N'Khóa học WeDo Robo Scratch là bước đầu tuyệt vời cho trẻ em khám phá thế giới lập trình và robotics. Tại đây, các em sẽ học cách lập trình các mô hình robot thông qua phần mềm Scratch, giúp phát triển tư duy logic và kỹ năng giải quyết vấn đề. Với phương pháp học tập kết hợp giữa sáng tạo và thực hành, khóa học không chỉ mang lại niềm vui mà còn khơi dậy niềm đam mê công nghệ trong trẻ. Đội ngũ giảng viên giàu kinh nghiệm sẽ hướng dẫn từng bước, đảm bảo mỗi học viên đều có thể tự tin tạo ra các dự án robot độc đáo của riêng mình.', N'
7 - 10 tuổi', N'1 buổi/tuần', N'2 tiếng', N'<h3 class="text-2xl font-bold text-orange-400">Wedo 2.0 là gì?</h3>
<div class="my-4 text-gray-500 ">
    WeDo 2.0 là một bộ công cụ giáo dục STEM (Science, Technology, Engineering, and Mathematics) được LEGO Education phát triển, nhằm giúp trẻ em từ độ tuổi 7 trở lên học lập trình và các khái niệm khoa học cơ bản thông qua việc xây dựng và lập trình các mô hình LEGO.
</div>
<div class="my-4 text-gray-500 ">
    Bộ công cụ này bao gồm các khối LEGO đặc biệt, một bộ điều khiển thông minh có khả năng kết nối Bluetooth, các cảm biến và động cơ. Người dùng có thể sử dụng phần mềm WeDo 2.0 trên máy tính hoặc máy tính bảng để lập trình cho các mô hình LEGO của mình thực hiện các hành động như di chuyển, phát âm thanh, và phản hồi lại các tín hiệu từ môi trường.
</div>
<div class="my-4 text-gray-500 ">
    WeDo 2.0 được thiết kế để phát triển các kỹ năng giải quyết vấn đề, tư duy logic, và sáng tạo của trẻ em thông qua việc xây dựng các mô hình thực tế và lập trình chúng. Bộ công cụ này thường được sử dụng trong môi trường giáo dục như lớp học hoặc các chương trình học ngoại khóa về STEM.
</div>
<div class="my-4 text-gray-500 ">
    Lập trình WeDo 2.0 khá trực quan và dễ dàng, đặc biệt là dành cho trẻ em. Bộ công cụ này sử dụng một giao diện kéo-thả (drag-and-drop) tương tự như các công cụ lập trình trực quan khác, giúp trẻ em dễ dàng tiếp cận với việc lập trình.
</div>
<h3 class="text-2xl font-semibold text-orange-400">Tại sao nên cho trẻ tham gia?</h3>
<div class="my-4">
    <p class="text-gray-700 ">Học WeDo 2.0 mang lại nhiều lợi ích cho trẻ em, không chỉ trong việc phát triển kỹ năng lập trình mà còn trong các lĩnh vực khác. Dưới đây là một số ích lợi chính:</p>
    <ul class="pl-5">
        <li class="font-semibold py-2 text-gray-500">
            Phát Triển Kỹ Năng Lập Trình Cơ Bản
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Khả Năng Tư Duy Logic:</span> Trẻ học cách xây dựng và gỡ lỗi chương trình, giúp cải thiện khả năng giải quyết vấn đề và tư duy logic.</li>
                <li><span class="font-semibold">Kỹ Năng Kéo-Thả:</span> Thực hành lập trình qua giao diện kéo-thả giúp trẻ dễ dàng hiểu các khái niệm lập trình cơ bản mà không cần phải viết mã.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Khuyến Khích Tư Duy Sáng Tạo
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Xây Dựng Mô Hình Cá Nhân:</span> Trẻ em có thể xây dựng và lập trình các mô hình LEGO theo cách sáng tạo của riêng mình, khuyến khích sự sáng tạo và khả năng thiết kế.</li>
                <li><span class="font-semibold">Giải Quyết Vấn Đề:</span> Việc thiết kế và lập trình các mô hình yêu cầu trẻ tìm ra giải pháp cho các vấn đề kỹ thuật và sáng tạo.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Cải Thiện Kỹ Năng Khoa Học và Kỹ Thuật
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Hiểu Biết Về Cảm Biến và Động Cơ:</span> Trẻ học cách sử dụng các cảm biến và động cơ, từ đó hiểu thêm về các nguyên lý khoa học và kỹ thuật cơ bản.</li>
                <li><span class="font-semibold">Khám Phá STEM:</span> WeDo 2.0 giúp trẻ làm quen với các khái niệm STEM (Khoa học, Công nghệ, Kỹ thuật, Toán học) thông qua việc thực hành và khám phá.</li>
            </ul>
        </li>
        <li class="font-semibold py-2 text-gray-500">
            Nâng Cao Kỹ Năng Làm Việc Nhóm
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Hợp Tác Trong Nhóm:</span> Thực hiện các dự án nhóm giúp trẻ học cách làm việc cùng nhau, chia sẻ ý tưởng và giải quyết vấn đề cùng nhau.</li>
                <li><span class="font-semibold">Giao Tiếp và Thảo Luận:</span> Trẻ em học cách giao tiếp hiệu quả và thảo luận về các giải pháp kỹ thuật với bạn bè hoặc giáo viên.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Tăng Cường Kỹ Năng Giải Quyết Vấn Đề
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Phát Hiện và Sửa Lỗi:</span> Quá trình lập trình giúp trẻ phát hiện lỗi và tìm cách khắc phục, từ đó nâng cao khả năng phân tích và giải quyết vấn đề.</li>
                <li><span class="font-semibold">Thử Nghiệm và Điều Chỉnh:</span> Trẻ học cách thử nghiệm các giải pháp và điều chỉnh lập trình cho đến khi đạt được kết quả mong muốn.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Khuyến Khích Tinh Thần Khám Phá và Học Hỏi
            <ul class="list-disc pl-5 text-gray-500 font-normal">
                <li><span class="font-semibold">Khám Phá Công Nghệ:</span> WeDo 2.0 giúp trẻ khám phá công nghệ và kỹ thuật một cách dễ hiểu và thú vị.</li>
                <li><span class="font-semibold">Yêu Thích Học Hỏi:</span> Việc học qua trò chơi và xây dựng mô hình giúp trẻ cảm thấy học hỏi là một hoạt động thú vị và bổ ích.</li>
            </ul>
        </li>
    </ul>
</div>
<h3 class="text-2xl font-bold text-orange-400">Nội dung khóa học!</h3>
<div class="my-4 text-gray-500">
    Khóa học WeDo 2.0 là một hành trình thú vị dành cho các em học sinh từ 7 tuổi trở lên, giúp trẻ em làm quen với lập trình và các khái niệm STEM thông qua việc xây dựng và lập trình các mô hình LEGO. Đây là một cơ hội tuyệt vời để trẻ phát triển kỹ năng công nghệ, tư duy logic, và khả năng sáng tạo trong một môi trường học tập vui vẻ và tương tác.
</div>
<div class="my-4 text-gray-500">
    Khóa học bắt đầu với việc giới thiệu về bộ công cụ WeDo 2.0, bao gồm các thành phần cơ bản như Smart Hub, cảm biến, động cơ và các khối lệnh lập trình. Trẻ sẽ học cách cài đặt phần mềm WeDo 2.0 và kết nối nó với thiết bị của mình, mở đầu cho một cuộc hành trình đầy hứng thú.
</div>
<div class="my-4 text-gray-500">
    Sau khi làm quen với các thành phần cơ bản, trẻ sẽ được hướng dẫn cách lắp ráp các mô hình LEGO từ những khối cơ bản. Các mô hình này có thể là xe, robot, hoặc các công trình đơn giản. Học sinh sẽ áp dụng các thành phần như động cơ và cảm biến để thêm tính năng cho mô hình của mình, giúp các mô hình hoạt động một cách thú vị và hữu ích.
    Sau khi hoàn tất phần lắp ráp, các bé sẽ được hướng dẫn lập trình. Là một phần quan trọng của khóa học, nơi trẻ sẽ học cách sử dụng các khối lệnh để điều khiển mô hình của mình.
</div>
<div class="my-4 text-gray-500">
    Khóa học kết thúc với việc tổng kết các kiến thức và kỹ năng đã học được. Trẻ em sẽ được đánh giá về sự tiến bộ và kết quả học tập của mình, từ đó củng cố và mở rộng những gì đã học.
</div>
<h3 class="text-2xl font-bold text-orange-400">Thông tin khóa học</h3>
<div class="my-4">
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-solid fa-child-reaching text-gray-500 text-xl ml-0.5"></i>

        <span class="text-gray-600">7 - 10 tuổi</span>
    </div>
    <!-- check - end -->
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-regular fa-calendar-days text-gray-500 text-xl"></i>

        <span class="text-gray-600">1 buổi/tuần</span>
    </div>
    <!-- check - end -->
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-regular fa-clock text-gray-500 text-xl"></i>

        <span class="text-gray-600">2 tiếng</span>
    </div>
    <!-- check - end -->
</div>', 1, 1)
INSERT [dbo].[Courses] ([id], [name], [short_name], [subtext], [age_request], [duration_in_week], [duration_in_day], [content], [id_course_category], [is_show]) VALUES (2, N'EV3 Robo Scratch', N'EV3', N'Khóa học EV3 Robo Scratch là cơ hội hoàn hảo cho trẻ em nâng cao kỹ năng lập trình và khám phá thế giới robotics. Trong khóa học này, các em sẽ học cách lập trình và điều khiển các robot EV3 thông qua phần mềm Scratch, giúp phát triển tư duy logic và kỹ năng giải quyết vấn đề. Chương trình học kết hợp giữa lý thuyết và thực hành sáng tạo, mang đến cho trẻ trải nghiệm học tập thú vị và bổ ích. Đội ngũ giảng viên chuyên nghiệp sẽ hướng dẫn từng bước, đảm bảo rằng mỗi học viên có thể tự tin tạo ra các dự án robot phức tạp và độc đáo của riêng mình.', N'10 - 15 tuổi', N'1 buổi/tuần', N'2 tiếng', N'<h3 class="text-2xl font-bold text-orange-400">EV3 là gì?</h3>
<div class="my-4 text-gray-500 ">
    EV3 là tên gọi của bộ công cụ robot giáo dục LEGO Mindstorms EV3, một phiên bản nâng cấp của dòng sản phẩm LEGO Mindstorms. Nó được phát triển bởi LEGO để giúp trẻ em và người học khám phá lập trình và kỹ thuật thông qua việc xây dựng và lập trình các robot. Dưới đây là một số điểm nổi bật về EV3:
</div>
<div class="my-4 text-gray-500 ">
    <span class="font-semibold">Brick (Cục Điều Khiển):</span> Đây là phần trung tâm của bộ EV3, có chức năng điều khiển robot và xử lý các lệnh từ cảm biến và động cơ. Cục điều khiển EV3 có màn hình hiển thị và các nút bấm để điều chỉnh và lập trình.
</div>
<div class="my-4 text-gray-500 ">
    <span class="font-semibold">Động Cơ:</span> Các động cơ EV3 cho phép robot thực hiện các chuyển động như di chuyển, quay, và nâng lên hạ xuống.
</div>
<div class="my-4 text-gray-500 ">
    <span class="font-semibold">Cảm Biến:</span> EV3 đi kèm với nhiều loại cảm biến như cảm biến khoảng cách, cảm biến ánh sáng, cảm biến chạm, và cảm biến màu sắc. Những cảm biến này giúp robot tương tác với môi trường xung quanh.
</div>
<div class="my-4 text-gray-500 ">
    <span class="font-semibold">Khối LEGO:</span> Bộ công cụ bao gồm các khối LEGO để xây dựng các mô hình robot theo ý tưởng của người dùng.
</div>
<h3 class="text-2xl font-semibold text-orange-400">Tại sao nên cho trẻ tham gia?</h3>
<div class="my-4">
    <p class="text-gray-500 ">Lớp học LEGO Mindstorms EV3 không chỉ là một hoạt động thú vị, mà còn mang lại nhiều lợi ích giáo dục và phát triển toàn diện cho trẻ em. Dưới đây là những lý do tại sao việc cho trẻ tham gia lớp học EV3 là một lựa chọn tuyệt vời:</p>
    <ul class="pl-5">
        <li class=" font-semibold py-2 text-gray-500">
            Khám Phá Kỹ Thuật và Công Nghệ
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Hiểu Biết Về Robot:</span> Trẻ sẽ được làm quen với các khái niệm cơ bản về robot, từ cấu tạo của động cơ đến cách cảm biến hoạt động. Việc tìm hiểu cách các bộ phận hoạt động cùng nhau giúp trẻ hiểu rõ hơn về công nghệ hiện đại.</li>
                <li><span class="font-semibold">Lập Trình Cơ Bản:</span> Lớp học EV3 giúp trẻ học lập trình thông qua phần mềm kéo-thả, tạo điều kiện cho trẻ tiếp cận với các khái niệm lập trình cơ bản một cách dễ dàng và trực quan.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Khuyến Khích Tư Duy Sáng TạoPhát Triển Kỹ Năng STEM
            <ul class="list-disc pl-5 text-gray-500 font-normal">
                <li><span class="font-semibold">Tư Duy Logic:</span> Việc lập trình robot yêu cầu trẻ phải suy nghĩ logic và giải quyết vấn đề. Trẻ sẽ học cách phân tích tình huống và tìm ra các giải pháp hiệu quả để điều khiển robot thực hiện các nhiệm vụ.</li>
                <li><span class="font-semibold">Sáng Tạo và Giải Quyết Vấn Đề:</span> Xây dựng và lập trình robot khuyến khích trẻ sáng tạo và thử nghiệm. Trẻ em sẽ phải tư duy để thiết kế các mô hình robot hoạt động theo ý muốn và xử lý các vấn đề phát sinh.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Khuyến Khích Học Tập Tương Tác
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Học Qua Trải Nghiệm:</span> Thay vì chỉ học lý thuyết, trẻ sẽ học qua việc xây dựng và lập trình các mô hình thực tế. Điều này giúp trẻ dễ dàng tiếp thu kiến thức và thấy được ứng dụng thực tiễn của những gì mình học được.</li>
                <li><span class="font-semibold">Tăng Cường Kỹ Năng Làm Việc Nhóm:</span> Trong lớp học EV3, trẻ thường phải làm việc theo nhóm để hoàn thành các dự án. Điều này giúp cải thiện kỹ năng giao tiếp, hợp tác và làm việc nhóm của trẻ.</li>
            </ul>
        </li>
        <li class="font-semibold py-2 text-gray-500">
            Khuyến Khích Tinh Thần Khám Phá
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Khả Năng Mở Rộng:</span> EV3 cho phép trẻ tự do sáng tạo và thử nghiệm với các dự án cá nhân hóa. Điều này giúp trẻ phát triển tinh thần khám phá và không ngừng học hỏi.</li>
                <li><span class="font-semibold">Ứng Dụng Đa Dạng:</span> Trẻ có thể áp dụng những kiến thức và kỹ năng học được vào nhiều lĩnh vực khác nhau, từ thiết kế robot đến các ứng dụng công nghệ phức tạp hơn.
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Chuẩn Bị Cho Tương Lai
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Kỹ Năng Công Nghệ:</span> Việc làm quen với lập trình và kỹ thuật từ sớm giúp trẻ chuẩn bị tốt hơn cho các ngành nghề công nghệ trong tương lai. Những kỹ năng này ngày càng trở nên quan trọng trong thế giới hiện đại.</li>
                <li><span class="font-semibold">Phát Triển Kỹ Năng Mềm:</span> Lớp học EV3 không chỉ tập trung vào các khái niệm kỹ thuật, mà còn giúp trẻ phát triển các kỹ năng mềm như tư duy phản biện, quản lý thời gian và tổ chức công việc.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Tạo Động Lực Học Tập
            <ul class="list-disc pl-5 text-gray-500 font-normal">
                <li><span class="font-semibold">Học Tập Vui Vẻ:</span> Việc xây dựng và lập trình robot là một hoạt động thú vị và hấp dẫn, tạo động lực cho trẻ tiếp tục học tập và khám phá thêm nhiều kiến thức mới.</li>
                <li><span class="font-semibold">Cảm Giác Thành Công:</span> Khi trẻ thấy robot của mình hoạt động theo cách mình lập trình, điều đó mang lại cảm giác thành công và tự hào, khuyến khích trẻ tiếp tục thử thách và học hỏi.</li>
            </ul>
        </li>
    </ul>
    <p class="text-gray-500 ">Lớp học LEGO Mindstorms EV3 không chỉ giúp trẻ em học các kỹ năng STEM quan trọng mà còn khuyến khích sự sáng tạo, tư duy logic và tinh thần hợp tác. Đây là một cơ hội tuyệt vời để trẻ khám phá và phát triển trong một môi trường học tập thú vị và đầy cảm hứng.</p>
</div>
<h3 class="text-2xl font-bold text-orange-400">Nội dung khóa học!</h3>
<div class="my-4 text-gray-500">
    Giới thiệu các thành phần của bộ công cụ LEGO Mindstorms EV3, bao gồm cục điều khiển EV3, động cơ, cảm biến và các khối LEGO.Hướng dẫn sử dụng phần mềm lập trình kéo-thả của LEGO EV3 để tạo ra các chương trình điều khiển robot.
</div>
<div class="my-4 text-gray-500">
    <span class="font-semibold">Giới Thiệu Về LEGO Mindstorms EV3</span>Khóa học bắt đầu với việc giới thiệu về bộ công cụ EV3, bao gồm các thành phần cơ bản như Smart Hub, cảm biến, động cơ và các khối lệnh lập trình. Trẻ sẽ học cách cài đặt phần mềm EV3 và kết nối nó với thiết bị của mình, mở đầu cho một cuộc hành trình đầy hứng thú.
</div>
<div class="my-4 text-gray-500">
    <span class="font-semibold">Xây Dựng Robot</span>
    Hướng dẫn từng bước để xây dựng các mô hình robot cơ bản, từ những thiết kế đơn giản đến các cấu trúc phức tạp hơn. 
    Hướng dẫn cách lắp đặt và kết nối các động cơ và cảm biến vào robot để thực hiện các nhiệm vụ cụ thể.
</div>
<div class="my-4 text-gray-500">
    <span class="font-semibold">Lập Trình Robot</span>
    Dạy cách sử dụng phần mềm lập trình kéo-thả để điều khiển các động cơ và cảm biến. Học sinh sẽ tạo ra các chương trình đơn giản để điều khiển robot di chuyển, quay và thực hiện các hành động cơ bản. 
    Hướng dẫn cách lập trình bằng ngôn ngữ Python hoặc LabVIEW cho những học sinh muốn thử thách hơn. Tìm hiểu các khái niệm lập trình nâng cao và cách áp dụng chúng vào các dự án phức tạp hơn.
</div>
<h3 class="text-2xl font-bold text-orange-400">Thông tin khóa học</h3>
<div class="my-4">
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-solid fa-child-reaching text-gray-500 text-xl ml-0.5"></i>

        <span class="text-gray-500">10 - 15 tuổi</span>
    </div>
    <!-- check - end -->
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-regular fa-calendar-days text-gray-500 text-xl"></i>

        <span class="text-gray-500">1 buổi/tuần</span>
    </div>
    <!-- check - end -->
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-regular fa-clock text-gray-500 text-xl"></i>

        <span class="text-gray-500">2 tiếng</span>
    </div>
    <!-- check - end -->
</div>', 2, 1)
INSERT [dbo].[Courses] ([id], [name], [short_name], [subtext], [age_request], [duration_in_week], [duration_in_day], [content], [id_course_category], [is_show]) VALUES (3, N'Scratch Game Class', N'Game', N'Khóa học Scratch Game Class là nơi lý tưởng để trẻ em bắt đầu hành trình trở thành nhà lập trình game. Tại đây, các em sẽ học cách tạo ra các trò chơi hấp dẫn từ những ý tưởng đơn giản, sử dụng phần mềm Scratch. Khóa học giúp phát triển tư duy logic, kỹ năng sáng tạo và giải quyết vấn đề thông qua các dự án thú vị và thực tế. Với sự hướng dẫn tận tình từ đội ngũ giảng viên giàu kinh nghiệm, các em sẽ tự tin tạo ra những trò chơi độc đáo của riêng mình, đồng thời khám phá niềm đam mê công nghệ và lập trình ngay từ sớm.', N'9 - 15 tuổi', N'1 buổi/tuần', N'2 tiếng', N'<h3 class="text-2xl font-bold text-orange-400">Scratch là gì?</h3>
<div class="my-4 text-gray-500 ">
    Scratch là một ngôn ngữ lập trình trực quan và nền tảng cộng đồng trực tuyến được phát triển bởi MIT Media Lab. Nó được thiết kế để giúp trẻ em và người mới bắt đầu học lập trình một cách dễ dàng và thú vị. 
    Scratch được sử dụng rộng rãi trong các trường học trên toàn thế giới như một công cụ giảng dạy lập trình và tư duy logic. Nó giúp học sinh không chỉ hiểu về lập trình mà còn phát triển kỹ năng tư duy phản biện và giải quyết vấn đề.
</div>
<div class="my-4 text-gray-500 ">
    <span class="font-semibold">Lập Trình Kéo-Thả:</span> Scratch sử dụng giao diện lập trình kéo-thả, nơi người dùng có thể tạo ra các chương trình bằng cách kéo và thả các khối lệnh (blocks) vào khu vực lập trình. 
    Các khối lệnh trong Scratch được chia thành nhiều nhóm khác nhau như chuyển động, điều khiển, cảm biến, âm thanh, và hình ảnh. Người dùng có thể kết hợp các khối này để tạo ra các chương trình phức tạp.
</div>
<div class="my-4 text-gray-500 ">
    <span class="font-semibold">Học Tập Và Sáng Tạo:</span> Scratch được thiết kế để người dùng dễ dàng bắt đầu mà không cần bất kỳ kiến thức lập trình nào trước đó. Trẻ em có thể học các khái niệm cơ bản về lập trình như vòng lặp, điều kiện, và biến số thông qua các dự án vui nhộn. 
    Scratch cho phép người dùng tạo ra các trò chơi, câu chuyện tương tác, hoạt hình, và nhiều dự án sáng tạo khác. Điều này khuyến khích trẻ em phát triển tư duy sáng tạo và giải quyết vấn đề.
</div>
<div class="my-4 text-gray-500 ">
    <span class="font-semibold">Cộng Đồng Trực Tuyến:</span> Scratch có một cộng đồng trực tuyến nơi người dùng có thể chia sẻ các dự án của họ với mọi người trên toàn thế giới. Người dùng có thể xem, sửa đổi và học hỏi từ các dự án của người khác. 
    Cộng đồng Scratch cung cấp một môi trường học tập hợp tác, nơi người dùng có thể tương tác, đưa ra phản hồi và học hỏi lẫn nhau.
</div>
<h3 class="text-2xl font-semibold text-orange-400">Tại sao nên cho trẻ tham gia?</h3>
<div class="my-4">
    <p class="text-gray-500 ">Cho trẻ tham gia lớp học Scratch Game mang lại nhiều lợi ích quan trọng, không chỉ trong việc học lập trình mà còn phát triển các kỹ năng cần thiết cho sự phát triển toàn diện của trẻ. Một số lý do phụ huynh nên cân nhắc cho con em mình tham gia lớp học này:</p>
    <ul class="pl-5">
        <li class=" font-semibold py-2 text-gray-500">
            Phát Triển Tư Duy Lập Trình Thông Qua Trò Chơi
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Tư Duy Logic và Giải Quyết Vấn Đề:</span> Khi tạo ra các trò chơi bằng Scratch, trẻ phải suy nghĩ logic để xây dựng các quy tắc và hệ thống trong trò chơi. Quá trình này giúp trẻ phát triển tư duy logic và khả năng giải quyết vấn đề một cách hiệu quả.</li>
                <li><span class="font-semibold">Hiểu Nguyên Tắc Lập Trình:</span> Thông qua việc lập trình game, trẻ sẽ nắm vững các khái niệm cơ bản như vòng lặp, điều kiện, biến số và sự kiện, giúp tạo nền tảng vững chắc cho việc học các ngôn ngữ lập trình phức tạp hơn trong tương lai.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Kích Thích Sáng Tạo và Tư Duy Đổi Mới
            <ul class="list-disc pl-5 text-gray-500 font-normal">
                <li><span class="font-semibold">Tự Do Sáng Tạo Trò Chơi Riêng:</span> Scratch Game cho phép trẻ tự do sáng tạo ra các trò chơi theo ý tưởng của mình, từ cách thiết kế nhân vật, cảnh quan đến cốt truyện. Điều này không chỉ khuyến khích sự sáng tạo mà còn giúp trẻ phát triển kỹ năng thiết kế và tư duy đổi mới.</li>
                <li><span class="font-semibold">Thúc Đẩy Tinh Thần Khám Phá:</span> Trẻ được khuyến khích thử nghiệm nhiều cách tiếp cận khác nhau trong việc phát triển game, từ đó học hỏi và cải thiện kỹ năng lập trình của mình.</li>
            </ul>
        </li>
        <li class=" font-semibold py-2 text-gray-500">
            Tăng Cường Kỹ Năng Giải Quyết Vấn Đề Trong Ngữ Cảnh Thực Tế
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Phân Tích và Xử Lý Tình Huống:</span> Khi tạo game, trẻ sẽ đối mặt với nhiều thử thách cần giải quyết, chẳng hạn như cách xử lý lỗi hoặc làm cho trò chơi hoạt động mượt mà. Điều này giúp trẻ rèn luyện khả năng phân tích và giải quyết vấn đề trong ngữ cảnh thực tế.</li>
                <li><span class="font-semibold">Làm Việc Theo Quy Trình:</span> Việc phát triển một trò chơi từ ý tưởng đến sản phẩm hoàn thiện yêu cầu trẻ phải làm việc theo quy trình cụ thể, từ lập kế hoạch, thiết kế, lập trình đến kiểm thử và chỉnh sửa.</li>
            </ul>
        </li>
        <li class="font-semibold py-2 text-gray-500">
            Phát Triển Kỹ Năng Làm Việc Nhóm và Giao Tiếp
            <ul class="list-disc pl-5  text-gray-500 font-normal">
                <li><span class="font-semibold">Hợp Tác và Chia Sẻ:</span> Trong các lớp học Scratch Game, trẻ thường làm việc theo nhóm để cùng nhau phát triển các dự án game. Điều này giúp trẻ học cách làm việc nhóm, chia sẻ ý tưởng và cùng nhau giải quyết vấn đề.</li>
                <li><span class="font-semibold">Phát Triển Kỹ Năng Giao Tiếp:</span> Khi làm việc nhóm, trẻ cần giao tiếp để trình bày ý tưởng của mình và thảo luận về các giải pháp, giúp cải thiện kỹ năng giao tiếp và thuyết trình.
            </ul>
        </li>
    </ul>
</div>
<h3 class="text-2xl font-bold text-orange-400">Nội dung khóa học!</h3>
<div class="my-4">
    <ul class=" pl-5 text-gray-500">
        <li><span class="font-semibold">Giới Thiệu về Scratch và Lập Trình Kéo-Thả:</span> Trẻ học cách tạo và lập trình các hành động cho nhân vật trong trò chơi, bao gồm di chuyển, nhảy, thay đổi trang phục, và tương tác với các đối tượng khác.</li>
        <li><span class="font-semibold">Tạo và Điều Khiển Nhân Vật</span>Trẻ học cách tạo và lập trình các hành động cho nhân vật trong trò chơi, bao gồm di chuyển, nhảy, thay đổi trang phục, và tương tác với các đối tượng khác.</li>
        <li><span class="font-semibold">Thiết Kế Bối Cảnh và Môi Trường Trò Chơi:</span>Trẻ sẽ học cách tạo các bối cảnh và môi trường cho trò chơi, sử dụng hình ảnh và âm thanh để làm cho trò chơi sống động hơn.</li>
        <li><span class="font-semibold">Xây Dựng Cốt Truyện và Cấp Độ</span>Trẻ học cách phát triển cốt truyện cho trò chơi, tạo ra các cấp độ khác nhau để tăng độ khó và thử thách cho người chơi.</li>
        <li><span class="font-semibold">Lập Trình Logic và Điều Kiện:</span>Trẻ sẽ được học về các khái niệm lập trình như vòng lặp, điều kiện, và biến số để tạo ra các trò chơi có tính tương tác cao.</li>
        <li><span class="font-semibold">Kiểm Thử và Chỉnh Sửa:</span>Trẻ sẽ học cách kiểm thử trò chơi của mình, phát hiện lỗi, và chỉnh sửa để đảm bảo trò chơi hoạt động mượt mà và chính xác.</li>
        <li><span class="font-semibold">Chia Sẻ và Học Từ Cộng Đồng:</span>Trẻ được khuyến khích chia sẻ trò chơi của mình với cộng đồng Scratch, học hỏi từ các trò chơi của bạn bè và phát triển kỹ năng giao tiếp và làm việc nhóm.</li>
    </ul>
</div>
<h3 class="text-2xl font-bold text-orange-400">Thông tin khóa học</h3>
<div class="my-4">
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-solid fa-child-reaching text-gray-500 text-xl ml-0.5"></i>

        <span class="text-gray-500">10 - 15 tuổi</span>
    </div>
    <!-- check - end -->
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-regular fa-calendar-days text-gray-500 text-xl"></i>

        <span class="text-gray-500">1 buổi/tuần</span>
    </div>
    <!-- check - end -->
    <!-- check - start -->
    <div class="flex gap-2 items-center my-4">
        <i class="fa-regular fa-clock text-gray-500 text-xl"></i>

        <span class="text-gray-500">2 tiếng</span>
    </div>
    <!-- check - end -->
</div>', 3, 1)
INSERT [dbo].[Courses] ([id], [name], [short_name], [subtext], [age_request], [duration_in_week], [duration_in_day], [content], [id_course_category], [is_show]) VALUES (4, N'IOT', N'IOT', NULL, N'15 - 18 tuổi', N'1 buổi/tuần', N'2 tiếng', N'<h3 class="text-xl font-bold">Wedo 2.0 là gì?</h3>
<p class="my-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s 
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop 
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
<h3 class="text-xl font-bold">Scratch là gì</h3>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>
<h3 class="text-xl font-bold">Nội dung khóa học</h3>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>
<h3 class="text-xl font-bold">Lợi ích</h3>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>
<p class="my-4">
    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s
    standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop
    publishing software like Aldus PageMaker including versions of Lorem Ipsum.
</p>', 4, 0)
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

INSERT [dbo].[Pricing_Categories] ([id], [name]) VALUES (1, N'Kiến tạo trẻ')
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
