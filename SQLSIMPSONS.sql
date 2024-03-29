USE [db_simpsons]
GO
/****** Object:  User [simpsons]    Script Date: 10/15/2019 2:00:15 PM ******/
CREATE USER [simpsons] FOR LOGIN [simpsons] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [simpsons]
GO
/****** Object:  Table [dbo].[tbl_character]    Script Date: 10/15/2019 2:00:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_character](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](20) NULL,
	[secondName] [varchar](20) NULL,
	[lastName] [varchar](20) NULL,
	[age] [int] NULL,
	[descp] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_character] ON 

INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (1, N'Homero', N'Jay', N'Simpson', 34, N'Papa de Bart, Lisa y Maggie Simpson')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (2, N'Bartolomeo', N'Jay', N'Simpson', 10, N'Hermano de Lisa y Maggie Simpson')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (3, N'March', N'', N'Simpson', 36, N'Mama de Maggie, Lisa y Bart Simpsons')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (4, N'Lisa', N'', N'Simpson', 8, N'Hermana de Bart y Maggie Simpson')
INSERT [dbo].[tbl_character] ([id], [firstName], [secondName], [lastName], [age], [descp]) VALUES (5, N'Bartolomeo', N'Jay', N'Simpson', 2, N'Hermana de Lisa y Bart Simpson')
SET IDENTITY_INSERT [dbo].[tbl_character] OFF
