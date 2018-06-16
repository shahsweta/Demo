USE [Demodb]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 16-06-2018 13:33:53 ******/
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
/****** Object:  Table [dbo].[Login]    Script Date: 16-06-2018 13:33:54 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 16-06-2018 13:33:54 ******/
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
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (1, N'Cate1')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (2, N'Cate2')
INSERT [dbo].[Category] ([CategoryId], [CategoryName]) VALUES (3, N'Cate3')
INSERT [dbo].[Login] ([UserName], [Password], [Email]) VALUES (N'sweta', N'sa        ', N'sweta@gmail.')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [Description], [Image]) VALUES (1, N'Vivo', N'2', N'Mobile', N'111.png')
INSERT [dbo].[Product] ([ProductId], [ProductName], [CategoryId], [Description], [Image]) VALUES (2, N'Motorola', N'2', N'Mobile', N'shofu-Banner-Image.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  StoredProcedure [dbo].[AllCategory]    Script Date: 16-06-2018 13:33:54 ******/
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
/****** Object:  StoredProcedure [dbo].[AllProduct]    Script Date: 16-06-2018 13:33:54 ******/
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
/****** Object:  StoredProcedure [dbo].[DelProduct]    Script Date: 16-06-2018 13:33:54 ******/
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
@ProdctId int  
)  
AS  
BEGIN  


BEGIN  
DELETE FROM Product WHERE ProductId = @ProdctId  
END  


end  
GO
/****** Object:  StoredProcedure [dbo].[ProductById]    Script Date: 16-06-2018 13:33:54 ******/
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
@ProdctId int

)  
AS  
BEGIN  



BEGIN  
select Product.ProductId,Product.ProductName,Product.Image,Product.Description,Category.CategoryName from Product  INNER JOIN Category on Product.CategoryId=Category.CategoryId
 where ProductId=@ProdctId
END  


end
GO
/****** Object:  StoredProcedure [dbo].[Up_Product]    Script Date: 16-06-2018 13:33:54 ******/
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
@ProdctId int,  
@ProductName VARCHAR(max),  
@CategoryId varchar(max),
@Description VARCHAR(max),  
@Image varchar(max)

)  
AS  
BEGIN  



BEGIN  
UPDATE Product SET  
ProductName=@ProductName,CategoryId=@CategoryId,Description=@Description,Image=@Image  WHERE ProductId = @ProdctId  
END  


end  
GO
/****** Object:  StoredProcedure [dbo].[usp_Product]    Script Date: 16-06-2018 13:33:54 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Users]    Script Date: 16-06-2018 13:33:54 ******/
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
