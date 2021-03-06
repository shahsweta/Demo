USE [Demodb]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] NOT NULL,
	[CategoryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](max) NULL,
	[JoiningDate] [date] NULL,
	[Designation] [varchar](max) NULL,
	[Gender] [nchar](10) NULL,
	[Details] [varchar](max) NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nchar](10) NOT NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[CategoryId] [varchar](max) NOT NULL,
	[Description] [varchar](max) NULL,
	[Image] [varchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](50) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Cate1')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Cate2')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Cate3')
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (1, N'Ahmedabad', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (2, N'Amreli', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (3, N'Anand', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (4, N'Aravali', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (5, N'Banaskantha', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (6, N'Bharuch', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (7, N'Bhavnagar', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (8, N'Botad', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (9, N'Chhota Udaipur', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (10, N'Devbhoomi Dwarka', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (11, N'Dohad', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (12, N'Gandhinagar', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (13, N'Gir Somnath', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (14, N'Jamnagar', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (15, N'Junagadh', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (16, N'Kachchh', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (17, N'Kheda', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (18, N'Mahisagar', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (19, N'Mehsana', 12, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (20, N'Mumbai', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (21, N'Pune', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (22, N'Nagpur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (23, N'Nashik', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (24, N'Thane', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (25, N'Aurangabad', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (26, N'Solapur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (27, N'Thane', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (28, N'Amravati', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (29, N'Nashik', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (30, N'Kolhapur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (31, N'Nanded', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (32, N'Sangli', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (33, N'Jalgaon', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (34, N'Akola', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (35, N'Latur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (36, N'Ahmednagar', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (37, N'Dhule', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (38, N'Kolhapur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (39, N'Chandrapur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (40, N'Parbhani', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (41, N'Jalna', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (42, N'Jalgaon', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (43, N'Panvel', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (44, N'Panvel', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (45, N'Satara', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (46, N'Beed', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (47, N'Yavatmal', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (48, N'Nagpur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (49, N'Gondia', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (50, N'Solapur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (51, N'Amravati', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (52, N'Osmanabad', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (53, N'Nandurbar', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (54, N'Wardha', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (55, N'Latur', 21, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (56, N'Visakhapatnam[a]', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (57, N'Vijayawada', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (58, N'Guntur', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (59, N'Nellore', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (60, N'Kurnool', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (61, N'Rajamundry', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (62, N'Tirupati', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (63, N'Kakinada', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (64, N'Kadapa', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (65, N'Anantapur', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (66, N'Eluru', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (67, N'Vizianagaram', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (68, N'Ongole', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (69, N'Nandyal', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (70, N'Machilipatnam', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (71, N'Adoni', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (72, N'Tenali', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (73, N'Proddatur', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (74, N'Chittoor', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (75, N'Hindupur', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (76, N'Bhimavaram', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (77, N'Madanapalle', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (78, N'Guntakal', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (79, N'Srikakulam', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (80, N'Dharmavaram', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (81, N'Gudivada', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (82, N'Narasaraopet', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (83, N'Tadipatri', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (84, N'Tadepalligudem', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (85, N'Chilakaluripet', 2, 128)
INSERT [dbo].[City] ([CityId], [CityName], [StateId], [CountryId]) VALUES (86, N'Amaravati ‡', 2, 128)
SET IDENTITY_INSERT [dbo].[City] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (1, N'Zimbabwe')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (2, N'Zambia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (3, N'Yemen')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (4, N'Vietnam')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (5, N'Venezuela')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (6, N'Vatican City')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (7, N'Vanuatu')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (8, N'Uzbekistan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (9, N'Uruguay')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (10, N'United States')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (11, N'United Kingdom')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (12, N'United Arab Emirates')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (13, N'Ukraine')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (14, N'Uganda')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (15, N'Tuvalu')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (16, N'Turkmenistan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (17, N'Turkey')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (18, N'Tunisia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (19, N'Trinidad and Tobago')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (20, N'Tonga')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (21, N'Togo')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (22, N'Timor-Leste / East Timor')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (23, N'Thailand')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (24, N'Tanzania')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (25, N'Tajikistan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (26, N'Taiwan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (27, N'SÃ£o TomÃ© and PrÃ­ncipe')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (28, N'Syria')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (29, N'Switzerland')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (30, N'Sweden')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (31, N'Swaziland')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (32, N'Suriname')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (33, N'Sudan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (34, N'Sri Lanka')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (35, N'Spain')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (36, N'South Ossetia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (37, N'South Africa')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (38, N'Somaliland')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (39, N'Somalia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (40, N'Solomon Islands')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (41, N'Slovenia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (42, N'Slovakia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (43, N'Singapore')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (44, N'Sierra Leone')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (45, N'Seychelles')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (46, N'Serbia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (47, N'Senegal')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (48, N'Saudi Arabia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (49, N'San Marino')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (50, N'Samoa')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (51, N'Saint Vincent and the Grenadines')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (52, N'Saint Lucia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (53, N'Saint Kitts and Nevis')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (54, N'Sahrawi Arab Democratic Republic')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (55, N'Rwanda')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (56, N'Russia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (57, N'Romania')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (58, N'Qatar')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (59, N'Portugal')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (60, N'Poland')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (61, N'Philippines')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (62, N'Peru')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (63, N'Paraguay')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (64, N'Papua New Guinea')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (65, N'Panama')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (66, N'Palestine')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (67, N'Palau')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (68, N'Pakistan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (69, N'Oman')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (70, N'Norway')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (71, N'Northern Cyprus')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (72, N'Niue')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (73, N'Nigeria')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (74, N'Niger')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (75, N'Nicaragua')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (76, N'New Zealand')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (77, N'Netherlands')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (78, N'Nepal')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (79, N'Nauru')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (80, N'Namibia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (81, N'Nagorno-Karabakh')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (82, N'Myanmar / Burma')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (83, N'Mozambique')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (84, N'Morocco')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (85, N'Montenegro')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (86, N'Mongolia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (87, N'Monaco')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (88, N'Moldova')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (89, N'Micronesia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (90, N'Mexico')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (91, N'Mauritius')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (92, N'Mauritania')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (93, N'Marshall Islands')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (94, N'Malta')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (95, N'Mali')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (96, N'Maldives')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (97, N'Malaysia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (98, N'Malawi')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (99, N'Madagascar')
GO
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (100, N'Macedonia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (101, N'Luxembourg')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (102, N'Lithuania')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (103, N'Liechtenstein')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (104, N'Libya')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (105, N'Liberia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (106, N'Lesotho')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (107, N'Lebanon')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (108, N'Latvia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (109, N'Laos')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (110, N'Kyrgyzstan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (111, N'Kuwait')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (112, N'Kosovo')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (113, N'Korea, South')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (114, N'Korea, North')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (115, N'Kiribati')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (116, N'Kenya')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (117, N'Kazakhstan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (118, N'Jordan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (119, N'Japan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (120, N'Jamaica')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (121, N'Ivory Coast')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (122, N'Italy')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (123, N'Israel')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (124, N'Ireland')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (125, N'Iraq')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (126, N'Iran')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (127, N'Indonesia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (128, N'India')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (129, N'Iceland')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (130, N'Hungary')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (131, N'Honduras')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (132, N'Haiti')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (133, N'Guyana')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (134, N'Guinea-Bissau')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (135, N'Guinea')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (136, N'Guatemala')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (137, N'Grenada')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (138, N'Greece')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (139, N'Ghana')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (140, N'Germany')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (141, N'Georgia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (142, N'Gambia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (143, N'Gabon')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (144, N'France')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (145, N'Finland')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (146, N'Fiji')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (147, N'Ethiopia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (148, N'Estonia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (149, N'Eritrea')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (150, N'Equatorial Guinea')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (151, N'El Salvador')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (152, N'Egypt')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (153, N'Ecuador')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (154, N'East Timor')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (155, N'Dominican Republic')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (156, N'Dominica')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (157, N'Djibouti')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (158, N'Denmark')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (159, N'CÃ´te d''Ivoire')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (160, N'Czech Republic')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (161, N'Cyprus')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (162, N'Cuba')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (163, N'Croatia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (164, N'Costa Rica')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (165, N'Cook Islands')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (166, N'Congo')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (167, N'Comoros')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (168, N'Colombia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (169, N'China')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (170, N'Chile')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (171, N'Chad')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (172, N'Central African Republic')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (173, N'Cape Verde')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (174, N'Canada')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (175, N'Cameroon')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (176, N'Cambodia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (177, N'Burundi')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (178, N'Burma')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (179, N'Burkina Faso')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (180, N'Bulgaria')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (181, N'Brunei')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (182, N'Brazil')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (183, N'Botswana')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (184, N'Bosnia and Herzegovina')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (185, N'Bolivia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (186, N'Bhutan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (187, N'Benin')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (188, N'Belize')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (189, N'Belgium')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (190, N'Belarus')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (191, N'Barbados')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (192, N'Bangladesh')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (193, N'Bahrain')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (194, N'Bahamas')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (195, N'Azerbaijan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (196, N'Austria')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (197, N'Australia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (198, N'Armenia')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (199, N'Argentina')
GO
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (200, N'Antigua and Barbuda')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (201, N'Angola')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (202, N'Andorra')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (203, N'Algeria')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (204, N'Albania')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (205, N'Afghanistan')
INSERT [dbo].[Country] ([CountryId], [CountryName]) VALUES (206, N'Abkhazia')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (1, N'hfdh', CAST(N'2018-07-05' AS Date), N'dsg', N'          ', N'Female', 1, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (2, N'hfdh', CAST(N'2018-07-06' AS Date), N'xbcb', N'          ', N'Female', 1, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (3, N'hfdh', CAST(N'2018-07-06' AS Date), N'farqwe', N'1         ', N'Male', 1, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (4, N'hfdh', CAST(N'2018-07-06' AS Date), N'farqwe', N'          ', N'Female', 1, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (5, N'new', CAST(N'2018-07-03' AS Date), N'', N'1         ', N'Male', 12, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (6, N'hfdh', CAST(N'2018-07-02' AS Date), N'', N'Male      ', N'jg', 2, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (7, N'kghy', CAST(N'2018-07-12' AS Date), N'uteute', N'Male      ', N'ut', 19, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (8, N'ewrt', CAST(N'2018-07-06' AS Date), N'wet', N'Female    ', N'wert', 62, 2, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (9, N'ewrt', CAST(N'2018-07-06' AS Date), N'wet', N'Female    ', N'wert', 62, 2, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (10, N'cvn', CAST(N'2018-07-06' AS Date), N'fgse', N'Female    ', N'j;liu', 16, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (11, N'cvn', CAST(N'2018-07-06' AS Date), N'fgse', N'Male      ', N'j;liu', 16, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (12, N'cvn', CAST(N'2018-07-11' AS Date), N'tet', N'Male      ', N'treqt', 17, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (13, N'cvn', CAST(N'2018-07-11' AS Date), N'tet', N'Male      ', N'treqt', 17, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (14, N'cvn', CAST(N'2018-07-06' AS Date), N'', N'Female    ', N'hsfdh', 9, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (15, N'123', CAST(N'2018-07-12' AS Date), N'q', N'Male      ', N'e', 3, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (16, N'dg', CAST(N'2018-07-05' AS Date), N'we', N'Male      ', N'twe', 8, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (17, N'y4y', CAST(N'2018-07-13' AS Date), N'rw', N'Male      ', N'wery', 17, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (18, N'132', CAST(N'2018-07-04' AS Date), N'dad', N'Female    ', N'zc', 18, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (19, N'132', CAST(N'2018-07-04' AS Date), N'dad', N'Female    ', N'zc', 18, 12, 128)
INSERT [dbo].[Employee] ([EmployeeId], [EmployeeName], [JoiningDate], [Designation], [Gender], [Details], [CityId], [StateId], [CountryId]) VALUES (20, N'ghseg', CAST(N'2018-07-07' AS Date), N'gds', N'Female    ', N'dgds', 58, 2, 128)
SET IDENTITY_INSERT [dbo].[Employee] OFF
INSERT [dbo].[Login] ([UserName], [Password], [Email]) VALUES (N'sweta', N'sa        ', N'sweta@gmail.')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [Description], [Image]) VALUES (20, N'Vivo', N'1', N'rqwr', N'111.png')
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [Description], [Image]) VALUES (21, N'yryry', N'1', N'Mobile', N'Clearance Expire Date.png')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (1, N' Andaman and Nicobar Islands', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (2, N' Andhra Pradesh', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (3, N'Arunachal Pradesh', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (4, N' Assam', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (5, N' Bihar', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (6, N' Chandigarh', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (7, N' Chhattisgarh', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (8, N' Dadra and Nagar Haveli', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (9, N' Daman and Diu', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (10, N' Delhi', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (11, N' Goa', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (12, N' Gujarat', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (13, N' Haryana', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (14, N' Himachal Pradesh', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (15, N' Jammu and Kashmir', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (16, N' Jharkhand', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (17, N' Karnataka', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (18, N' Kerala', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (19, N' Lakshadweep', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (20, N' Madhya Pradesh', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (21, N' Maharashtra', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (22, N' Manipur', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (23, N' Meghalaya', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (24, N' Mizoram', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (25, N' Nagaland', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (26, N' Odisha', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (27, N' Puducherry', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (28, N' Punjab', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (29, N' Rajasthan', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (30, N'Sikkim', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (31, N'Tamil Nadu', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (32, N' Tripura', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (33, N' Uttar Pradesh', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (34, N' Uttarakhand', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (35, N' West Bengal', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (36, N'Alabama,AL', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (37, N'Alaska,AK', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (38, N'Arizona,AZ', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (39, N'Arkansas,AR', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (40, N'California,CA', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (41, N'Colorado,CO', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (42, N'Connecticut,CT', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (43, N'Delaware,DE', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (44, N'Florida,FL', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (45, N'Georgia,GA', 128)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (46, N'Hawaii,HI', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (47, N'Idaho,ID', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (48, N'Illinois,IL', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (49, N'Indiana,IN', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (50, N'Iowa,IA', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (51, N'Kansas,KS', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (52, N'Kentucky,KY', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (53, N'Louisiana,LA', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (54, N'Maine,ME', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (55, N'Maryland,MD', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (56, N'Massachusetts,MA', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (57, N'Michigan,MI', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (58, N'Minnesota,MN', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (59, N'Mississippi,MS', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (60, N'Missouri,MO', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (61, N'Montana,MT', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (62, N'Nebraska,NE', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (63, N'Nevada,NV', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (64, N'New Hampshire,NH', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (65, N'New Jersey,NJ', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (66, N'New Mexico,NM', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (67, N'New York,NY', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (68, N'North Carolina,NC', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (69, N'North Dakota,ND', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (70, N'Ohio,OH', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (71, N'Oklahoma,OK', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (72, N'Oregon,OR', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (73, N'Pennsylvania,PA', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (74, N'Rhode Island,RI', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (75, N'South Carolina,SC', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (76, N'South Dakota,SD', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (77, N'Tennessee,TN', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (78, N'Texas,TX', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (79, N'Utah,UT', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (80, N'Vermont,VT', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (81, N'Virginia,VA', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (82, N'Washington,WA', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (83, N'West Virginia,WV', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (84, N'Wisconsin,WI', 10)
INSERT [dbo].[State] ([StateId], [StateName], [CountryId]) VALUES (85, N'Wyoming,WY', 10)
SET IDENTITY_INSERT [dbo].[State] OFF
/****** Object:  StoredProcedure [dbo].[Add_Employee]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Add_Employee]
	-- Add the parameters for the stored procedure here
(
@EmployeeName VARCHAR(max)='',  
@JoiningDate nvarchar(20)='',
@Designation VARCHAR(max)='',  
@Gender nchar(10)='',
@Details VARCHAR(max)='',
@CityId	int=0,
@StateId	int=0,
@CountryId	int=0
)  
AS  


BEGIN  
insert into Employee(EmployeeName,JoiningDate,Designation,Gender,Details,CityId,StateId,CountryId) values(@EmployeeName,@JoiningDate,@Designation,@Gender,@Details,@CityId,@StateId,@CountryId)  
  
select @@IDENTITY
End

  
GO
/****** Object:  StoredProcedure [dbo].[AllCategory]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AllCategory]	-- Add the parameters for the stored procedure here
	
AS  
BEGIN  


 
select * from Category  




end  
GO
/****** Object:  StoredProcedure [dbo].[AllCity]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AllCity]	-- Add the parameters for the stored procedure here
@StateId int
AS  
BEGIN  

select City.CityId,City.CityName,City.StateId from City where City.StateId=@StateId







end  
GO
/****** Object:  StoredProcedure [dbo].[AllCountry]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[AllCountry]	-- Add the parameters for the stored procedure here
	
AS  
BEGIN  
select Country.CountryId, Country.CountryName from Country 

end  
GO
/****** Object:  StoredProcedure [dbo].[AllEmployee]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AllEmployee]

AS  
BEGIN  


BEGIN  
select Employee.EmployeeId, Employee.EmployeeName,Employee.JoiningDate,Employee.Designation,Employee.Gender,City.CityName,State.StateName,Country.CountryName, Employee.Details from Employee 
inner join city on  Employee.CityId=City.CityId
inner join State on Employee.StateId=State.StateId
inner join Country on Employee.CountryId=Country.CountryId
END  



end  
GO
/****** Object:  StoredProcedure [dbo].[AllProduct]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AllProduct]

AS  
BEGIN  


BEGIN  
select Product.ProductId,Product.ProductName,Product.Image,Product.Description,Category.CategoryName from Product  INNER JOIN Category on Product.CategoryId=Category.CategoryId
END  



end  
GO
/****** Object:  StoredProcedure [dbo].[AllState]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AllState]	-- Add the parameters for the stored procedure here

(
@CountryId int
)
AS  
BEGIN  
 
select State.StateId,State.StateName,State.CountryId  from State where State.CountryId=@CountryId


end  
GO
/****** Object:  StoredProcedure [dbo].[DelProduct]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DelProduct]
(  
@ProductId int  
)  
AS  
BEGIN  


DELETE FROM Product WHERE ProductId = @ProductId  
select @@ROWCOUNT


end  
GO
/****** Object:  StoredProcedure [dbo].[ProductById]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductById]
	(  
@ProductId int

)  
AS  
BEGIN  



BEGIN  
select Product.ProductId,Product.ProductName,Product.Image,Product.Description,Category.CategoryId from Product  INNER JOIN Category on Product.CategoryId=Category.CategoryId
 where ProductId=@ProductId
END  


end
GO
/****** Object:  StoredProcedure [dbo].[Up_Product]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Up_Product]
(  
@ProductId int,  
@ProductName VARCHAR(max),  
@CategoryId varchar(max),
@Description VARCHAR(max),  
@Image varchar(max)

)  
AS  
BEGIN  



BEGIN  
UPDATE Product SET  
ProductName=@ProductName,CategoryId=@CategoryId,Description=@Description,Image=@Image  WHERE ProductId = @ProductId  
END  

select @@ROWCOUNT
end  
GO
/****** Object:  StoredProcedure [dbo].[usp_Product]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Product]
	-- Add the parameters for the stored procedure here
(
@ProductName VARCHAR(max)='',  
@CategoryId nvarchar(max)='',
@Description VARCHAR(max)='',  
@Image varchar(max)=''
)  
AS  


BEGIN  
insert into Product(ProductName,CategoryId,Description,Image) values(@ProductName,@CategoryId,@Description,@Image)  
  
select @@IDENTITY
End

  
GO
/****** Object:  StoredProcedure [dbo].[usp_Users]    Script Date: 7/6/2018 1:10:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
create Procedure [dbo].[usp_Users] 
	@UserName varchar(50),
	@Password varchar(10),
	@Email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [UserName], [Password],[Email] from Login 
		where [UserName]=@UserName and [Password]=@Password and [Email]=@Email
END
GO
