USE [Personal Blog]
GO
/****** Object:  Table [dbo].[content]    Script Date: 3/22/2023 2:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[content](
	[ID] [int] NOT NULL,
	[Content1] [ntext] NULL,
	[MainTitle] [ntext] NULL,
	[PostingTime] [datetime] NULL,
	[image] [nvarchar](50) NULL,
	[Content2] [ntext] NULL,
	[title1] [ntext] NULL,
	[title2] [ntext] NULL,
	[name1] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[viewer1]    Script Date: 3/22/2023 2:57:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[viewer1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Message] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (1, N'Tên nước hoa: Armaf Club de Nuit Intense Man<p>Hương đầu: Quả chanh, Quả dứa, Cam Bergamot, Quả lý chua đen, Quả táo</p>
Hương giữa: Bạch dương, Hoa nhài, Hoa hồng
<p>Hương cuối: Xạ hương, Long diên hương, Hoắc hương, Vanilla</p>

Đã đến lúc chúng ta nên công nhận rằng đây là hương thơm mà Armaf Club de Nuit Intense Man mang lại thật sự tuyệt vời và nếu bạn là một nhà sưu tập nước hoa theo bất kỳ nghĩa nào thì đây là thứ mà bạn cần phải có trong bộ sưu tập của mình.

<p>Chanh, Táo và Dứa là hương thơm chủ đạo trong phần mở đầu cho sự tươi mát. Từ đó khô dần để lộ hương Hoa hồng, Hoa nhài sẽ khiến bạn ấn tượng đến khó quên. Sự xuất hiện của Bạch dương cùng Hoắc hương đan xen nhau tạo nên hiệu ứng khói đầy lôi cuốn. Cuối cùng sẽ là đòn chốt hạ bằng Xạ hương với vai trò như bản nhạc giao hưởng giúp tăng phần gợi cảm và một chút ngọt nhẹ từ hương Vanilla sẽ biến chủ nhân của nó trở thành trung tâm của mọi sự chú ý.</p>

Armaf Club de Nuit Intense là một chàng trai biết tận dụng sự tươi mới, trẻ trung và đôi khi bí ẩn của mình để tạo nên sự cuốn hút khiến đối phương trở nên chìm đắm trong chính câu chuyện của hai người.', N'Nước hoa nam dễ sử dụng cả đi chơi và đi học', CAST(N'2023-08-03T00:00:00.000' AS DateTime), N'club.jpg', N'Cách sử dụng được Duy Tung đề xuất dành cho bạn:
<ul>
<li>Nước hoa mang lại mùi hương cho cơ thể bạn thông qua việc tiếp xúc lên da và phản ứng với hơi ấm trên cơ thể của bạn. Việc được tiếp xúc với các bộ phận như cổ tay, khuỷu tay, sau tai, gáy, cổ trước là những vị trí được ưu tiên hàng đầu trong việc sử dụng nước hoa bởi sự kín đáo và thuận lợi trong việc tỏa mùi hương.</li>
<li>Sau khi sử dụng, xịt nước hoa lên cơ thể, tránh dùng tay chà xát hoặc làm khô da bằng những vật dụng khác, điều này phá vỡ các tầng hương trong nước hoa, khiến nó có thể thay đổi mùi hương hoặc bay mùi nhanh hơn.</li>
<li>Để chai nước hoa cách vị trí cần dùng nước hoa trong khoảng 15-20cm và xịt mạnh, dứt khoát để mật đổ phủ của nước hoa được rộng nhất, tăng độ bám tỏa trên da của bạn.</li>
<li>Phần cổ tay được xịt nước hoa thường có nhiều tác động như lúc rửa tay, đeo vòng, đồng hồ, do đó để đảm bảo mùi hương được duy trì, bạn nên sử dụng nước hoa ở cổ tay ở tần suất nhiều hơn lúc cần thiết.</li>
<li>Nước hoa có thể bám tốt hay không tốt tùy thuộc vào thời gian, không gian, cơ địa, chế độ sinh hoạt, ăn uống của bạn, việc sử dụng một loại nước hoa trong thời gian dài có thể khiến bạn bị quen mùi, dẫn đến hiện tượng không nhận biết được mùi hương. Mang theo nước hoa bên mình hoặc trang bị những mẫu mini tiện dụng để giúp bản thân luôn tự tin mọi lúc mọi nơi.</li>
</ul>
<p>Bảo quản nước hoa:</p>
<ul>
<li>Nước hoa phổ thông (Designer) thường không có hạn sử dụng, ở một số Quốc gia, việc ghi chú hạn sử dụng là điều bắt buộc để hàng hóa được bán ra trên thị trường. Hạn sử dụng ở một số dòng nước hoa được chú thích từ 24 đến 36 tháng, và tính từ ngày bạn mở sản phẩm và sử dụng lần đầu tiên.</li>
<li>Nước hoa là tổng hợp của nhiều thành phần hương liệu tự nhiên và tổng hợp, nên bảo quản nước hoa ở những nơi khô thoáng, mát mẻ, tránh nắng, nóng hoặc quá lạnh, lưu ý không để nước hoa trong cốp xe, những nơi có nhiệt độ nóng lạnh thất thường...</li>
</ul>', N'Chi tiết sản phẩm', N'Sử dụng và bảo quản', N'CLUB DE NUIT')
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (2, N'Tên nước hoa: Chanel Bleu De Chanel Eau de Parfum
<p>Hương đầu: Quả bưởi, Quả chanh vàng, Bạc hà, Tiêu hồng, Cam Bergamot, Aldehydes, Hạt rau mùi.</p>
Hương giữa: Gừng, Nhục đậu khấu, Hoa nhài, Quả dưa.
<p>Hương cuối: Nhang, Nhựa hổ phách, Gỗ tuyết tùng, Gỗ đàn hương, Hoắc hương, Nhựa Labdanum, Nhựa Hổ phách.</p>

Sự ra mắt của Bleu de Chanel năm 2010 giống như một người khởi xướng cho phong trào làm nước hoa “blue” tới từ các nhà hương, một phong cách mùi hương nịnh mũi, dễ gần và vô cùng đa dụng. Bleu de Chanel dường như đáp ứng đầy đủ các yêu cầu dành cho cánh mày râu khi cần tìm kiếm một mùi hương gây được dấu ấn của bản thân mình thời điểm đó. Với sự chu toàn của Chanel, việc cho ra một phiên bản nâng cấp để hoàn thiện tính hoàn hảo cho mùi hương là điều chắc chắn xảy ra, và chúng ta đã có Bleu de Chanel Eau de Parfum vào năm 2014.

<p>Vốn được rất nhiều người trong cộng đồng nước hoa đánh giá là phiên bản hoàn hảo nhất của dòng Bleu de Chanel, Bleu de Chanel Eau de Parfum vẫn đem tới cho các quý ông một khởi đầu tươi sáng và thanh lịch. Bưởi và Gừng, thứ được cho là dấu ấn của dòng hương nổi tiếng của Chanel, được tô đậm và làm sáng lên rõ ràng trong Bleu de Chanel Eau de Parfum, đa sắc và dày dặn hơn. Đi vào tâm của mùi hương cũng vậy, khi phiên bản Bleu de Chanel Eau de Parfum sở hữu một mùi hương có chiều sâu rõ rệt với sự xuất hiện của Nhựa hổ phách, bên cạnh hương Gỗ và Nhang đã tạo nên nhận diện đặc trưng ở tầng hương cuối cho dòng hương Bleu de Chanel.</p>

Vốn được sinh ra để thỏa mãn tất cả những người yêu thích phong cách hương thơm “kiểu Bleu de Chanel”, phiên bản Eau de Parfum này thực sự là một mảnh ghép hoàn hảo được Chanel đem tới để làm mãn nguyện những quý ông yêu thích dòng hương này.', N'Nước hoa phổ thông thường được dùng trong các sự kiện quan trọng', CAST(N'2023-07-03T00:00:00.000' AS DateTime), N'bleu.jpg', N'Cách sử dụng được Duy Tung đề xuất dành cho bạn:
<ul>
<li>Nước hoa mang lại mùi hương cho cơ thể bạn thông qua việc tiếp xúc lên da và phản ứng với hơi ấm trên cơ thể của bạn. Việc được tiếp xúc với các bộ phận như cổ tay, khuỷu tay, sau tai, gáy, cổ trước là những vị trí được ưu tiên hàng đầu trong việc sử dụng nước hoa bởi sự kín đáo và thuận lợi trong việc tỏa mùi hương.</li>
<li>Sau khi sử dụng, xịt nước hoa lên cơ thể, tránh dùng tay chà xát hoặc làm khô da bằng những vật dụng khác, điều này phá vỡ các tầng hương trong nước hoa, khiến nó có thể thay đổi mùi hương hoặc bay mùi nhanh hơn.</li>
<li>Để chai nước hoa cách vị trí cần dùng nước hoa trong khoảng 15-20cm và xịt mạnh, dứt khoát để mật đổ phủ của nước hoa được rộng nhất, tăng độ bám tỏa trên da của bạn.</li>
<li>Phần cổ tay được xịt nước hoa thường có nhiều tác động như lúc rửa tay, đeo vòng, đồng hồ, do đó để đảm bảo mùi hương được duy trì, bạn nên sử dụng nước hoa ở cổ tay ở tần suất nhiều hơn lúc cần thiết.</li>
<li>Nước hoa có thể bám tốt hay không tốt tùy thuộc vào thời gian, không gian, cơ địa, chế độ sinh hoạt, ăn uống của bạn, việc sử dụng một loại nước hoa trong thời gian dài có thể khiến bạn bị quen mùi, dẫn đến hiện tượng không nhận biết được mùi hương. Mang theo nước hoa bên mình hoặc trang bị những mẫu mini tiện dụng để giúp bản thân luôn tự tin mọi lúc mọi nơi.</li>
</ul>
<p>Bảo quản nước hoa:</p>
<ul>
<li>Nước hoa phổ thông (Designer) thường không có hạn sử dụng, ở một số Quốc gia, việc ghi chú hạn sử dụng là điều bắt buộc để hàng hóa được bán ra trên thị trường. Hạn sử dụng ở một số dòng nước hoa được chú thích từ 24 đến 36 tháng, và tính từ ngày bạn mở sản phẩm và sử dụng lần đầu tiên.</li>
<li>Nước hoa là tổng hợp của nhiều thành phần hương liệu tự nhiên và tổng hợp, nên bảo quản nước hoa ở những nơi khô thoáng, mát mẻ, tránh nắng, nóng hoặc quá lạnh, lưu ý không để nước hoa trong cốp xe, những nơi có nhiệt độ nóng lạnh thất thường...</li>
</ul>', N'Chi tiết sản phẩm', N'Sử dụng và bảo quản', N'Bleu De Chanel')
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (3, N'Tên nước hoa: Jean Paul Gaultier Ultra Male
<p>Hương đầu: Quả lê, Bạc hà, Hoa Lavender, Quả chanh vàng</p>
Hương giữa: Quế, Thì là Ba Tư
<p>Hương cuối: Vani, Hổ phách, Gỗ tuyết tùng, Cây hoắc hương</p>

Nếu như bạn còn chưa biết đến hãng Jean Paul Gautier với khả năng chế tác nước hoa dựa theo những cảm xúc trần tục của con người thì hãy nhanh nhanh lên google để tìm hiểu kỹ trước khi đọc bài giới thiệu về chai nước hoa tôi sắp đề cập đến nhé. Không cần phải nói quá nhiều đề độ phủ sóng toàn tập của Scandal trên khắp thế giới khi nó trở thành thứ vũ khí mê hoặc lý trí của cánh đàn ông và tôn vinh sự gợi cảm, sexy một cách trần trụi của người phụ nữ. Nhưng ở bên kia chiến tuyến, cánh mày râu đừng bao giờ quên mình cũng có một siêu phẩm chẳng hề kém cạnh một chút nào, Ultra Male, chính xác là Ultra Male của hãng Jean Paul Gautier nhé càng chàng trai.
<p>Với tôi, Ultra Male thấm đẫm sự ngọt ngào đầy "nhục dục". Nhiều người hay nói đùa rằng lên đồ để đi chơi, nhưng nếu mặc lên người mùi của Ultra Male thì khác gì đang không mặc đồ. Điều điên rồ nhất ở anh chàng này đó là nó khiến cho đối phương cảm thấy tò mò một cách thái quá, nghiền ngẫm suy nghĩ bằng những thái độ bất thường và soi mói gã Ultra Male với ánh mắt thèm khát. Họ dò xét, tăm tia một cách mất kiểm soát, như thể đang muốn khám phá mọi thứ, kể cả những thứ bên trong của gã này. Công bằng mà nói, Ultra Male chẳng khác gì một mùi hương mê hoặc người đối diện, và tôi nhấn nhá chữ người đối diện bởi có lẽ với giới tính nào, gã này cũng hút được hết sảy. Nam, nữ hay là giới tính thứ 3, tất cả đều phải ngoái đầu lại, ném ánh mắt chằm chằm khi Ultra Male đi ngang qua, và cũng chỉ cần 1 đến 2 cú xịt thôi, nó đủ đốn gục mọi thứ xung quanh bạn rồi. Đừng quá dại dột mà phủ lên mình 5-6 shot nếu như ngày hôm đó sức khỏe của bạn không được tốt, bởi quá nhiều zoombie sẽ lên cơn thèm khát vì món tráng miệng quá đỗi hấp dẫn Ultra Male đang hiện ra trước mắt của mình. Mùi hoa Lavender thoang thoảng quyện chặt cùng Hương Vani mềm mượt, pha lẫn chút thanh mát của trái Lê và Bạc hà, Ultra Male trần trụi và khơi gợi đến mức điên dại với mùi cay nồng của quế và sự thân mật của Thì là Ba Tư. Để bắt đầu những làn hương tỏa bay khiêu khích đối phương, Hổ phách và Gỗ tuyết tùng đã quá dư thừa khả năng trong việc nắm trọn người tình chỉ trong vài nốt nhạc. Nếu muốn hấp dẫn gái, trai hay thậm chí bất cứ giới tính nào đi nữa, Ultra Male sẽ không bao giờ khiến bạn thất vọng dù chỉ một lần, thậm chí bạn sẽ phải giận dỗi với chính bản thân của mình vì đã không làm quen với gã này từ lâu. Một mùi hương dành cho bất kỳ giới tính nào... Ultra Male Jean Paul Gautier.</p>', N'Nước hoa nên dùng khi đi Fisrt Date gây thương nhớ  ', CAST(N'2023-03-13T00:00:00.000' AS DateTime), N'ultra.jpg', N'Cách sử dụng được Duy Tung đề xuất dành cho bạn:
<ul>
<li>Nước hoa mang lại mùi hương cho cơ thể bạn thông qua việc tiếp xúc lên da và phản ứng với hơi ấm trên cơ thể của bạn. Việc được tiếp xúc với các bộ phận như cổ tay, khuỷu tay, sau tai, gáy, cổ trước là những vị trí được ưu tiên hàng đầu trong việc sử dụng nước hoa bởi sự kín đáo và thuận lợi trong việc tỏa mùi hương.</li>
<li>Sau khi sử dụng, xịt nước hoa lên cơ thể, tránh dùng tay chà xát hoặc làm khô da bằng những vật dụng khác, điều này phá vỡ các tầng hương trong nước hoa, khiến nó có thể thay đổi mùi hương hoặc bay mùi nhanh hơn.</li>
<li>Để chai nước hoa cách vị trí cần dùng nước hoa trong khoảng 15-20cm và xịt mạnh, dứt khoát để mật đổ phủ của nước hoa được rộng nhất, tăng độ bám tỏa trên da của bạn.</li>
<li>Phần cổ tay được xịt nước hoa thường có nhiều tác động như lúc rửa tay, đeo vòng, đồng hồ, do đó để đảm bảo mùi hương được duy trì, bạn nên sử dụng nước hoa ở cổ tay ở tần suất nhiều hơn lúc cần thiết.</li>
<li>Nước hoa có thể bám tốt hay không tốt tùy thuộc vào thời gian, không gian, cơ địa, chế độ sinh hoạt, ăn uống của bạn, việc sử dụng một loại nước hoa trong thời gian dài có thể khiến bạn bị quen mùi, dẫn đến hiện tượng không nhận biết được mùi hương. Mang theo nước hoa bên mình hoặc trang bị những mẫu mini tiện dụng để giúp bản thân luôn tự tin mọi lúc mọi nơi.</li>
</ul>
<p>Bảo quản nước hoa:</p>
<ul>
<li>Nước hoa phổ thông (Designer) thường không có hạn sử dụng, ở một số Quốc gia, việc ghi chú hạn sử dụng là điều bắt buộc để hàng hóa được bán ra trên thị trường. Hạn sử dụng ở một số dòng nước hoa được chú thích từ 24 đến 36 tháng, và tính từ ngày bạn mở sản phẩm và sử dụng lần đầu tiên.</li>
<li>Nước hoa là tổng hợp của nhiều thành phần hương liệu tự nhiên và tổng hợp, nên bảo quản nước hoa ở những nơi khô thoáng, mát mẻ, tránh nắng, nóng hoặc quá lạnh, lưu ý không để nước hoa trong cốp xe, những nơi có nhiệt độ nóng lạnh thất thường...</li>
</ul>', N'Chi tiết sản phẩm', N'Sử dụng và bảo quản', N'Ultra Male')
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (4, N'Với tầm giá 1.380.000 cho 100ml thì đây là loại nước hoa tôi cảm thấy phù hợp cho túi tiền của học sinh, sinh viên nhất. Ngoài ra để tiết kiệm và được thử nhiều mùi thì học sinh, sinh viên chúng ta mua loại chiết. Mặc dù nếu tính mua cả lọ với mua chiết thì chiết sẽ có giá thành cao hơn. Ví Dụ : 1 lọ chiết có giá 180.000/10ml và 1 lọ nước hoa đó có giá 1.380.000/100ml
<p>Tên nước hoa: Afnan Supremacy Incense</p>
Hương đầu: Lá kinh giới cay, Gia vị, Cam Bergamot, Hương thảo mộc.
<p>Hương giữa: Nhựa Opoponax, Nhựa Amber, Nhựa Labdanum.</p>
Hương cuối: Khói, Trầm hương (Oud), Da thuộc, Hoắc hương.

<p>Với sự thành công của Supremacy Silver, Afnan được giới dùng hương yêu thích khi làm ra những mùi hương quen nhưng dưới những góc nhìn lạ lẫm, mang đậm màu sắc phương Đông. Supremacy Incense là một mùi hương như vậy, khi nó lấy cảm hứng từ Interlude, đến từ một nhà nước hoa Trung Đông khác đắt đỏ hơn là Amouage.</p>

Afnan Supremacy Incense mở ra với mùi hương ấm áp của Gia vị, được làm tươi và mịn hơn bằng Cam Bergamot. Nhựa cây mạnh mẽ ở phía sau, ấm áp, ám Khói, tạo cảm giác giống với hương Thuốc lá cho tâm của mùi hương. Khói nhiều, dẫn đến Trầm hương, điền nốt chủ điểm cuối cùng của mùi hương Afnan Supremacy Incense. Trầm hương, Khói và Nhựa hương là những mùi thơm mạnh mẽ, làm nên sắc màu chính của mùi hương, khiến Supremacy Incense tạo nên một ấn tượng khó phai về khung cảnh phương Đông huyền bí, ma mị.

<p>Với việc vẽ ra rõ ràng khung cảnh của một phiên chợ với những quầy gia vị đủ màu, đủ sắc ở Trung Đông, có vẻ Afnan Supremacy Incense đã phần nào thành công. So sánh Supremacy Incense với Interlude có thể là một điều thiếu công bằng với mùi hương đến từ Afnan, khi cả hai mùi hương đều thành công khai thác ý tưởng cùng một khung cảnh với những góc nhìn khác nhau.</p>', N'Nước hoa chính hãng giá học sinh, sinh viên', CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'afnan.jpg', N'Cách sử dụng được Duy Tung đề xuất dành cho bạn:
<ul>
<li>Nước hoa mang lại mùi hương cho cơ thể bạn thông qua việc tiếp xúc lên da và phản ứng với hơi ấm trên cơ thể của bạn. Việc được tiếp xúc với các bộ phận như cổ tay, khuỷu tay, sau tai, gáy, cổ trước là những vị trí được ưu tiên hàng đầu trong việc sử dụng nước hoa bởi sự kín đáo và thuận lợi trong việc tỏa mùi hương.</li>
<li>Sau khi sử dụng, xịt nước hoa lên cơ thể, tránh dùng tay chà xát hoặc làm khô da bằng những vật dụng khác, điều này phá vỡ các tầng hương trong nước hoa, khiến nó có thể thay đổi mùi hương hoặc bay mùi nhanh hơn.</li>
<li>Để chai nước hoa cách vị trí cần dùng nước hoa trong khoảng 15-20cm và xịt mạnh, dứt khoát để mật đổ phủ của nước hoa được rộng nhất, tăng độ bám tỏa trên da của bạn.</li>
<li>Phần cổ tay được xịt nước hoa thường có nhiều tác động như lúc rửa tay, đeo vòng, đồng hồ, do đó để đảm bảo mùi hương được duy trì, bạn nên sử dụng nước hoa ở cổ tay ở tần suất nhiều hơn lúc cần thiết.</li>
<li>Nước hoa có thể bám tốt hay không tốt tùy thuộc vào thời gian, không gian, cơ địa, chế độ sinh hoạt, ăn uống của bạn, việc sử dụng một loại nước hoa trong thời gian dài có thể khiến bạn bị quen mùi, dẫn đến hiện tượng không nhận biết được mùi hương. Mang theo nước hoa bên mình hoặc trang bị những mẫu mini tiện dụng để giúp bản thân luôn tự tin mọi lúc mọi nơi.</li>
</ul>
<p>Bảo quản nước hoa:</p>
<ul>
<li>Nước hoa phổ thông (Designer) thường không có hạn sử dụng, ở một số Quốc gia, việc ghi chú hạn sử dụng là điều bắt buộc để hàng hóa được bán ra trên thị trường. Hạn sử dụng ở một số dòng nước hoa được chú thích từ 24 đến 36 tháng, và tính từ ngày bạn mở sản phẩm và sử dụng lần đầu tiên.</li>
<li>Nước hoa là tổng hợp của nhiều thành phần hương liệu tự nhiên và tổng hợp, nên bảo quản nước hoa ở những nơi khô thoáng, mát mẻ, tránh nắng, nóng hoặc quá lạnh, lưu ý không để nước hoa trong cốp xe, những nơi có nhiệt độ nóng lạnh thất thường...</li>
</ul>', N'Chi tiết sản phẩm', N'Sử dụng và bảo quản', N'Afnan')
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (5, NULL, N'Nước hoa được nhiều người sử dụng', CAST(N'2023-03-05T00:00:00.000' AS DateTime), NULL, N'Cách sử dụng được Duy Tung đề xuất dành cho bạn:
<ul>
<li>Nước hoa mang lại mùi hương cho cơ thể bạn thông qua việc tiếp xúc lên da và phản ứng với hơi ấm trên cơ thể của bạn. Việc được tiếp xúc với các bộ phận như cổ tay, khuỷu tay, sau tai, gáy, cổ trước là những vị trí được ưu tiên hàng đầu trong việc sử dụng nước hoa bởi sự kín đáo và thuận lợi trong việc tỏa mùi hương.</li>
<li>Sau khi sử dụng, xịt nước hoa lên cơ thể, tránh dùng tay chà xát hoặc làm khô da bằng những vật dụng khác, điều này phá vỡ các tầng hương trong nước hoa, khiến nó có thể thay đổi mùi hương hoặc bay mùi nhanh hơn.</li>
<li>Để chai nước hoa cách vị trí cần dùng nước hoa trong khoảng 15-20cm và xịt mạnh, dứt khoát để mật đổ phủ của nước hoa được rộng nhất, tăng độ bám tỏa trên da của bạn.</li>
<li>Phần cổ tay được xịt nước hoa thường có nhiều tác động như lúc rửa tay, đeo vòng, đồng hồ, do đó để đảm bảo mùi hương được duy trì, bạn nên sử dụng nước hoa ở cổ tay ở tần suất nhiều hơn lúc cần thiết.</li>
<li>Nước hoa có thể bám tốt hay không tốt tùy thuộc vào thời gian, không gian, cơ địa, chế độ sinh hoạt, ăn uống của bạn, việc sử dụng một loại nước hoa trong thời gian dài có thể khiến bạn bị quen mùi, dẫn đến hiện tượng không nhận biết được mùi hương. Mang theo nước hoa bên mình hoặc trang bị những mẫu mini tiện dụng để giúp bản thân luôn tự tin mọi lúc mọi nơi.</li>
</ul>
<p>Bảo quản nước hoa:</p>
<ul>
<li>Nước hoa phổ thông (Designer) thường không có hạn sử dụng, ở một số Quốc gia, việc ghi chú hạn sử dụng là điều bắt buộc để hàng hóa được bán ra trên thị trường. Hạn sử dụng ở một số dòng nước hoa được chú thích từ 24 đến 36 tháng, và tính từ ngày bạn mở sản phẩm và sử dụng lần đầu tiên.</li>
<li>Nước hoa là tổng hợp của nhiều thành phần hương liệu tự nhiên và tổng hợp, nên bảo quản nước hoa ở những nơi khô thoáng, mát mẻ, tránh nắng, nóng hoặc quá lạnh, lưu ý không để nước hoa trong cốp xe, những nơi có nhiệt độ nóng lạnh thất thường...</li>
</ul>', N'Chi tiết sản phẩm', N'Sử dụng và bảo quản', NULL)
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (6, N'Nước hoa là một vũ khí để tăng thêm sự quyến rũ cũng như tạo nên cá tính của bạn. Mùi hương lưu lại trên da luôn kích thích hệ thống khứu giác của người đối diện. Nhưng làm thế nào để nước hoa lưu giữ hương thơm bền lâu và tránh phải xịt đi xịt lại nhiều lần?  Những bí quyết dưới đây sẽ giúp ích cho bạn.

<p>Trên mái tóc</p>

Bất ngờ không các bạn? Nhưng thật sự nó là vậy, tóc là địa điểm ít được biết đến nhưng lại là một trong những nơi tuyệt nhất để xịt nước hoa. Lý do là, sợi tóc sẽ giữ mùi thơm của nước hoa trong một thời gian dài hơn nhiều so với trên da. Các bạn có thể xịt lên chiếc lược rồi chải đầu và để cho nước hoa thấm vào từng sợi tóc.
<p>Cổ</p>
Vùng xung quanh cổ lúc nào cũng giữ hơi ấm hơn những vùng cơ thể khác. Lúc đó, khi các bạn xịt nước hoa lên, hương thơm sẽ được lưu lại lâu hơn. Cổ của các bạn cũng là nơi dễ dàng tiếp cận gần với các chị em, như trong thang máy hay các quán ăn. Điều này sẽ giúp các bạn tự tin hẳn khi nhìn mọi người xung quanh.

<p>Bên trong khuỷu tay</p>

Dành cho những bạn vừa đẹp trai vừa thích thơm nguyên ngày đây. Phần da phía trong khuỷu tay nằm gần với tĩnh mạch, nên hương thơm ở đây được giữ lâu hơn hẳn. Còn chần chờ gì nữa các chàng trai! Xịt vào khuỷu tay nào.

<p>Ngực</p>', N'Bí quyết giúp nước hoa giữ mùi lâu hơn trên da.', CAST(N'2023-03-13T00:00:00.000' AS DateTime), N'biquyet.jpg', N'Các bạn không cần phải có một bộ ngực vạm vỡ như Phạm văn Mách mới được xịt vào đây nhé. Tất cả những gì các bạn cần là một bình nước hoa, một bộ ngực và một cánh tay để có thể cầm chai nước hoa xịt vào thôi, đem đến các bạn một cơ thể thơm tho ngon lành không cưỡng lại được.

<p>Phía trên vành tai</p>

Một trong những bí quyết giữ hương thơm lâu đó là “da nhờn”. Phần trên vành tai của đàn ông luôn có một lượng nhờn vừa đủ cho hương thơm được lưu trên đó lâu. Xịt thẳng vào, nhưng nếu được hãy thoa kem dưỡng ẩm trước khi xịt, sẽ giúp nhiều cho da nhờn luôn sạch thoáng.

<p>Cổ tay</p>

Các bạn chắc biết chỗ này rồi. Cổ tay là một nơi rất quen thuộc dành cho các chàng khi xịt nước hoa khi ra đường. Điều đặc biệt là nhờ các mạch máu gần với da. Khi máu chạy ngang qua, da sẽ tạo nên nhiệt giúp giữ hương lâu hơn. Thêm vào đó, xịt nước hoa ở cổ tay giúp tăng thêm độ thơm của nước hoa

<p>Quần áo</p>

Mọi người thường chỉ quan tâm xịt nước hoa lên da, nhưng có một nơi ít ai để ý là quần áo. Các sợi vải cũng có thể giúp giữ hương thơm rất lâu. Nhưng hãy nhớ là đừng xịt hết toàn bộ bồ đồ, chỉ một vài nơi như bụng hay lưng thôi.

<p>Mỗi loại nước hoa thì có mức độ phân tán khác nhau. Mùi hương dịu nhẹ của họ cam quýt chứa các phân tử dễ bay hơi hơn. Còn mùi hương nặng sẽ nán lại trên da của bạn lâu hơn như tuyết tùng, hoắc hương, hỗ phác. Vì thế, hãy chú ý đến những lời ghi chú trên vỏ hộp hay chai nước hoa nhé.</p>

Bạn cần chú ý: Nồng độ của mùi hương còn quan trọng hơn hương thơm của nó. Nồng độ nước hoa được xếp loại từ eau de toilettes với 5% tinh dầu, tới Extrait de Parfums với 40%. Nồng độ càng cao thì mùi nước hoa càng nặng. “Bạn chỉ cần xịt một lượng nhỏ và nó có thể lưu lại trên da suốt 12 giờ liền”.', N'Những vị trí giúp lưu mùi hương lâu hơn ', NULL, N'Bí quyết')
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (7, N'<ul>Việc chọn lựa và sử dụng nước hoa phù hợp với từng loại da là rất quan trọng để đảm bảo bạn có thể tận dụng được hết công dụng của sản phẩm mà không gây ra tác hại cho làn da. Dưới đây là một số lời khuyên giúp cho việc chọn lựa nước hoa:

<li>Cho da khô: Nếu bạn có làn da khô, tốt nhất nên chọn nước hoa có chứa tinh dầu và các thành phần dưỡng ẩm để giúp da không bị khô và mất nước. Ngoài ra, bạn cũng nên chọn loại nước hoa Eau de Parfum hoặc Eau de Toilette có hương thơm nhẹ nhàng để không làm da bị kích ứng.</li>

<li>Cho da nhạy cảm: Nếu bạn có làn da nhạy cảm, tốt nhất nên chọn nước hoa không chứa cồn và các thành phần có tính chất kích thích để tránh gây kích ứng và dị ứng cho da. Nên lưu ý rằng, nước hoa không phải là sản phẩm dành cho da, vì vậy, bạn nên đảm bảo thoa nước hoa vào các vùng da khác như cổ tay, sau tai, thân trên và không thoa trực tiếp lên da mặt của mình.</li>

<li>Cho da dầu: Nếu bạn có làn da dầu, tốt nhất nên chọn nước hoa có chứa các thành phần giúp kiểm soát dầu và giảm thiểu bã nhờn trên da. Bạn cũng nên chọn loại nước hoa Eau de Cologne để giảm thiểu tính nồng độ cao của sản phẩm.</li>

<li>Cho da hỗn hợp: Nếu bạn có làn da hỗn hợp (vừa khô vừa dầu), tốt nhất nên chọn nước hoa có chứa các thành phần dưỡng ẩm để giữ cho da mềm mại và không bị khô. Bạn cũng nên chọn loại nước hoa Eau de Toilette để không làm da bị kích ứng.</li></ul>', N'Cách chọn lựa và sử dụng nước hoa phù hợp với từng loại da.', CAST(N'2023-03-10T00:00:00.000' AS DateTime), N'kichungda.jpg', N'Ngoài ra, khi sử dụng nước hoa, bạn nên đảm bảo không sử dụng quá nhiều sản phẩm. Thoa một chút nước hoa ở những vùng da như cổ tay, sau tai, thân trên để không gây ra hiệu ứng xấu cho toàn bộ cơ thể.', N'Các loại da và cách phân biệt chúng', NULL, N'Nước hoa phù hợp')
INSERT [dbo].[content] ([ID], [Content1], [MainTitle], [PostingTime], [image], [Content2], [title1], [title2], [name1]) VALUES (8, N'Nước hoa là một trong những sản phẩm chăm sóc cá nhân quan trọng nhất, không chỉ giúp khử mùi cơ thể mà còn tăng cường sự tự tin, thu hút sự chú ý và khơi gợi cảm xúc cho người đối diện. Tuy nhiên, nước hoa nam và nước hoa nữ có những khác biệt riêng biệt về tinh chất hương liệu, thiết kế chai và mục đích sử dụng.

<p>Sự khác biệt chính giữa nước hoa nam và nước hoa nữ là tinh chất hương liệu được sử dụng. Nước hoa nam thường có mùi thơm mạnh mẽ, nồng nàn và phong cách khiến người đàn ông cảm thấy tự tin và cuốn hút. Mùi hương của nước hoa nam thường bao gồm các thành phần từ cây cỏ, gỗ, gia vị và các loại tinh dầu khác, tạo nên một hương thơm nam tính và quyến rũ.</p>

Trong khi đó, nước hoa nữ thường có mùi thơm nhẹ nhàng, tinh tế và nữ tính. Mùi hương của nước hoa nữ thường bao gồm các thành phần từ trái cây, hoa cỏ, các loại hoa như hoa hồng, hoa lan và các loại tinh dầu khác, tạo nên một hương thơm nữ tính, quyến rũ và tinh tế.', N'Nước hoa nam vs nước hoa nữ: Sự khác biệt giữa hai loại này là gì?', CAST(N'2023-03-09T00:00:00.000' AS DateTime), N'namnu.jpg', N'<p>Bên cạnh tinh chất hương liệu, thiết kế chai cũng là điểm khác biệt giữa nước hoa nam và nước hoa nữ. Chai nước hoa nam thường được thiết kế kiểu dáng trang trọng, sang trọng và mạnh mẽ. Chai thường dày, vuông và có màu sắc khỏe khoắn, phù hợp với phong cách của các quý ông. Trong khi đó, chai nước hoa nữ thường có thiết kế mềm mại, giản dị, dễ dàng để trong túi xách hay balo. Một số loại nước hoa nữ còn có hình dáng mỏng hơn, thanh lịch hơn với kiểu chai thường dài và sắc sảo.</p>

Tuy nhiên, hiện nay có nhiều loại nước hoa unisex (dành cho cả nam và nữ) được sản xuất và bán trên thị trường, không phân biệt rõ ràng giới tính của người sử dụng. Những loại nước hoa này thường có mùi hương tươi mới, nhẹ nhàng và dễ chịu, phù hợp cho mọi đối tượng sử dụng.

<p>Vậy, khi chọn nước hoa, bạn nên chú ý đến tinh chất hương liệu và phong cách thiết kế của sản phẩm. Ngoài ra, bạn nên chọn một loại nước hoa phù hợp với cá tính và phong cách của mình, giúp tôn lên sự tự tin và quyến rũ của mình. Dù nam hay nữ, nước hoa đều là một sản phẩm không thể thiếu trong bộ sưu tập làm đẹp của mỗi người.</p>
', N'Sự khác biệt về thành phần trong nước hoa nam và nước hoa nữ', NULL, N'Khác biệt ')
GO
SET IDENTITY_INSERT [dbo].[viewer1] ON 

INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (6, N'Nguyen Van A', N'fraynjiken@gmail.com', N'098678678678', N'qeqw sdf d  sdf  xcfd  sd gses er')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (7, N'Nguyen Van A', N'fraynjiken@gmail.com', N'098678678678', N'weqwe sdf sdf s ertert  ew rwer')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (8, N'Nguyen Van A', N'fraynjiken@gmail.com', N'098678678678', N'weqwe sdf sdf s ertert  ew rwer')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (9, N'yuyuityu', N'fraynjiken@gmail.com', N'098678678678', N'asdas asd er  wrew  sd fdx df ')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (10, N'Nguyen Van A', N'fraynjiken@gmail.com', N'098678678678', N'df ng cfg dfg dre std xg gx')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (17, N'Đào Duy Tùng', N'duytung03082002@gmail.com', N'098678678678', N' quang dep trai qua')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (18, N'Đào Duy Tùng', N'duytung03082002@gmail.com', N'0987833235', N'qweqwe asda s qw aer s ẻ')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (19, N'Đào Duy Tùng', N'duytung03082002@gmail.com', N'0987833235', N'qweqwe asda s qw aer s ẻ')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (20, N'Dao Duy Tung', N'duytung03082002@gmail.com', N'0987833235', N'quang dep trai qua')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (22, N'Dao Duy Tan', N'duytung03082002@gmail.com', N'0914323218', N'ok')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (23, N'Dao Duy Tung', N'duytung03082002@gmail.com', N'0914323218', N'werf')
INSERT [dbo].[viewer1] ([id], [Name], [Email], [PhoneNumber], [Message]) VALUES (24, N'mra', N'fraynjiken@gmail.com', N'0987833235', N'ciyciycy')
SET IDENTITY_INSERT [dbo].[viewer1] OFF
GO
