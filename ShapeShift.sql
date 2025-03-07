USE [ShapeShift]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08.05.2024 17:41:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BmiResult]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BmiResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CalculationDate] [datetime] NULL,
	[Result] [decimal](10, 3) NULL,
	[UserName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactMessage]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Name] [nvarchar](150) NULL,
	[E-mail] [nvarchar](150) NULL,
	[Topic] [nvarchar](150) NULL,
	[Message] [nvarchar](350) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exercises]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exercises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IntensityLevel] [nvarchar](50) NULL,
	[DurationMinutes] [int] NULL,
	[Location] [nvarchar](50) NULL,
	[Goals] [nvarchar](50) NULL,
	[DifficultyLevel] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodProducts]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Protein] [decimal](5, 2) NOT NULL,
	[Fats] [decimal](5, 2) NOT NULL,
	[Carbohydrates] [decimal](5, 2) NOT NULL,
	[Calories(100g)] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meals]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Protein] [decimal](4, 1) NOT NULL,
	[Fats] [decimal](4, 1) NOT NULL,
	[Carbohydrates] [decimal](4, 1) NOT NULL,
	[Calories] [int] NOT NULL,
	[MealType] [nvarchar](50) NOT NULL,
	[Goals] [nvarchar](50) NULL,
	[Allergy] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[FoodType] [nvarchar](50) NULL,
	[ProductType] [nvarchar](50) NULL,
	[RegionTypeFood] [nvarchar](50) NULL,
	[ExcludedProducts] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PossibleAnswersDiet]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PossibleAnswersDiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerOption] [char](1) NULL,
	[AnswerText] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PossibleAnswersExercises]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PossibleAnswersExercises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[AnswerOption] [char](1) NULL,
	[AnswerText] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Price]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Price] [decimal](10, 2) NULL,
	[Message] [nvarchar](150) NULL,
	[UserName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionDiet]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionDiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionText] [nvarchar](500) NULL,
	[Category] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionExercises]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionExercises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionText] [nvarchar](500) NULL,
	[Category] [nvarchar](250) NULL,
	[DateCreated] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MealId] [int] NOT NULL,
	[RecipeText] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAnswersDiet]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAnswersDiet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[ChosenAnswerId] [int] NOT NULL,
	[DateAnswered] [datetime] NULL,
	[UserName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAnswersDietCalories]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAnswersDietCalories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Answer] [int] NOT NULL,
	[DateAnswered] [datetime] NULL,
	[UserName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAnswersExercises]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAnswersExercises](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[ChosenAnswerId] [int] NOT NULL,
	[DateAnswered] [datetime] NULL,
	[UserName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCaloriesNeeded]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCaloriesNeeded](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewCaloriesDate] [datetime] NULL,
	[CaloriesNeededResult] [decimal](10, 2) NULL,
	[UserName] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCaloriesResult]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCaloriesResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NewCaloriesDate] [datetime] NULL,
	[ProductId] [int] NULL,
	[Calories] [decimal](10, 2) NULL,
	[UserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserCaloriesResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserChatMessages]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserChatMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MessageText] [nvarchar](max) NOT NULL,
	[Date] [datetime] NULL,
	[UserName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserExerciseSets]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserExerciseSets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[ExerciseSetId] [int] NOT NULL,
	[DateAssigned] [datetime] NOT NULL,
	[TrainingDay] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMealSets]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMealSets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](150) NOT NULL,
	[BreakfastId] [int] NULL,
	[LunchId] [int] NULL,
	[DinnerId] [int] NULL,
	[MealDay] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weight]    Script Date: 08.05.2024 17:41:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weight](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WeightDate] [datetime] NULL,
	[UserWeight] [decimal](10, 2) NULL,
	[GoalWeight] [decimal](10, 2) NULL,
	[UserName] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'7.0.15')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'04abbb61-d676-4834-be27-3be481cd1447', N'emil123@gmail.com', N'EMIL123@GMAIL.COM', N'emil123@gmail.com', N'EMIL123@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEICHfPq7JAd+2/zJ0wTuQa/NYTQMeiv53LtC/K3U/h7BF+PfzPLsIsWL48yL4ICPqQ==', N'KQR7S5J5P5ERTVWGFTMTC5576VLELGN3', N'e0a0277b-811b-4ba8-b02e-8808ca17e1fe', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1fe42030-cc0b-4649-9919-9724a7760482', N'untus1@wp.pl', N'UNTUS1@WP.PL', N'untus1@wp.pl', N'UNTUS1@WP.PL', 1, N'AQAAAAIAAYagAAAAENLK+oSj6t7SKLX+1d4lE7EitcfuT/kz6bT2jfvDRVEvEoFf5nJkYAFlzXeUufbyNg==', N'G62HS3HDQFJBMVM6IAOM4WJTN4PPC7SC', N'9a183121-cd64-4530-9f52-0325cf1c1061', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'251210d5-4413-45a0-b8ad-7331cfa95a99', N'gfs@wp.pl', N'GFS@WP.PL', N'gfs@wp.pl', N'GFS@WP.PL', 1, N'AQAAAAIAAYagAAAAEAwdX43LGwizdVuImJBgpYTAS8xIr6DHRm/1cTFoo+lDxUSK0YEq1PusqG3hj8qs/A==', N'ETV5VNY7O25EMIB6YCMI3C472F65MUKO', N'e27fde5f-3739-4106-9baa-80e05f86615a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2a0904f4-cfb4-42b6-b88d-ab1875409e9f', N'123@wp.pl', N'123@WP.PL', N'123@wp.pl', N'123@WP.PL', 1, N'AQAAAAIAAYagAAAAEEq+JPMCe0hC6O21sNh/3QxWTVQewD8rnelJabhRdIOWm7ktlE7y1r/4McqJvW1/KA==', N'J4EWYTGTGQP4ZJR65HMFCNXD5N4WVQSK', N'dd3eae23-5ac1-4a06-a443-deccac1530e2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2bdd3100-54e9-46a3-beb0-53363bbe1503', N'jgh@wp.pl', N'JGH@WP.PL', N'jgh@wp.pl', N'JGH@WP.PL', 1, N'AQAAAAIAAYagAAAAELdjyrdxiRJEja5y5OSunHDalpqddbfJzPhwuLi6CHnMkj9+hayJWyqFiu1puOnJxw==', N'GQOP4PEO6USQM2IKLHGOE2ACNQTR5YGL', N'4991ac91-55a4-496e-8b10-af425821b4e8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3ea41d9b-0f5a-4ff5-80f1-64885c521783', N'dwa@wp.pl', N'DWA@WP.PL', N'dwa@wp.pl', N'DWA@WP.PL', 1, N'AQAAAAIAAYagAAAAELYl59pxKdiRjembSB0/S7dUP6EXXd6EbsBqwwPZVzAPX/XngNd3ixCiKtjkZC/5/w==', N'FCCYLNECI5OUBWGYPSMBZZIG5CZTVK2J', N'aa54f309-c4bb-4d3b-a00e-2cf749c77444', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'462e8306-f84e-4188-8a96-36558af56d3b', N'test1@wp.pl', N'TEST1@WP.PL', N'test1@wp.pl', N'TEST1@WP.PL', 1, N'AQAAAAIAAYagAAAAEK00+hTN9qlu7oC8qGiiozhufz2mVf55zOeX5aLPKT3isBCraakgWmBNfLdDw4WwpQ==', N'JUK344GI7VVAC7VB5UAXQDLOEJ4BIGFP', N'ddca3393-bdda-434b-8d19-9353c79323b6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'627d268a-2e6d-4f53-ba1e-4982898bf619', N'asdasd@wp.pl', N'ASDASD@WP.PL', N'asdasd@wp.pl', N'ASDASD@WP.PL', 0, N'AQAAAAIAAYagAAAAEPF2AtuF/SHqtZ30y2PMrkCkMjvMZSBfC3UM0MG6gutpM/C5HZgib6MAdAaKZaL+Sw==', N'7I7THMJ3F62ZAKGLE3UMNPXI2J372TMU', N'9b9559d3-cbfb-464a-9614-191b4324ca07', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'77d03081-f083-4c15-a54d-0f7559626bc6', N'test123@wp.pl', N'TEST123@WP.PL', N'test123@wp.pl', N'TEST123@WP.PL', 1, N'AQAAAAIAAYagAAAAEBFR5dkTqCCMsn4I0w4owDexCxK7SuwbSi85yKNFi74OVSyhz/XbyWc8Nndz7IPZgg==', N'JTEWWALH43WJSIB73TQFFPRJOUW3TFPI', N'e9a642e5-b9d4-4a13-aaeb-20e46076a8a6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'89293fce-6cbe-4185-96bc-2141ea949876', N'test@wp.pl', N'TEST@WP.PL', N'test@wp.pl', N'TEST@WP.PL', 1, N'AQAAAAIAAYagAAAAEN4OnHT9ujY3uNz5WaHCm13T9ULGA5mXIvh/o8DIFwf1Wypk7nWv22WrdVdMUujWRg==', N'GOVW73S34RGIHJXA2N3B7TX4VWBO7V3J', N'd7ab84e3-dc75-422e-8918-01ea42fd9eac', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'89cebb39-83f9-483f-bb67-3f57ec409f49', N'rty@wp.pl', N'RTY@WP.PL', N'rty@wp.pl', N'RTY@WP.PL', 1, N'AQAAAAIAAYagAAAAEG4Qa/Olm404PgJbmGc9x+lIXwKv4rVRarprwvDYK2nRfGRsHscdzFqGuc5hxJxvow==', N'2UBNA2DHBWP5E64OBVP32LQLKVYCGMQX', N'400dc1b0-82c3-4bd3-8e09-8794043cbdd5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'90e6ee97-34c9-4d04-8fb4-cd1e7dbf0941', N'rtya@wp.pl', N'RTYA@WP.PL', N'rtya@wp.pl', N'RTYA@WP.PL', 1, N'AQAAAAIAAYagAAAAEG70udv6QYmIEaVQJuXFvo07MRb/j4Nx9wgdMLOy2oH14Lf4WTJcdujsXQPmpYXaRg==', N'64HDSEGBSLWI26EGI72EQRKAKXC2KI5Q', N'31c4d852-cf84-4795-8c96-d89e7ad517af', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bc482b1e-1343-47c2-9ec0-f4ccbe954d95', N'test3@wp.pl', N'TEST3@WP.PL', N'test3@wp.pl', N'TEST3@WP.PL', 1, N'AQAAAAIAAYagAAAAELzFfoV++Cl66iOQ4X73ptjzEQv0+Pq6cINwh40NS1tg9TdYFLcS5q9Bga8AmC2jpQ==', N'33RFWXWFO5GER3HKBX5BWI27GH4OSEEX', N'7f8f5e22-f613-410a-bd0b-b1f08df17cff', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bd1c8569-93ed-4cbe-8d2e-8e82e799fd4c', N'abc@wp.pl', N'ABC@WP.PL', N'abc@wp.pl', N'ABC@WP.PL', 1, N'AQAAAAIAAYagAAAAEA7Yi0HvD5tCTaO63kWFXRv86zePL/7KaAvOgIuwzdc+dyzb8f1pPCUR77F4Boj8xw==', N'JSHEWQMJQW6W347WSGSYFOJS62STSNBU', N'0a8e0e33-59f4-4856-abfc-3e434bd2239a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bf749d0f-4140-4c27-9d6e-f82831385030', N'd_garncarek@wp.pl', N'D_GARNCAREK@WP.PL', N'd_garncarek@wp.pl', N'D_GARNCAREK@WP.PL', 1, N'AQAAAAIAAYagAAAAECzOgfhRYUrwqXvVmOt47nSr3JcP7zdyj1DLmZdQwMqYPAETw/lekjtIrG4f7I2IVg==', N'5JTRXLOV32DG5QH6XNZO4YGQWQOLIAVP', N'0bacfcbf-d968-4af1-bd12-44a84510a224', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c230298c-404a-4d4b-962d-88b3ae183e98', N'hjg@wp.pl', N'HJG@WP.PL', N'hjg@wp.pl', N'HJG@WP.PL', 1, N'AQAAAAIAAYagAAAAEHFgcSsKMEq3xpTFCl2Mm2BL7EfeWv1QCPd1drBpDxaZjuKiZDy4U1E8zOVaBWGEGg==', N'F2XLRMWQYMJNU5PWQEKW7VONSHXJF6XB', N'f73c75f3-bef1-4781-a4e0-98ec90078c04', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd6a13040-8d4d-45a6-9722-5c5e399c6065', N'testpusty@wp.pl', N'TESTPUSTY@WP.PL', N'testpusty@wp.pl', N'TESTPUSTY@WP.PL', 1, N'AQAAAAIAAYagAAAAEOPE9AguUQbfKkNO7UhbnOVvYcP9grJLBEABcrx51gPqid0hndLlVnZ6VzYxDFo11A==', N'E2QYEQTVFK442RMYGZW647GODGKCGQM7', N'03e1eb79-4768-474f-9756-f5031b3cc402', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'dd102735-7a3d-4853-a842-0da791fc860f', N'abcd@wp.pl', N'ABCD@WP.PL', N'abcd@wp.pl', N'ABCD@WP.PL', 1, N'AQAAAAIAAYagAAAAEFkN+aGTvdpOM4StXzupEEVHSRwS20nqi90GvAHRnQlWBu3tvN627Oc/5EAfny0iHg==', N'LDSWW2UQSHWIJQFR3P6S4W57P7Y2C3DK', N'696ee972-f291-4387-a55a-cb599a821b12', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e4c95ce1-b363-4bec-a336-103f774d16c3', N'utj@wp.pl', N'UTJ@WP.PL', N'utj@wp.pl', N'UTJ@WP.PL', 1, N'AQAAAAIAAYagAAAAELG2ng4z+hr5dGnsZjcnEtimL6JGAZdrCDK5GeeQp+KUf1sPlgy+KqSUpqQfLQEZEQ==', N'PMYZ4TYAZPUALHMS77F6JU3PCZWJRBFG', N'da935752-fdec-4d23-9e6a-ea9c6b47f28f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ecbfb620-40cc-4d5f-bed2-c21d0d458bf6', N'asdas@wp.pl', N'ASDAS@WP.PL', N'asdas@wp.pl', N'ASDAS@WP.PL', 0, N'AQAAAAIAAYagAAAAEGz9Xfi3nIlI7GDQYvY5lzXbRHKbkpZYQX6x3V10vZwWrK/ZW7/sHoZDMFlbWIV5yg==', N'ZG5DA2ZBSIWM5A75FI4A3TMST5BS667P', N'c998c5a1-c82d-4567-82e3-b948fb7e27fd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f009e0e4-8fd8-4ae8-9011-f09bb9cf5fbe', N'asddd@wp.pl', N'ASDDD@WP.PL', N'asddd@wp.pl', N'ASDDD@WP.PL', 1, N'AQAAAAIAAYagAAAAEA9fhv40meLsktFaRXN8bWcz6Egh7ZuIBAl2clr120peMOdRq2WrqlJnKg9TjiM0WA==', N'P6CUM2SFGXGCDZXPSGUGTUDAD6OS3V2H', N'5d110623-4f47-4a10-b402-eaeee905235f', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[BmiResult] ON 

INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2, CAST(N'2024-02-28T13:48:47.070' AS DateTime), CAST(21.200 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (56, CAST(N'2024-03-01T17:55:40.387' AS DateTime), CAST(24.380 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (59, CAST(N'2024-03-03T13:45:53.813' AS DateTime), CAST(28.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (61, CAST(N'2024-03-05T13:45:53.813' AS DateTime), CAST(32.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (62, CAST(N'2024-03-06T13:45:53.813' AS DateTime), CAST(19.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (63, CAST(N'2024-03-07T13:45:53.813' AS DateTime), CAST(15.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (64, CAST(N'2024-03-08T13:45:53.813' AS DateTime), CAST(1.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (65, CAST(N'2024-03-09T13:45:53.813' AS DateTime), CAST(32.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (66, CAST(N'2024-03-10T13:45:53.813' AS DateTime), CAST(25.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (77, CAST(N'2024-03-10T23:52:04.653' AS DateTime), CAST(23.000 AS Decimal(10, 3)), N'test123@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (79, CAST(N'2024-03-11T10:25:53.410' AS DateTime), CAST(22.000 AS Decimal(10, 3)), N'test123@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (80, CAST(N'2024-03-11T22:37:27.113' AS DateTime), CAST(50.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (82, CAST(N'2024-04-03T22:45:38.267' AS DateTime), CAST(25.000 AS Decimal(10, 3)), N'untus1@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (83, CAST(N'2024-04-04T11:21:56.493' AS DateTime), CAST(35.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (86, CAST(N'2024-04-05T10:06:56.353' AS DateTime), CAST(37.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (1086, CAST(N'2024-04-10T16:26:58.277' AS DateTime), CAST(26.000 AS Decimal(10, 3)), N'untus1@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2094, CAST(N'2024-04-28T16:26:58.277' AS DateTime), CAST(25.500 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2095, CAST(N'2024-04-29T16:26:58.277' AS DateTime), CAST(25.100 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2096, CAST(N'2024-04-30T16:26:58.277' AS DateTime), CAST(24.900 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2097, CAST(N'2024-05-01T16:26:58.277' AS DateTime), CAST(24.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2098, CAST(N'2024-05-02T16:26:58.277' AS DateTime), CAST(25.000 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2099, CAST(N'2024-05-03T16:26:58.277' AS DateTime), CAST(25.900 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2100, CAST(N'2024-05-04T16:26:58.277' AS DateTime), CAST(26.900 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2101, CAST(N'2024-05-05T16:26:58.277' AS DateTime), CAST(24.900 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2102, CAST(N'2024-05-06T16:26:58.277' AS DateTime), CAST(25.500 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2103, CAST(N'2024-05-07T16:26:58.277' AS DateTime), CAST(25.100 AS Decimal(10, 3)), N'test@wp.pl')
INSERT [dbo].[BmiResult] ([Id], [CalculationDate], [Result], [UserName]) VALUES (2104, CAST(N'2024-05-08T16:26:58.277' AS DateTime), CAST(24.800 AS Decimal(10, 3)), N'test@wp.pl')
SET IDENTITY_INSERT [dbo].[BmiResult] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactMessage] ON 

INSERT [dbo].[ContactMessage] ([Id], [Date], [Name], [E-mail], [Topic], [Message]) VALUES (1, CAST(N'2024-03-19T11:56:49.030' AS DateTime), N'Dawid', N'd_garncarek@wp.pl', N'Dieta', N'mam prośbe')
INSERT [dbo].[ContactMessage] ([Id], [Date], [Name], [E-mail], [Topic], [Message]) VALUES (2, CAST(N'2024-03-19T12:03:12.060' AS DateTime), N'asdasd', N'sadas', N'asdasd', N'adsasd')
INSERT [dbo].[ContactMessage] ([Id], [Date], [Name], [E-mail], [Topic], [Message]) VALUES (3, CAST(N'2024-04-07T12:23:21.077' AS DateTime), N'Dawid', N'untus1@wp.pl', N'Działanie bazy', N'Działa?')
SET IDENTITY_INSERT [dbo].[ContactMessage] OFF
GO
SET IDENTITY_INSERT [dbo].[Exercises] ON 

INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (1, N'Burpees', N'Rozpocznij w pozycji stojącej, następnie przeskocz do pozycji przysiadu z rękoma na ziemi. Wyskocz do tyłu w pozycję plank, wykonaj pompkę, wróć do przysiadu i skocz w górę z uniesieniem rąk.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (2, N'Plank', N'Połóż się płasko na brzuchu, opierając ciało na przedramionach i palcach stóp. Utrzymaj ciało w prostej linii od głowy do pięt, brzuch wciągnięty. Staraj się utrzymać tę pozycję przez określony czas.', N'Średnia', 2, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (3, N'Skakanka', N'Stań prosto, trzymając uchwyty skakanki w obu rękach. Obroty skakanki wykonuj ruchami nadgarstków. Skacz, starając się unosić tylko lekko nad ziemię, lądując na przednich częściach stóp.', N'Wysoka', 3, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (4, N'Skakanka', N'Stań prosto, trzymając uchwyty skakanki w obu rękach. Obroty skakanki wykonuj ruchami nadgarstków. Skacz, starając się unosić tylko lekko nad ziemię, lądując na przednich częściach stóp.', N'Wysoka', 3, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (5, N'Skakanka', N'Stań prosto, trzymając uchwyty skakanki w obu rękach. Obroty skakanki wykonuj ruchami nadgarstków. Skacz, starając się unosić tylko lekko nad ziemię, lądując na przednich częściach stóp.', N'Wysoka', 3, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (6, N'Skakanka', N'Stań prosto, trzymając uchwyty skakanki w obu rękach. Obroty skakanki wykonuj ruchami nadgarstków. Skacz, starając się unosić tylko lekko nad ziemię, lądując na przednich częściach stóp.', N'Wysoka', 3, N'Dwór', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (7, N'Przysiady', N'Stań prosto z nogami rozstawionymi na szerokość bioder. Zginaj kolana, obniżając ciało jakbyś chciał usiąść na krześle, aż uda będą równoległe do podłogi. Wróć do pozycji wyjściowej.', N'Średnia', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (8, N'Przysiady', N'Stań prosto z nogami rozstawionymi na szerokość bioder. Zginaj kolana, obniżając ciało jakbyś chciał usiąść na krześle, aż uda będą równoległe do podłogi. Wróć do pozycji wyjściowej.', N'Średnia', 1, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (9, N'Joga', N'Rozpocznij od pozycji góry z rękoma wzniesionymi nad głowę. Wykonuj sekwencje pozycji, takich jak pies z głową w dół, wojownik, lub pozycja dziecka, skupiając się na płynnych przejściach i oddechu.', N'Niska', 60, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (10, N'Joga', N'Rozpocznij od pozycji góry z rękoma wzniesionymi nad głowę. Wykonuj sekwencje pozycji, takich jak pies z głową w dół, wojownik, lub pozycja dziecka, skupiając się na płynnych przejściach i oddechu.', N'Niska', 60, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (11, N'Jazda na rowerze stacjonarnym', N'Siądź na rowerze stacjonarnym i ustaw opór tak, aby symulował jazdę na zewnątrz. Pedałuj w równym tempie, utrzymując stabilną postawę.', N'Średnia', 30, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (12, N'Jazda na rowerze stacjonarnym', N'Siądź na rowerze stacjonarnym i ustaw opór tak, aby symulował jazdę na zewnątrz. Pedałuj w równym tempie, utrzymując stabilną postawę.', N'Średnia', 30, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (13, N'Jazda na rowerze', N'Wybierz trasę z różnorodnym terenem, aby zwiększyć intensywność treningu. Skup się na utrzymaniu stałego tempa i korzystaj z przerzutek, aby dostosować opór.', N'Wysoka', 60, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (14, N'Jazda na rowerze', N'Wybierz trasę z różnorodnym terenem, aby zwiększyć intensywność treningu. Skup się na utrzymaniu stałego tempa i korzystaj z przerzutek, aby dostosować opór.', N'Wysoka', 60, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (15, N'Jazda na rowerze', N'Wybierz trasę z różnorodnym terenem, aby zwiększyć intensywność treningu. Skup się na utrzymaniu stałego tempa i korzystaj z przerzutek, aby dostosować opór.', N'Wysoka', 60, N'Dwór', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (16, N'Jazda na rowerze', N'Wybierz trasę z różnorodnym terenem, aby zwiększyć intensywność treningu. Skup się na utrzymaniu stałego tempa i korzystaj z przerzutek, aby dostosować opór.', N'Wysoka', 60, N'Dwór', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (17, N'Jazda na rowerze', N'Wybierz trasę z różnorodnym terenem, aby zwiększyć intensywność treningu. Skup się na utrzymaniu stałego tempa i korzystaj z przerzutek, aby dostosować opór.', N'Wysoka', 60, N'Dwór', N'Utrata wagi', N'Wysoki')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (18, N'Jazda na rowerze', N'Wybierz trasę z różnorodnym terenem, aby zwiększyć intensywność treningu. Skup się na utrzymaniu stałego tempa i korzystaj z przerzutek, aby dostosować opór.', N'Wysoka', 60, N'Dwór', N'Poprawa kondycji', N'Wysoki')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (19, N'Mountain climbers', N'Zacznij w pozycji plank na rękach. Przyciągaj na przemian kolana do klatki piersiowej, jakbyś wbiegał na górę. Utrzymaj szybkie tempo i stabilną pozycję.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (20, N'Wyskoki z przysiadu', N'Wykonaj głęboki przysiad, a następnie dynamicznie wyskocz w górę, maksymalnie wyciągając ciało. Wyląduj miękko i od razu przejdź do kolejnego przysiadu.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (21, N'Wyskoki z przysiadu', N'Wykonaj głęboki przysiad, a następnie dynamicznie wyskocz w górę, maksymalnie wyciągając ciało. Wyląduj miękko i od razu przejdź do kolejnego przysiadu.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (22, N'Podciąganie na drążku', N'Chwyć drążek szerokim uchwytem dłońmi skierowanymi od siebie. Pociągnij się do góry, aż broda znajdzie się powyżej drążka, następnie powoli opuść ciało do pozycji wyjściowej.', N'Wysoka', 5, N'Pomieszczenie', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (23, N'Podciąganie na drążku', N'Chwyć drążek szerokim uchwytem dłońmi skierowanymi od siebie. Pociągnij się do góry, aż broda znajdzie się powyżej drążka, następnie powoli opuść ciało do pozycji wyjściowej.', N'Wysoka', 5, N'Dwór', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (24, N'Pompki na piłce', N'Umieść ręce na piłce gimnastycznej, rozstawione na szerokość barków. Wykonaj pompkę, utrzymując równowagę. To ćwiczenie wzmacnia mięśnie rdzenia i górnej części ciała.', N'Średnia', 2, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (25, N'Joga - Pozycja wojownika', N'Stań w szerokim rozkroku, jedna noga z przodu, druga z tyłu, obie nogi proste. Wykonaj głęboki wdech i podczas wydechu zegnij przednią nogę w kolanie, unosząc ręce do góry.', N'Niska', 5, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (26, N'Joga - Pozycja wojownika', N'Stań w szerokim rozkroku, jedna noga z przodu, druga z tyłu, obie nogi proste. Wykonaj głęboki wdech i podczas wydechu zegnij przednią nogę w kolanie, unosząc ręce do góry.', N'Niska', 5, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (27, N'Pływanie', N'Wybierz styl pływacki, który preferujesz (np. kraul, żabka) i skup się na technice oraz płynności ruchów. Pływaj odcinki z przerwami lub ciągłym tempem przez określony czas.', N'Wysoka', 30, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (28, N'Pływanie', N'Wybierz styl pływacki, który preferujesz (np. kraul, żabka) i skup się na technice oraz płynności ruchów. Pływaj odcinki z przerwami lub ciągłym tempem przez określony czas.', N'Wysoka', 30, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (29, N'Pływanie', N'Wybierz styl pływacki, który preferujesz (np. kraul, żabka) i skup się na technice oraz płynności ruchów. Pływaj odcinki z przerwami lub ciągłym tempem przez określony czas.', N'Wysoka', 45, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (30, N'Pływanie', N'Wybierz styl pływacki, który preferujesz (np. kraul, żabka) i skup się na technice oraz płynności ruchów. Pływaj odcinki z przerwami lub ciągłym tempem przez określony czas.', N'Wysoka', 45, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (31, N'Pływanie', N'Wybierz styl pływacki, który preferujesz (np. kraul, delfin, na plechac) i skup się na technice oraz płynności ruchów. Pływaj odcinki z przerwami lub ciągłym tempem przez określony czas.', N'Wysoka', 45, N'Pomieszczenie', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (32, N'Pływanie', N'Wybierz styl pływacki, który preferujesz (np. kraul, delfin, na plechac) i skup się na technice oraz płynności ruchów. Pływaj odcinki z przerwami lub ciągłym tempem przez określony czas.', N'Wysoka', 45, N'Pomieszczenie', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (33, N'Tai chi', N'Praktykuj serię płynnych, kontrolowanych ruchów, które koncentrują się na oddechu i świadomości ciała. Tai chi pomaga w relaksacji i poprawie równowagi.', N'Niska', 45, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (34, N'Tai chi', N'Praktykuj serię płynnych, kontrolowanych ruchów, które koncentrują się na oddechu i świadomości ciała. Tai chi pomaga w relaksacji i poprawie równowagi.', N'Niska', 45, N'Pomieszczenie', N'Dwór', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (35, N'Skłony boczne z ciężarami', N'Stań prosto, trzymając hantle w dłoniach wzdłuż ciała (lub jakieś odważniki). Skłon się w bok, opuszczając jedną hantlę wzdłuż nogi, a drugą unosząc lekko do góry. Wróć do pozycji wyjściowej i powtórz na drugą stronę.', N'Średnia', 2, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (36, N'Skłony boczne z ciężarami', N'Stań prosto, trzymając hantle w dłoniach wzdłuż ciała (lub jakieś odważniki). Skłon się w bok, opuszczając jedną hantlę wzdłuż nogi, a drugą unosząc lekko do góry. Wróć do pozycji wyjściowej i powtórz na drugą stronę.', N'Średnia', 2, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (37, N'Russian Twists', N'Usiądź na podłodze z nogami uniesionymi lekko nad ziemią. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (38, N'Russian Twists', N'Usiądź na podłodze z nogami uniesionymi lekko nad ziemią. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (39, N'Russian Twists', N'Usiądź na podłodze z nogami uniesionymi lekko nad ziemią. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (40, N'Russian Twists', N'Usiądź na podłodze z nogami uniesionymi lekko nad ziemią. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (41, N'Podskoki na skrzynię', N'Stań przed niską skrzynią lub stopniem. Wykonaj dynamiczny skok obunóż na skrzynię, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (42, N'Podskoki na skrzynię', N'Stań przed niską skrzynią lub stopniem. Wykonaj dynamiczny skok obunóż na skrzynię, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (43, N'Podskoki na skrzynię', N'Stań przed niską skrzynią lub stopniem. Wykonaj dynamiczny skok obunóż na skrzynię, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (44, N'Podskoki na skrzynię', N'Stań przed niską skrzynią lub stopniem. Wykonaj dynamiczny skok obunóż na skrzynię, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (45, N'Lunge jumps', N'Zacznij w pozycji wykroku. Skocz i zamień nogi w powietrzu, lądując w wykroku z przeciwną nogą z przodu.', N'Wysoka', 1, N'Dowolne', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (46, N'Lunge jumps', N'Zacznij w pozycji wykroku. Skocz i zamień nogi w powietrzu, lądując w wykroku z przeciwną nogą z przodu.', N'Wysoka', 1, N'Dowolne', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (47, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (48, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (49, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (50, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (51, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Pomieszczenie', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (52, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Pomieszczenie', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (53, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Dwór', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (54, N'Bieganie interwałowe', N'Na bieżni lub na zewnątrz wykonuj sprinty na krótkich dystansach z okresami odpoczynku pomiędzy nimi.', N'Wysoka', 20, N'Dwór', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (55, N'Step-ups na ławce', N'Stań przed ławką. Kładź na przemian każdą nogę na ławce i podnoś się, a następnie opuszczaj z powrotem na podłogę.', N'Średnia', 2, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (56, N'Step-ups na ławce', N'Stań przed ławką. Kładź na przemian każdą nogę na ławce i podnoś się, a następnie opuszczaj z powrotem na podłogę.', N'Średnia', 2, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (57, N'Step-ups na ławce', N'Stań przed ławką. Kładź na przemian każdą nogę na ławce i podnoś się, a następnie opuszczaj z powrotem na podłogę.', N'Średnia', 2, N'Dwór', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (58, N'Step-ups na ławce', N'Stań przed ławką. Kładź na przemian każdą nogę na ławce i podnoś się, a następnie opuszczaj z powrotem na podłogę.', N'Średnia', 2, N'Dwór', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (59, N'Crunches', N'Połóż się na plecach z nogami zgiętymi w kolanach i stopami płasko na podłodze. Unieś górną część tułowia w kierunku kolan, utrzymując napięcie mięśni brzucha.', N'Średnia', 2, N'Dowolne', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (60, N'Crunches', N'Połóż się na plecach z nogami zgiętymi w kolanach i stopami płasko na podłodze. Unieś górną część tułowia w kierunku kolan, utrzymując napięcie mięśni brzucha.', N'Średnia', 2, N'Dowolne', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (61, N'Crunches', N'Połóż się na plecach z nogami zgiętymi w kolanach i stopami płasko na podłodze. Unieś górną część tułowia w kierunku kolan, utrzymując napięcie mięśni brzucha.', N'Średnia', 2, N'Dowolne', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (62, N'Crunches', N'Połóż się na plecach z nogami zgiętymi w kolanach i stopami płasko na podłodze. Unieś górną część tułowia w kierunku kolan, utrzymując napięcie mięśni brzucha.', N'Średnia', 2, N'Dowolne', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (63, N'Mountain Climbers', N'Zacznij w pozycji plank na rękach. Naprzemiennie przyciągaj kolana do klatki piersiowej, jakbyś wchodził po schodach. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (64, N'Mountain Climbers', N'Zacznij w pozycji plank na rękach. Naprzemiennie przyciągaj kolana do klatki piersiowej, jakbyś wchodził po schodach. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (65, N'Mountain Climbers', N'Zacznij w pozycji plank na rękach. Naprzemiennie przyciągaj kolana do klatki piersiowej, jakbyś wchodził po schodach. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (66, N'Mountain Climbers', N'Zacznij w pozycji plank na rękach. Naprzemiennie przyciągaj kolana do klatki piersiowej, jakbyś wchodził po schodach. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (67, N'Jumping Jacks', N'Stań prosto z nogami razem, a następnie skocz, rozszerzając nogi na boki i unosząc ręce nad głowę. Wróć do pozycji wyjściowej i powtórz.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (68, N'Jumping Jacks', N'Stań prosto z nogami razem, a następnie skocz, rozszerzając nogi na boki i unosząc ręce nad głowę. Wróć do pozycji wyjściowej i powtórz.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (69, N'Jumping Jacks', N'Stań prosto z nogami razem, a następnie skocz, rozszerzając nogi na boki i unosząc ręce nad głowę. Wróć do pozycji wyjściowej i powtórz.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (70, N'Jumping Jacks', N'Stań prosto z nogami razem, a następnie skocz, rozszerzając nogi na boki i unosząc ręce nad głowę. Wróć do pozycji wyjściowej i powtórz.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (71, N'High Knees', N'Biegaj w miejscu, podnosząc kolana wysoko w kierunku klatki piersiowej. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (72, N'High Knees', N'Biegaj w miejscu, podnosząc kolana wysoko w kierunku klatki piersiowej. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (73, N'High Knees', N'Biegaj w miejscu, podnosząc kolana wysoko w kierunku klatki piersiowej. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (74, N'High Knees', N'Biegaj w miejscu, podnosząc kolana wysoko w kierunku klatki piersiowej. Utrzymuj szybkie tempo.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (75, N'Squat Jumps', N'Wykonaj przysiad, a następnie wybuchowo wyskocz w górę, maksymalnie unosząc ciało. Ląduj miękko i powtórz.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (76, N'Squat Jumps', N'Wykonaj przysiad, a następnie wybuchowo wyskocz w górę, maksymalnie unosząc ciało. Ląduj miękko i powtórz.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (77, N'Squat Jumps', N'Wykonaj przysiad, a następnie wybuchowo wyskocz w górę, maksymalnie unosząc ciało. Ląduj miękko i powtórz.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (78, N'Squat Jumps', N'Wykonaj przysiad, a następnie wybuchowo wyskocz w górę, maksymalnie unosząc ciało. Ląduj miękko i powtórz.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (79, N'Tuck Jumps', N'Stań prosto, a następnie skocz w górę, przyciągając kolana do klatki piersiowej. Ląduj i natychmiast wykonaj kolejny skok.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (80, N'Tuck Jumps', N'Stań prosto, a następnie skocz w górę, przyciągając kolana do klatki piersiowej. Ląduj i natychmiast wykonaj kolejny skok.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (81, N'Tuck Jumps', N'Stań prosto, a następnie skocz w górę, przyciągając kolana do klatki piersiowej. Ląduj i natychmiast wykonaj kolejny skok.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (82, N'Tuck Jumps', N'Stań prosto, a następnie skocz w górę, przyciągając kolana do klatki piersiowej. Ląduj i natychmiast wykonaj kolejny skok.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (83, N'Power Skips', N'Skacz do góry, naprzemiennie wznosząc kolana wysoko, jak podczas dynamicznego skipowania. Używaj rąk do zwiększenia intensywności.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (84, N'Power Skips', N'Skacz do góry, naprzemiennie wznosząc kolana wysoko, jak podczas dynamicznego skipowania. Używaj rąk do zwiększenia intensywności.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (85, N'Power Skips', N'Skacz do góry, naprzemiennie wznosząc kolana wysoko, jak podczas dynamicznego skipowania. Używaj rąk do zwiększenia intensywności.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (86, N'Power Skips', N'Skacz do góry, naprzemiennie wznosząc kolana wysoko, jak podczas dynamicznego skipowania. Używaj rąk do zwiększenia intensywności.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (87, N'Box Jumps', N'Stań przed skrzynią lub stabilnym podwyższeniem. Skocz obunóż na skrzynię, lądując stabilnie, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (88, N'Box Jumps', N'Stań przed skrzynią lub stabilnym podwyższeniem. Skocz obunóż na skrzynię, lądując stabilnie, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (89, N'Box Jumps', N'Stań przed skrzynią lub stabilnym podwyższeniem. Skocz obunóż na skrzynię, lądując stabilnie, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Dwór', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (90, N'Box Jumps', N'Stań przed skrzynią lub stabilnym podwyższeniem. Skocz obunóż na skrzynię, lądując stabilnie, a następnie zeskocz z powrotem na ziemię.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (91, N'Agility Drills', N'Ustaw kilka pachołków w linii lub formie innego wzoru. Biegnij, zmieniając kierunki przy każdym pachołku, utrzymując szybkie tempo.', N'Wysoka', 10, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (92, N'Agility Drills', N'Ustaw kilka pachołków w linii lub formie innego wzoru. Biegnij, zmieniając kierunki przy każdym pachołku, utrzymując szybkie tempo.', N'Wysoka', 10, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (93, N'Agility Drills', N'Ustaw kilka pachołków w linii lub formie innego wzoru. Biegnij, zmieniając kierunki przy każdym pachołku, utrzymując szybkie tempo.', N'Wysoka', 10, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (94, N'Agility Drills', N'Ustaw kilka pachołków w linii lub formie innego wzoru. Biegnij, zmieniając kierunki przy każdym pachołku, utrzymując szybkie tempo.', N'Wysoka', 10, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (95, N'Plyometric Push-Ups', N'Wykonaj standardową pompkę, a w fazie wypychania zastosuj wystarczająco dużo siły, aby Twoje ręce oderwały się od podłoża. Możesz klaskać w powietrzu przed kolejnym lądowaniem.', N'Wysoka', 1, N'Pomieszczenie', N'Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (96, N'Plyometric Push-Ups', N'Wykonaj standardową pompkę, a w fazie wypychania zastosuj wystarczająco dużo siły, aby Twoje ręce oderwały się od podłoża. Możesz klaskać w powietrzu przed kolejnym lądowaniem.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (97, N'Plyometric Push-Ups', N'Wykonaj standardową pompkę, a w fazie wypychania zastosuj wystarczająco dużo siły, aby Twoje ręce oderwały się od podłoża. Możesz klaskać w powietrzu przed kolejnym lądowaniem.', N'Wysoka', 1, N'Dwór', N' Poprawa kondycji', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (98, N'Plyometric Push-Ups', N'Wykonaj standardową pompkę, a w fazie wypychania zastosuj wystarczająco dużo siły, aby Twoje ręce oderwały się od podłoża. Możesz klaskać w powietrzu przed kolejnym lądowaniem.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (99, N'Shadow Boxing', N'Przyjmij pozycję bokserską i wykonuj szybkie serie ciosów w powietrze. Skoncentruj się na szybkości i technice.', N'Średnia', 10, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
GO
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (100, N'Shadow Boxing', N'Przyjmij pozycję bokserską i wykonuj szybkie serie ciosów w powietrze. Skoncentruj się na szybkości i technice.', N'Średnia', 10, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (101, N'Shadow Boxing', N'Przyjmij pozycję bokserską i wykonuj szybkie serie ciosów w powietrze. Skoncentruj się na szybkości i technice.', N'Średnia', 10, N'Dwór', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (102, N'Shadow Boxing', N'Przyjmij pozycję bokserską i wykonuj szybkie serie ciosów w powietrze. Skoncentruj się na szybkości i technice.', N'Średnia', 10, N'Dwór', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (103, N'Skaters', N'Naśladuj ruchy łyżwiarza szybko przeskakując z jednej nogi na drugą. Skacz w bok za pomocą jednej nogi, lądując na przemian na każdej nodze.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (104, N'Skaters', N'Naśladuj ruchy łyżwiarza szybko przeskakując z jednej nogi na drugą. Skacz w bok za pomocą jednej nogi, lądując na przemian na każdej nodze.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (105, N'Kettlebell Swings', N'Stań prosto trzymając kettlebell obiema rękami. Wykonaj półprzysiad i wymachnij kettlebell do przodu na wysokość ramion, a następnie wróć do pozycji wyjściowej.', N'Średnia', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (106, N'Kettlebell Swings', N'Stań prosto trzymając kettlebell obiema rękami. Wykonaj półprzysiad i wymachnij kettlebell do przodu na wysokość ramion, a następnie wróć do pozycji wyjściowej.', N'Średnia', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (107, N'Bieganie', N'Biegaj w swoim tempie na świeżym powietrzu lub na bieżni. Skup się na regularnym oddychaniu.', N'Średnia', 30, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (108, N'Bieganie', N'Biegaj w swoim tempie na świeżym powietrzu lub na bieżni. Skup się na regularnym oddychaniu.', N'Średnia', 30, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (109, N'Joga', N'Wykonuj różne pozycje jogi skupiając się na oddychaniu, równowadze i rozciąganiu.', N'Niska', 60, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (110, N'Joga', N'Wykonuj różne pozycje jogi skupiając się na oddychaniu, równowadze i rozciąganiu.', N'Niska', 60, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (111, N'Pilates', N'Wykonuj ćwiczenia pilates, które koncentrują się na rdzeniu ciała, poprawie postawy i elastyczności.', N'Niska', 60, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (112, N'Pilates', N'Wykonuj ćwiczenia pilates, które koncentrują się na rdzeniu ciała, poprawie postawy i elastyczności.', N'Niska', 60, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (113, N'Spacer', N'Regularne, spokojne spacery pomagają redukować stres i poprawiają samopoczucie.', N'Niska', 30, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (114, N'Speed Skaters', N'Wykonuj dynamiczne przeskoki z boku na bok, naśladując ruchy łyżwiarza szybkościowego.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (115, N'Speed Skaters', N'Wykonuj dynamiczne przeskoki z boku na bok, naśladując ruchy łyżwiarza szybkościowego.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (116, N'Lateral Jump Squats', N'Wykonaj przysiad, a następnie dynamicznie skocz w bok, lądując w przysiadzie. Powtarzaj skoki na przemian w lewo i w prawo.', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (117, N'Lateral Jump Squats', N'Wykonaj przysiad, a następnie dynamicznie skocz w bok, lądując w przysiadzie. Powtarzaj skoki na przemian w lewo i w prawo.', N'Wysoka', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (118, N'Stretching', N'Wykonuj serię ćwiczeń rozciągających, które poprawią Twoją elastyczność i pomogą zrelaksować mięśnie.', N'Niska', 15, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (119, N'Stretching', N'Wykonuj serię ćwiczeń rozciągających, które poprawią Twoją elastyczność i pomogą zrelaksować mięśnie.', N'Niska', 15, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (120, N'Mindful Walking', N'Praktykuj uważne chodzenie, skupiając się na każdym kroku i otoczeniu, by zwiększyć obecność i spokój umysłu.', N'Niska', 30, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (121, N'Qi Gong', N'Zajmij się Qi Gong, formą chińskiej gimnastyki zdrowotnej łączącej ruch, medytację i regulację oddechu.', N'Niska', 30, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (122, N'Qi Gong', N'Zajmij się Qi Gong, formą chińskiej gimnastyki zdrowotnej łączącej ruch, medytację i regulację oddechu.', N'Niska', 30, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (123, N'Dance Fitness', N'Weź udział w lekcji tańca fitness, takiej jak Zumba lub taniec brzucha, aby połączyć ruch z zabawą i poprawić samopoczucie.', N'Średnia', 45, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (124, N'Aquafitness', N'Spróbuj aquafitnessu, czyli ćwiczeń w wodzie, które są delikatne dla stawów, a jednocześnie efektywnie wzmacniają mięśnie.', N'Średnia', 45, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (125, N'Nordic Walking', N'Uprawiaj nordic walking, używając specjalnych kijków do marszu, co zwiększa zaangażowanie górnej części ciała.', N'Średnia', 30, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (126, N'Spacer medytacyjny', N'Wykonuj spokojne spacery, koncentrując się na świadomym oddychaniu i obserwacji otoczenia.', N'Niska', 30, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (127, N'Flutter Kicks', N'Połóż się na podłodze i rób norzyce nogami na wysokości około 30 cm', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (128, N'Side Plank(L)', N'W pozycji bocznej unieś tułów i oprzyj się na łokciu i opieraj się w taki sposób by stopy z głową tworzyły linie prostą (Na lewym łokciu)', N'Średnia', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (129, N'Side Plank(R)', N'W pozycji bocznej unieś tułów i oprzyj się na łokciu i opieraj się w taki sposób by stopy z głową tworzyły linie prostą (Na prawym łokciu)', N'Średnia', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (130, N'Butt Kicks', N'Ćwiczenie podobne do high knees, tylko tutaj staramy się udeżyć piętami nasze pośladki', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (131, N'Straight Leg Sit Ups', N'Na wyprostowanych nogach, rób skłony brzucha nie odrywając nóg od podłogi', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (132, N'Air Bike', N'Połóż się na podłodze kolana unieś do góry i na zmiane dotykaj lewym łokciem prawego kolana oraz prawym łokciem lewego kolana', N'Wysoka', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (133, N'Rope Jumping', N'Skakanie na skakance przez określony czas, przeplatając różne techniki skoków.', N'Wysoka', 20, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (134, N'Rope Jumping', N'Skakanie na skakance przez określony czas, przeplatając różne techniki skoków.', N'Wysoka', 20, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (135, N'Kickboxing', N'Dynamiczne ćwiczenia kickboxingu, łączące uderzenia pięściami i kopnięcia, które spalają dużo kalorii.', N'Wysoka', 30, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (136, N'HIIT on Bike', N'Sesje interwałowe na rowerze stacjonarnym, przeplatające bardzo intensywne okresy pedałowania z krótkimi okresami odpoczynku.', N'Wysoka', 30, N'Pomieszczenie', N'Utrata wagi', N'Zaawansowany')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (137, N'Step Aerobics', N'Ćwiczenia aerobowe z wykorzystaniem niskiego podestu, które poprawiają wydolność sercowo-naczyniową.', N'Średnia', 30, N'Pomieszczenie', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (138, N'Circuit Training', N'Zestaw różnych stacji ćwiczeniowych, każda skoncentrowana na innej części ciała, przechodzisz od jednej do drugiej bez długich przerw.', N'Wysoka', 30, N'Pomieszczenie', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (139, N'Stretching and Flexibility', N'Sesje rozciągania skupiające się na poprawie elastyczności i zmniejszeniu napięcia mięśni.', N'Niska', 30, N'Pomieszczenie', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (140, N'Stretching and Flexibility', N'Sesje rozciągania skupiające się na poprawie elastyczności i zmniejszeniu napięcia mięśni.', N'Niska', 30, N'Dwór', N'Poprawa samopoczucia', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (141, N'Standardowe brzuszki', N'Połóż się na podłodze i zaprzyj o coś nogi by swobodnie unosić tułów w górę', N'Niska', 1, N'Pomieszczenie', N'Utrata wagi', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (142, N'Standardowe brzuszki', N'Połóż się na podłodze i zaprzyj o coś nogi by swobodnie unosić tułów w górę', N'Niska', 1, N'Pomieszczenie', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (143, N'Russian Twists', N'Usiądź na podłodze z nogami opuszczonymi na ziemi. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Niska', 1, N'Dwór', N'Poprawa kondycji', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (144, N'Russian Twists', N'Usiądź na podłodze z nogami opuszczonymi na ziemi. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Niska', 1, N'Dwór', N'Utrata wagi', N'Średni')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (145, N'Russian Twists', N'Usiądź na podłodze z nogami opuszczonymi na ziemi. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Niska', 1, N'Dwór', N'Poprawa kondycji', N'Niski')
INSERT [dbo].[Exercises] ([Id], [Name], [Description], [IntensityLevel], [DurationMinutes], [Location], [Goals], [DifficultyLevel]) VALUES (146, N'Russian Twists', N'Usiądź na podłodze z nogami opuszczonymi na ziemi. Trzymaj ręce przed sobą i obracaj tułów z lewa na prawo, dotykając dłońmi podłogi po każdej stronie.', N'Niska', 1, N'Dwór', N'Utrata wagi', N'Niski')
SET IDENTITY_INSERT [dbo].[Exercises] OFF
GO
SET IDENTITY_INSERT [dbo].[FoodProducts] ON 

INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (1, N'Jabłko', CAST(0.26 AS Decimal(5, 2)), CAST(0.17 AS Decimal(5, 2)), CAST(13.81 AS Decimal(5, 2)), CAST(52.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (2, N'Chleb pełnoziarnisty', CAST(13.00 AS Decimal(5, 2)), CAST(3.00 AS Decimal(5, 2)), CAST(41.00 AS Decimal(5, 2)), CAST(247.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (3, N'Pierś z kurczaka', CAST(31.00 AS Decimal(5, 2)), CAST(3.60 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(165.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (4, N'Mleko 2%', CAST(3.30 AS Decimal(5, 2)), CAST(2.00 AS Decimal(5, 2)), CAST(4.80 AS Decimal(5, 2)), CAST(50.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (5, N'Jajko', CAST(13.00 AS Decimal(5, 2)), CAST(11.00 AS Decimal(5, 2)), CAST(1.10 AS Decimal(5, 2)), CAST(155.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (6, N'Makaron durum', CAST(12.00 AS Decimal(5, 2)), CAST(1.50 AS Decimal(5, 2)), CAST(75.00 AS Decimal(5, 2)), CAST(350.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (7, N'Ryż biały', CAST(6.60 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(79.00 AS Decimal(5, 2)), CAST(360.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (8, N'Płatki owsiane', CAST(16.90 AS Decimal(5, 2)), CAST(6.90 AS Decimal(5, 2)), CAST(66.30 AS Decimal(5, 2)), CAST(389.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (9, N'Twaróg chudy', CAST(18.00 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(3.40 AS Decimal(5, 2)), CAST(98.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (10, N'Banany', CAST(1.10 AS Decimal(5, 2)), CAST(0.30 AS Decimal(5, 2)), CAST(23.00 AS Decimal(5, 2)), CAST(89.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (11, N'Szpinak świeży', CAST(2.90 AS Decimal(5, 2)), CAST(0.40 AS Decimal(5, 2)), CAST(3.60 AS Decimal(5, 2)), CAST(23.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (12, N'Pomidor', CAST(0.90 AS Decimal(5, 2)), CAST(0.20 AS Decimal(5, 2)), CAST(3.90 AS Decimal(5, 2)), CAST(18.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (13, N'Brokuły', CAST(2.80 AS Decimal(5, 2)), CAST(0.40 AS Decimal(5, 2)), CAST(7.00 AS Decimal(5, 2)), CAST(34.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (14, N'Łosoś', CAST(20.80 AS Decimal(5, 2)), CAST(13.60 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(208.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (15, N'Orzechy włoskie', CAST(15.20 AS Decimal(5, 2)), CAST(65.20 AS Decimal(5, 2)), CAST(13.70 AS Decimal(5, 2)), CAST(654.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (16, N'Awokado', CAST(2.00 AS Decimal(5, 2)), CAST(15.00 AS Decimal(5, 2)), CAST(9.00 AS Decimal(5, 2)), CAST(160.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (17, N'Czekolada gorzka', CAST(5.40 AS Decimal(5, 2)), CAST(35.30 AS Decimal(5, 2)), CAST(45.90 AS Decimal(5, 2)), CAST(546.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (18, N'Masło orzechowe', CAST(25.10 AS Decimal(5, 2)), CAST(49.90 AS Decimal(5, 2)), CAST(19.50 AS Decimal(5, 2)), CAST(588.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (19, N'Hummus', CAST(7.90 AS Decimal(5, 2)), CAST(29.20 AS Decimal(5, 2)), CAST(17.40 AS Decimal(5, 2)), CAST(327.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (20, N'Tofu', CAST(8.00 AS Decimal(5, 2)), CAST(4.80 AS Decimal(5, 2)), CAST(1.90 AS Decimal(5, 2)), CAST(76.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (21, N'Quinoa', CAST(14.00 AS Decimal(5, 2)), CAST(6.00 AS Decimal(5, 2)), CAST(64.00 AS Decimal(5, 2)), CAST(368.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (22, N'Jogurt naturalny', CAST(10.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(5, 2)), CAST(3.60 AS Decimal(5, 2)), CAST(95.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (23, N'Lody waniliowe', CAST(3.50 AS Decimal(5, 2)), CAST(11.00 AS Decimal(5, 2)), CAST(24.00 AS Decimal(5, 2)), CAST(207.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (24, N'Ciecierzyca gotowana', CAST(8.90 AS Decimal(5, 2)), CAST(2.60 AS Decimal(5, 2)), CAST(27.40 AS Decimal(5, 2)), CAST(164.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (25, N'Soczewica', CAST(9.00 AS Decimal(5, 2)), CAST(0.40 AS Decimal(5, 2)), CAST(20.10 AS Decimal(5, 2)), CAST(116.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (26, N'Fasola czerwona', CAST(8.70 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(22.80 AS Decimal(5, 2)), CAST(127.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (27, N'Chleb żytni', CAST(8.50 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(48.30 AS Decimal(5, 2)), CAST(250.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (28, N'Chia nasiona', CAST(17.00 AS Decimal(5, 2)), CAST(31.00 AS Decimal(5, 2)), CAST(42.00 AS Decimal(5, 2)), CAST(486.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (29, N'Kasza gryczana', CAST(13.30 AS Decimal(5, 2)), CAST(3.40 AS Decimal(5, 2)), CAST(71.50 AS Decimal(5, 2)), CAST(343.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (30, N'Kasza jaglana', CAST(11.00 AS Decimal(5, 2)), CAST(3.30 AS Decimal(5, 2)), CAST(69.30 AS Decimal(5, 2)), CAST(348.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (31, N'Kasza kuskus', CAST(12.80 AS Decimal(5, 2)), CAST(0.60 AS Decimal(5, 2)), CAST(73.10 AS Decimal(5, 2)), CAST(376.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (32, N'Kurczak gotowany', CAST(25.20 AS Decimal(5, 2)), CAST(7.70 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(165.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (33, N'Indyk gotowany', CAST(29.90 AS Decimal(5, 2)), CAST(7.10 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(189.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (34, N'Kaczka pieczona', CAST(19.90 AS Decimal(5, 2)), CAST(28.40 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(337.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (35, N'Boczek wędzony', CAST(37.00 AS Decimal(5, 2)), CAST(42.00 AS Decimal(5, 2)), CAST(1.40 AS Decimal(5, 2)), CAST(541.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (36, N'Ser mozzarella', CAST(28.00 AS Decimal(5, 2)), CAST(17.00 AS Decimal(5, 2)), CAST(3.10 AS Decimal(5, 2)), CAST(280.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (37, N'Ser feta', CAST(14.20 AS Decimal(5, 2)), CAST(21.30 AS Decimal(5, 2)), CAST(4.00 AS Decimal(5, 2)), CAST(264.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (38, N'Ser camembert', CAST(20.00 AS Decimal(5, 2)), CAST(24.00 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(300.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (39, N'Oliwa z oliwek', CAST(0.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(884.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (40, N'Olej kokosowy', CAST(0.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(862.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (41, N'Mąka pszenna', CAST(10.30 AS Decimal(5, 2)), CAST(1.20 AS Decimal(5, 2)), CAST(76.30 AS Decimal(5, 2)), CAST(364.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (42, N'Mąka kokosowa', CAST(18.40 AS Decimal(5, 2)), CAST(62.00 AS Decimal(5, 2)), CAST(23.65 AS Decimal(5, 2)), CAST(660.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (43, N'Mąka migdałowa', CAST(21.20 AS Decimal(5, 2)), CAST(49.90 AS Decimal(5, 2)), CAST(21.60 AS Decimal(5, 2)), CAST(607.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (44, N'Mąka owsiana', CAST(14.60 AS Decimal(5, 2)), CAST(6.90 AS Decimal(5, 2)), CAST(66.30 AS Decimal(5, 2)), CAST(404.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (45, N'Kakao w proszku', CAST(19.60 AS Decimal(5, 2)), CAST(13.70 AS Decimal(5, 2)), CAST(57.90 AS Decimal(5, 2)), CAST(228.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (46, N'Miód', CAST(0.30 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(82.40 AS Decimal(5, 2)), CAST(304.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (47, N'Syrop klonowy', CAST(0.00 AS Decimal(5, 2)), CAST(0.20 AS Decimal(5, 2)), CAST(67.00 AS Decimal(5, 2)), CAST(261.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (48, N'Daktyle', CAST(2.50 AS Decimal(5, 2)), CAST(0.40 AS Decimal(5, 2)), CAST(75.00 AS Decimal(5, 2)), CAST(277.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (49, N'Figi suszone', CAST(3.30 AS Decimal(5, 2)), CAST(0.90 AS Decimal(5, 2)), CAST(63.90 AS Decimal(5, 2)), CAST(249.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (50, N'Morele suszone', CAST(3.40 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(63.00 AS Decimal(5, 2)), CAST(241.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (51, N'Rodzynki', CAST(3.00 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(79.00 AS Decimal(5, 2)), CAST(299.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (52, N'Orzechy nerkowca', CAST(18.20 AS Decimal(5, 2)), CAST(43.90 AS Decimal(5, 2)), CAST(30.20 AS Decimal(5, 2)), CAST(553.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (53, N'Orzechy laskowe', CAST(15.00 AS Decimal(5, 2)), CAST(60.80 AS Decimal(5, 2)), CAST(17.00 AS Decimal(5, 2)), CAST(628.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (54, N'Orzechy brazylijskie', CAST(14.30 AS Decimal(5, 2)), CAST(66.40 AS Decimal(5, 2)), CAST(12.30 AS Decimal(5, 2)), CAST(659.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (55, N'Migdały', CAST(21.20 AS Decimal(5, 2)), CAST(49.90 AS Decimal(5, 2)), CAST(21.60 AS Decimal(5, 2)), CAST(575.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (56, N'Pistacje', CAST(20.30 AS Decimal(5, 2)), CAST(45.40 AS Decimal(5, 2)), CAST(27.50 AS Decimal(5, 2)), CAST(557.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (57, N'Dynia pieczona', CAST(1.10 AS Decimal(5, 2)), CAST(0.10 AS Decimal(5, 2)), CAST(6.50 AS Decimal(5, 2)), CAST(26.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (58, N'Marchew gotowana', CAST(0.80 AS Decimal(5, 2)), CAST(0.20 AS Decimal(5, 2)), CAST(8.20 AS Decimal(5, 2)), CAST(35.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (59, N'Kukurydza gotowana', CAST(3.40 AS Decimal(5, 2)), CAST(1.50 AS Decimal(5, 2)), CAST(25.00 AS Decimal(5, 2)), CAST(108.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (60, N'Polędwica wołowa', CAST(22.00 AS Decimal(5, 2)), CAST(5.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(130.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (61, N'Ser brie', CAST(20.75 AS Decimal(5, 2)), CAST(27.68 AS Decimal(5, 2)), CAST(0.45 AS Decimal(5, 2)), CAST(334.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (62, N'Ser gouda', CAST(25.00 AS Decimal(5, 2)), CAST(27.00 AS Decimal(5, 2)), CAST(2.20 AS Decimal(5, 2)), CAST(356.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (63, N'Ser edamski', CAST(24.00 AS Decimal(5, 2)), CAST(28.00 AS Decimal(5, 2)), CAST(1.40 AS Decimal(5, 2)), CAST(357.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (64, N'Śledź', CAST(14.00 AS Decimal(5, 2)), CAST(9.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(158.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (65, N'Karp', CAST(17.50 AS Decimal(5, 2)), CAST(5.60 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(127.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (66, N'Sardynki', CAST(25.00 AS Decimal(5, 2)), CAST(11.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(208.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (67, N'Tuńczyk w oleju', CAST(29.00 AS Decimal(5, 2)), CAST(8.20 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(198.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (68, N'Tuńczyk w wodzie', CAST(26.00 AS Decimal(5, 2)), CAST(1.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(116.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (69, N'Śliwki', CAST(0.80 AS Decimal(5, 2)), CAST(0.30 AS Decimal(5, 2)), CAST(9.60 AS Decimal(5, 2)), CAST(46.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (70, N'Gruszki', CAST(0.40 AS Decimal(5, 2)), CAST(0.10 AS Decimal(5, 2)), CAST(15.50 AS Decimal(5, 2)), CAST(57.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (71, N'Maliny', CAST(1.20 AS Decimal(5, 2)), CAST(0.70 AS Decimal(5, 2)), CAST(12.00 AS Decimal(5, 2)), CAST(52.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (72, N'Truskawki', CAST(0.70 AS Decimal(5, 2)), CAST(0.30 AS Decimal(5, 2)), CAST(7.70 AS Decimal(5, 2)), CAST(32.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (73, N'Jeżyny', CAST(1.40 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(10.20 AS Decimal(5, 2)), CAST(43.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (74, N'Borówki', CAST(0.70 AS Decimal(5, 2)), CAST(0.40 AS Decimal(5, 2)), CAST(14.50 AS Decimal(5, 2)), CAST(57.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (75, N'Aronia', CAST(1.50 AS Decimal(5, 2)), CAST(0.20 AS Decimal(5, 2)), CAST(12.30 AS Decimal(5, 2)), CAST(47.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (76, N'Kiwi', CAST(1.10 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(14.70 AS Decimal(5, 2)), CAST(61.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (77, N'Grejpfrut', CAST(0.70 AS Decimal(5, 2)), CAST(0.20 AS Decimal(5, 2)), CAST(8.60 AS Decimal(5, 2)), CAST(32.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (78, N'Cytryny', CAST(1.10 AS Decimal(5, 2)), CAST(0.30 AS Decimal(5, 2)), CAST(9.30 AS Decimal(5, 2)), CAST(29.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (79, N'Ser camembert', CAST(20.00 AS Decimal(5, 2)), CAST(24.00 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(300.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (80, N'Oliwa z oliwek', CAST(0.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(884.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (81, N'Olej kokosowy', CAST(0.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(862.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (82, N'Mąka pszenna', CAST(10.30 AS Decimal(5, 2)), CAST(1.20 AS Decimal(5, 2)), CAST(76.30 AS Decimal(5, 2)), CAST(364.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (83, N'Mąka kokosowa', CAST(18.40 AS Decimal(5, 2)), CAST(62.00 AS Decimal(5, 2)), CAST(23.65 AS Decimal(5, 2)), CAST(660.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (84, N'Mąka migdałowa', CAST(21.20 AS Decimal(5, 2)), CAST(49.90 AS Decimal(5, 2)), CAST(21.60 AS Decimal(5, 2)), CAST(607.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (85, N'Mąka owsiana', CAST(14.60 AS Decimal(5, 2)), CAST(6.90 AS Decimal(5, 2)), CAST(66.30 AS Decimal(5, 2)), CAST(404.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (86, N'Kakao w proszku', CAST(19.60 AS Decimal(5, 2)), CAST(13.70 AS Decimal(5, 2)), CAST(57.90 AS Decimal(5, 2)), CAST(228.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (87, N'Miód', CAST(0.30 AS Decimal(5, 2)), CAST(0.00 AS Decimal(5, 2)), CAST(82.40 AS Decimal(5, 2)), CAST(304.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (88, N'Syrop klonowy', CAST(0.00 AS Decimal(5, 2)), CAST(0.20 AS Decimal(5, 2)), CAST(67.00 AS Decimal(5, 2)), CAST(261.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (89, N'Daktyle', CAST(2.50 AS Decimal(5, 2)), CAST(0.40 AS Decimal(5, 2)), CAST(75.00 AS Decimal(5, 2)), CAST(277.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (90, N'Figi suszone', CAST(3.30 AS Decimal(5, 2)), CAST(0.90 AS Decimal(5, 2)), CAST(63.90 AS Decimal(5, 2)), CAST(249.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (91, N'Morele suszone', CAST(3.40 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(63.00 AS Decimal(5, 2)), CAST(241.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (92, N'Rodzynki', CAST(3.00 AS Decimal(5, 2)), CAST(0.50 AS Decimal(5, 2)), CAST(79.00 AS Decimal(5, 2)), CAST(299.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (93, N'Orzechy nerkowca', CAST(18.20 AS Decimal(5, 2)), CAST(43.90 AS Decimal(5, 2)), CAST(30.20 AS Decimal(5, 2)), CAST(553.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (94, N'Orzechy laskowe', CAST(15.00 AS Decimal(5, 2)), CAST(60.80 AS Decimal(5, 2)), CAST(17.00 AS Decimal(5, 2)), CAST(628.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (95, N'Orzechy brazylijskie', CAST(14.30 AS Decimal(5, 2)), CAST(66.40 AS Decimal(5, 2)), CAST(12.30 AS Decimal(5, 2)), CAST(659.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (96, N'Migdały', CAST(21.20 AS Decimal(5, 2)), CAST(49.90 AS Decimal(5, 2)), CAST(21.60 AS Decimal(5, 2)), CAST(575.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (97, N'Pistacje', CAST(20.30 AS Decimal(5, 2)), CAST(45.40 AS Decimal(5, 2)), CAST(27.50 AS Decimal(5, 2)), CAST(557.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (98, N'Dynia pieczona', CAST(1.10 AS Decimal(5, 2)), CAST(0.10 AS Decimal(5, 2)), CAST(6.50 AS Decimal(5, 2)), CAST(26.00 AS Decimal(5, 2)))
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (99, N'Marchew gotowana', CAST(0.80 AS Decimal(5, 2)), CAST(0.20 AS Decimal(5, 2)), CAST(8.20 AS Decimal(5, 2)), CAST(35.00 AS Decimal(5, 2)))
GO
INSERT [dbo].[FoodProducts] ([Id], [ProductName], [Protein], [Fats], [Carbohydrates], [Calories(100g)]) VALUES (100, N'Kukurydza gotowana', CAST(3.40 AS Decimal(5, 2)), CAST(1.50 AS Decimal(5, 2)), CAST(25.00 AS Decimal(5, 2)), CAST(108.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[FoodProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Meals] ON 

INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (1, N'Owsianka z orzechami i miodem', CAST(8.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(50.0 AS Decimal(4, 1)), 350, N'Breakfast', N'Utrzymanie zdrowia', N'Orzechy', N'Bezglutenowa', N'Produkty zbożowe', N'Istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (2, N'Owsianka z orzechami i miodem', CAST(8.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(50.0 AS Decimal(4, 1)), 350, N'Breakfast', N'Utrzymanie zdrowia', N'Orzechy', N'Bezglutenowa', N'Produkty zbożowe', N'Nie Istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (3, N'Smoothie warzywne', CAST(5.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), 200, N'Breakfast', N'Utrata Wagi', N'Brak', N'Wegetariańska', N'Warzywa', N'Nie istotne', N'Brak', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (4, N'Smoothie warzywne', CAST(5.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), 200, N'Breakfast', N'Utrata Wagi', N'Brak', N'Wegetariańska', N'Warzywa', N'Istotne', N'Brak', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (5, N'Tofu scramble', CAST(20.0 AS Decimal(4, 1)), CAST(15.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), 250, N'Breakfast', N'Utrzymanie wagi', N'Brak', N'Wegańska', N'Warzywa', N'Nie istotne', N'Brak', N'Czerwone mięso')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (6, N'Tofu scramble', CAST(20.0 AS Decimal(4, 1)), CAST(15.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), 250, N'Breakfast', N'Utrzymanie wagi', N'Brak', N'Wegańska', N'Warzywa', N'Istotne', N'Brak', N'Czerwone mięso')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (7, N'Jajecznica na boczku', CAST(20.0 AS Decimal(4, 1)), CAST(25.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), 320, N'Breakfast', N'Poprawa samopoczucia', N'Brak', N'Brak', N'Mięso', N'Istotne', N'Kuchnia amerykańska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (8, N'Jajecznica na boczku', CAST(20.0 AS Decimal(4, 1)), CAST(25.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), 320, N'Breakfast', N'Poprawa samopoczucia', N'Brak', N'Brak', N'Mięso', N'Nie istotne', N'Kuchnia amerykańska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (9, N'Jajecznica na boczku', CAST(20.0 AS Decimal(4, 1)), CAST(25.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), 320, N'Breakfast', N'Poprawa samopoczucia', N'Brak', N'Brak', N'Mięso', N'Istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (10, N'Jajecznica na boczku', CAST(20.0 AS Decimal(4, 1)), CAST(25.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), 320, N'Breakfast', N'Poprawa samopoczucia', N'Brak', N'Brak', N'Mięso', N'Nie istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (11, N'Parfait z jogurtu greckiego i granoli', CAST(12.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 300, N'Breakfast', N'Utrzymanie zdrowia', N'Laktoza', N'Wegetariańska', N'Produkty zbożowe', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (12, N'Parfait z jogurtu greckiego i granoli', CAST(12.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 300, N'Breakfast', N'Utrzymanie zdrowia', N'Laktoza', N'Wegetariańska', N'Produkty zbożowe', N'Istotne', N'Kuchnia śródziemnomorska', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (13, N'Parfait z jogurtu greckiego i granoli', CAST(12.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 300, N'Breakfast', N'Utrzymanie zdrowia', N'Laktoza', N'Wegetariańska', N'Produkty zbożowe', N'Nie istotne', N'Brak', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (14, N'Parfait z jogurtu greckiego i granoli', CAST(12.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 300, N'Breakfast', N'Utrzymanie zdrowia', N'Laktoza', N'Wegetariańska', N'Produkty zbożowe', N'Istotne', N'Brak', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (15, N'Chleb z awokado i jajkiem', CAST(15.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(35.0 AS Decimal(4, 1)), 400, N'Breakfast', N'Utrata Wagi', N'Brak', N'Brak', N'Warzywa', N'Istotne', N'Brak', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (16, N'Chleb z awokado i jajkiem', CAST(15.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(35.0 AS Decimal(4, 1)), 400, N'Breakfast', N'Utrata Wagi', N'Brak', N'Brak', N'Warzywa', N'Nie istotne', N'Brak', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (17, N'Kaszotto z dynią i kurczakiem', CAST(30.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 450, N'Breakfast', N'Utrzymanie wagi', N'Brak', N'Brak', N'Mięso', N'Nie istotne', N'Kuchnia azjatycka', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (18, N'Kaszotto z dynią i kurczakiem', CAST(30.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 450, N'Breakfast', N'Utrzymanie wagi', N'Brak', N'Brak', N'Mięso', N'Istotne', N'Kuchnia azjatycka', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (19, N'Kaszotto z dynią i kurczakiem', CAST(30.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 450, N'Breakfast', N'Utrzymanie wagi', N'Brak', N'Brak', N'Mięso', N'Nie istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (20, N'Kaszotto z dynią i kurczakiem', CAST(30.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 450, N'Breakfast', N'Utrzymanie wagi', N'Brak', N'Brak', N'Mięso', N'Istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (21, N'Bananowe pancakes', CAST(8.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(55.0 AS Decimal(4, 1)), 350, N'Breakfast', N'Poprawa samopoczucia', N'Gluten', N'Bezglutenowa', N'Owoce', N'Istotne', N'Brak', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (22, N'Bananowe pancakes', CAST(8.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(55.0 AS Decimal(4, 1)), 350, N'Breakfast', N'Poprawa samopoczucia', N'Gluten', N'Bezglutenowa', N'Owoce', N'Nie istotne', N'Brak', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (23, N'Sałatka owocowa z jogurtem naturalnym', CAST(5.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), 180, N'Breakfast', N'Utrzymanie zdrowia', N'Laktoza', N'Wegetariańska', N'Owoce', N'Nie istotne', N'Brak', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (24, N'Sałatka owocowa z jogurtem naturalnym', CAST(5.0 AS Decimal(4, 1)), CAST(2.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), 180, N'Breakfast', N'Utrzymanie zdrowia', N'Laktoza', N'Wegetariańska', N'Owoce', N'Istotne', N'Brak', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (25, N'Grillowana pierś z kurczaka z quinoa', CAST(80.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(90.0 AS Decimal(4, 1)), 1000, N'Lunch', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Mięso', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (26, N'Grillowana pierś z kurczaka z quinoa', CAST(80.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(90.0 AS Decimal(4, 1)), 1000, N'Lunch', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Mięso', N'Istotne', N'Kuchnia śródziemnomorska', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (27, N'Wegetariańska lasagne', CAST(40.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), CAST(120.0 AS Decimal(4, 1)), 900, N'Lunch', N'Poprawa samopoczucia', N'Laktoza', N'Wegetariańska', N'Warzywa', N'Istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (28, N'Wegetariańska lasagne', CAST(40.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), CAST(120.0 AS Decimal(4, 1)), 900, N'Lunch', N'Poprawa samopoczucia', N'Laktoza', N'Wegetariańska', N'Warzywa', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (29, N'Wegański burger z batatów', CAST(20.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(140.0 AS Decimal(4, 1)), 700, N'Lunch', N'Utrata Wagi', N'Gluten', N'Wegańska', N'Warzywa', N'Nie istotne', N'Kuchnia amerykańska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (30, N'Wegański burger z batatów', CAST(20.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(140.0 AS Decimal(4, 1)), 700, N'Lunch', N'Utrata Wagi', N'Gluten', N'Wegańska', N'Warzywa', N'Istotne', N'Kuchnia amerykańska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (31, N'Pad Thai z tofu', CAST(50.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(100.0 AS Decimal(4, 1)), 1100, N'Lunch', N'Utrzymanie wagi', N'Brak', N'Bezglutenowa', N'Ryby', N'Istotne', N'Kuchnia azjatycka', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (32, N'Pad Thai z tofu', CAST(50.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(100.0 AS Decimal(4, 1)), 1100, N'Lunch', N'Utrzymanie wagi', N'Brak', N'Bezglutenowa', N'Ryby', N'Nie istotne', N'Kuchnia azjatycka', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (33, N'Sałatka śródziemnomorska z grillowanym łososiem', CAST(70.0 AS Decimal(4, 1)), CAST(50.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 960, N'Lunch', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Ryby', N'Istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (34, N'Sałatka śródziemnomorska z grillowanym łososiem', CAST(70.0 AS Decimal(4, 1)), CAST(50.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 960, N'Lunch', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Ryby', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (35, N'Keto stek z pieczonymi warzywami', CAST(100.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 1200, N'Lunch', N'Utrzymanie wagi', N'Brak', N'Keto', N'Mięso', N'Istotne', N'Kuchnia amerykańska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (36, N'Keto stek z pieczonymi warzywami', CAST(100.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 1200, N'Lunch', N'Utrzymanie wagi', N'Brak', N'Keto', N'Mięso', N'Nie istotne', N'Kuchnia amerykańska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (37, N'Curry z ciecierzycy', CAST(36.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 720, N'Lunch', N'Poprawa samopoczucia', N'Brak', N'Wegańska', N'Warzywa', N'Istotne', N'Kuchnia azjatycka', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (38, N'Curry z ciecierzycy', CAST(36.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 720, N'Lunch', N'Poprawa samopoczucia', N'Brak', N'Wegańska', N'Warzywa', N'Nie istotne', N'Kuchnia azjatycka', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (39, N'Risotto z pieczarkami', CAST(30.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(120.0 AS Decimal(4, 1)), 800, N'Lunch', N'Poprawa samopoczucia', N'Brak', N'Bezglutenowa', N'Produkty zbożowe', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (40, N'Risotto z pieczarkami', CAST(30.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(120.0 AS Decimal(4, 1)), 800, N'Lunch', N'Poprawa samopoczucia', N'Brak', N'Bezglutenowa', N'Produkty zbożowe', N'Istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (41, N'Falafel w pitach z tzatziki', CAST(24.0 AS Decimal(4, 1)), CAST(32.0 AS Decimal(4, 1)), CAST(130.0 AS Decimal(4, 1)), 820, N'Lunch', N'Utrata Wagi', N'Gluten', N'Wegetariańska', N'Warzywa', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (42, N'Falafel w pitach z tzatziki', CAST(24.0 AS Decimal(4, 1)), CAST(32.0 AS Decimal(4, 1)), CAST(130.0 AS Decimal(4, 1)), 820, N'Lunch', N'Utrata Wagi', N'Gluten', N'Wegetariańska', N'Warzywa', N'Istotne', N'Kuchnia śródziemnomorska', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (43, N'Chili con carne', CAST(60.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(70.0 AS Decimal(4, 1)), 1040, N'Lunch', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Mięso', N'Istotne', N'Kuchnia amerykańska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (44, N'Chili con carne', CAST(60.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(70.0 AS Decimal(4, 1)), 1040, N'Lunch', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Mięso', N'Nie istotne', N'Kuchnia amerykańska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (45, N'Miso ramen z kurczakiem', CAST(70.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 1000, N'Lunch', N'Utrzymanie wagi', N'Brak', N'Brak', N'Ryby', N'Nie istotne', N'Kuchnia azjatycka', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (46, N'Miso ramen z kurczakiem', CAST(70.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 1000, N'Lunch', N'Utrzymanie wagi', N'Brak', N'Brak', N'Ryby', N'Istotne', N'Kuchnia azjatycka', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (47, N'Zupa krem z dyni', CAST(16.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 400, N'Lunch', N'Poprawa samopoczucia', N'Brak', N'Bezglutenowa', N'Warzywa', N'Nie istotne', N'Kuchnia amerykańska', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (48, N'Zupa krem z dyni', CAST(16.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(60.0 AS Decimal(4, 1)), 400, N'Lunch', N'Poprawa samopoczucia', N'Brak', N'Bezglutenowa', N'Warzywa', N'Istotne', N'Kuchnia amerykańska', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (49, N'Zupa krem z pieczonych pomidorów', CAST(10.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 400, N'Dinner', N'Utrata Wagi', N'Brak', N'Wegetariańska', N'Warzywa', N'Istotne', N'Kuchnia śródziemnomorska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (50, N'Zupa krem z pieczonych pomidorów', CAST(10.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), 400, N'Dinner', N'Utrata Wagi', N'Brak', N'Wegetariańska', N'Warzywa', N'Nie stotne', N'Kuchnia śródziemnomorska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (51, N'Pieczony dorsz z ziołami', CAST(44.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(0.0 AS Decimal(4, 1)), 240, N'Dinner', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Ryby', N'Nie istotne', N'Brak preferencji', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (52, N'Pieczony dorsz z ziołami', CAST(44.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), CAST(0.0 AS Decimal(4, 1)), 240, N'Dinner', N'Utrzymanie zdrowia', N'Brak', N'Brak', N'Ryby', N'Istotne', N'Brak preferencji', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (53, N'Risotto z grzybami', CAST(16.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), CAST(70.0 AS Decimal(4, 1)), 580, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Wegetariańska', N'Produkty zbożowe', N'Istotne', N'Kuchnia śródziemnomorska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (54, N'Risotto z grzybami', CAST(16.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), CAST(70.0 AS Decimal(4, 1)), 580, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Wegetariańska', N'Produkty zbożowe', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (55, N'Steak z grilla z sałatką', CAST(50.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), 600, N'Dinner', N'Utrzymanie wagi', N'Brak', N'Brak', N'Mięso', N'Nie istotne', N'Kuchnia amerykańska', N'Czerwone mięso')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (56, N'Steak z grilla z sałatką', CAST(50.0 AS Decimal(4, 1)), CAST(30.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), 600, N'Dinner', N'Utrzymanie wagi', N'Brak', N'Brak', N'Mięso', N'Istotne', N'Kuchnia amerykańska', N'Czerwone mięso')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (57, N'Curry z kurczaka z mlekiem kokosowym', CAST(36.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), 500, N'Dinner', N'Utrata Wagi', N'Brak', N'Bezglutenowa', N'Mięso', N'Istotne', N'Kuchnia azjatycka', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (58, N'Curry z kurczaka z mlekiem kokosowym', CAST(36.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), 500, N'Dinner', N'Utrata Wagi', N'Brak', N'Bezglutenowa', N'Mięso', N'Nie istotne', N'Kuchnia azjatycka', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (59, N'Wegetariański burger z batatów', CAST(12.0 AS Decimal(4, 1)), CAST(18.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 500, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Wegetariańska', N'Warzywa', N'Nie istotne', N'Brak preferencji', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (60, N'Wegetariański burger z batatów', CAST(12.0 AS Decimal(4, 1)), CAST(18.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 500, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Wegetariańska', N'Warzywa', N'Istotne', N'Brak preferencji', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (61, N'Spaghetti Carbonara', CAST(36.0 AS Decimal(4, 1)), CAST(44.0 AS Decimal(4, 1)), CAST(150.0 AS Decimal(4, 1)), 1100, N'Dinner', N'Utrzymanie zdrowia', N'Brak', N'Bezglutenowa', N'Produkty zbożowe', N'Istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (62, N'Spaghetti Carbonara', CAST(36.0 AS Decimal(4, 1)), CAST(44.0 AS Decimal(4, 1)), CAST(150.0 AS Decimal(4, 1)), 1100, N'Dinner', N'Utrzymanie zdrowia', N'Brak', N'Bezglutenowa', N'Produkty zbożowe', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (63, N'Spaghetti Carbonara', CAST(36.0 AS Decimal(4, 1)), CAST(44.0 AS Decimal(4, 1)), CAST(150.0 AS Decimal(4, 1)), 1100, N'Dinner', N'Utrzymanie zdrowia', N'Gluten', N'Brak', N'Produkty zbożowe', N'Istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (64, N'Spaghetti Carbonara', CAST(36.0 AS Decimal(4, 1)), CAST(44.0 AS Decimal(4, 1)), CAST(150.0 AS Decimal(4, 1)), 1100, N'Dinner', N'Utrzymanie zdrowia', N'Gluten', N'Brak', N'Produkty zbożowe', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (65, N'Sałatka grecka z fetą', CAST(16.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), 360, N'Dinner', N'Utrzymanie wagi', N'Brak', N'Wegańska', N'Warzywa', N'Nie istotne', N'Kuchnia śródziemnomorska', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (66, N'Sałatka grecka z fetą', CAST(16.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), 360, N'Dinner', N'Utrzymanie wagi', N'Brak', N'Wegańska', N'Warzywa', N'Istotne', N'Kuchnia śródziemnomorska', N'Produkty mleczne')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (67, N'Szparagi z jajkiem sadzonym', CAST(20.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), 360, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Brak', N'Warzywa', N'Istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (68, N'Szparagi z jajkiem sadzonym', CAST(20.0 AS Decimal(4, 1)), CAST(24.0 AS Decimal(4, 1)), CAST(10.0 AS Decimal(4, 1)), 360, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Brak', N'Warzywa', N'Nie istotne', N'Brak', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (69, N'Keto pizza z niskowęglowodanowym spodem', CAST(30.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), 640, N'Dinner', N'Utrata Wagi', N'Brak', N'Keto', N'Produkty zbożowe', N'Nie istotne', N'Kuchnia amerykańska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (70, N'Keto pizza z niskowęglowodanowym spodem', CAST(30.0 AS Decimal(4, 1)), CAST(40.0 AS Decimal(4, 1)), CAST(20.0 AS Decimal(4, 1)), 640, N'Dinner', N'Utrata Wagi', N'Brak', N'Keto', N'Produkty zbożowe', N'Istotne', N'Kuchnia amerykańska', N'Cukry proste')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (71, N'Falafel w chlebie pita', CAST(26.0 AS Decimal(4, 1)), CAST(36.0 AS Decimal(4, 1)), CAST(110.0 AS Decimal(4, 1)), 840, N'Dinner', N'Utrzymanie zdrowia', N'Brak', N'Wegetariańska', N'Produkty zbożowe', N'Istotne', N'Kuchnia azjatycka', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (72, N'Falafel w chlebie pita', CAST(26.0 AS Decimal(4, 1)), CAST(36.0 AS Decimal(4, 1)), CAST(110.0 AS Decimal(4, 1)), 840, N'Dinner', N'Utrzymanie zdrowia', N'Brak', N'Wegetariańska', N'Produkty zbożowe', N'Nie istotne', N'Kuchnia azjatycka', N'Smażone potrawy')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (73, N'Ramen z tofu i warzywami', CAST(22.0 AS Decimal(4, 1)), CAST(14.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 600, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Wegańska', N'Warzywa', N'Nie istotne', N'Kuchnia azjatycka', N'Nie')
INSERT [dbo].[Meals] ([Id], [Name], [Protein], [Fats], [Carbohydrates], [Calories], [MealType], [Goals], [Allergy], [Type], [FoodType], [ProductType], [RegionTypeFood], [ExcludedProducts]) VALUES (74, N'Ramen z tofu i warzywami', CAST(22.0 AS Decimal(4, 1)), CAST(14.0 AS Decimal(4, 1)), CAST(80.0 AS Decimal(4, 1)), 600, N'Dinner', N'Poprawa samopoczucia', N'Brak', N'Wegańska', N'Warzywa', N'Istotne', N'Kuchnia azjatycka', N'Nie')
SET IDENTITY_INSERT [dbo].[Meals] OFF
GO
SET IDENTITY_INSERT [dbo].[PossibleAnswersDiet] ON 

INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (1, 1, N'A', N'Utrata Wagi')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (2, 1, N'B', N'Poprawa samopoczucia')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (3, 1, N'C', N'Utrzymanie zdrowia')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (4, 1, N'D', N'Utrzymanie wagi')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (5, 2, N'A', N'Gluten')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (6, 2, N'B', N'Laktoza')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (7, 2, N'C', N'Orzechy')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (8, 2, N'D', N'Nie mam')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (9, 3, N'A', N'Wegetariańska')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (10, 3, N'B', N'Wegańska')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (11, 3, N'C', N'Bezglutenowa')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (12, 3, N'D', N'Keto')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (13, 3, N'E', N'Brak preferencji')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (14, 4, N'A', N'Mięso')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (15, 4, N'B', N'Ryby')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (16, 4, N'C', N'Warzywa')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (17, 4, N'D', N'Owoce')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (18, 4, N'E', N'Produkty zbożowe')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (19, 4, N'F', N'Brak preferencji')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (20, 5, N'A', N'Istotne')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (21, 5, N'B', N'Nie istotne')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (22, 6, N'A', N'Kuchnia azjatycka')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (23, 6, N'B', N'Kuchnia śródziemnomorska')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (24, 6, N'C', N'Kuchnia amerykańska')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (25, 6, N'D', N'Brak preferencji')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (26, 7, N'A', N'Czerwone mięso')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (27, 7, N'B', N'Produkty mleczne')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (28, 7, N'C', N'Cukry proste')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (29, 7, N'D', N'Smażone potrawy')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (30, 7, N'E', N'Nie wykluczam niczego')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (31, 9, N'A', N'Codziennie')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (32, 9, N'B', N'Kilka razy w tygodniu')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (33, 9, N'C', N'Rzadko')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (34, 9, N'C', N'Nigdy')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (35, 10, N'A', N'1-2 razy dziennie')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (36, 10, N'B', N'3 razy dziennie')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (37, 10, N'C', N'Więcej niż 3 razy dziennie')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (38, 11, N'A', N'Małe')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (39, 11, N'B', N'Średnie')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (40, 11, N'C', N'Duże')
INSERT [dbo].[PossibleAnswersDiet] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (41, 1, N'E', N'Mix celów')
SET IDENTITY_INSERT [dbo].[PossibleAnswersDiet] OFF
GO
SET IDENTITY_INSERT [dbo].[PossibleAnswersExercises] ON 

INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (1, 1, N'A', N'Bardzo niski - prawie w ogóle nie ćwiczę')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (2, 1, N'B', N'Niski - czasami chodzę na spacery')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (3, 1, N'C', N'Średni - regularnie ćwiczę kilka razy w tygodniu')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (4, 1, N'D', N'Wysoki - ćwiczę codziennie')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (5, 2, N'A', N'1-2 razy w tygodniu')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (6, 2, N'B', N'3-4 razy w tygodniu')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (7, 2, N'C', N'5-6 razy w tygodniu')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (8, 2, N'D', N'Codziennie')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (9, 3, N'A', N'Utrata wagi')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (10, 3, N'B', N'Poprawa kondycji fizycznej')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (11, 3, N'C', N'Poprawa samopoczucia')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (12, 4, N'A', N'Nie, jestem początkujący')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (13, 4, N'B', N'Tak, ale tylko podstawowe')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (14, 4, N'C', N'Tak, regularnie ćwiczę')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (15, 5, N'A', N'Intensywne')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (16, 5, N'B', N'Mniej intensywne')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (17, 5, N'C', N'Mało wyczerpujące')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (18, 5, N'D', N'Różnorodność - mix typów')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (19, 6, N'A', N'W domu/siłowni')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (20, 6, N'B', N'Na świeżym powietrzu')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (21, 7, N'A', N'Mniej niż 15 minut')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (22, 7, N'B', N'15-30 minut')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (23, 7, N'C', N'Około godziny')
INSERT [dbo].[PossibleAnswersExercises] ([Id], [QuestionId], [AnswerOption], [AnswerText]) VALUES (24, 3, N'D', N'Mix celów')
SET IDENTITY_INSERT [dbo].[PossibleAnswersExercises] OFF
GO
SET IDENTITY_INSERT [dbo].[Price] ON 

INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (1, CAST(N'2024-03-13T10:46:05.427' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik test@wp.pl podarował 19,99 zł na naszą aplikację.', N'test@wp.pl')
INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (2, CAST(N'2024-03-13T10:46:52.193' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik test@wp.pl podarował 19,99 zł na naszą aplikację.', N'test@wp.pl')
INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (3, CAST(N'2024-03-13T10:47:42.740' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik test@wp.pl podarował 19,99 zł na naszą aplikację.', N'test@wp.pl')
INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (4, CAST(N'2024-03-13T10:50:18.540' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik test@wp.pl podarował 19,99 zł na naszą aplikację.', N'test@wp.pl')
INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (5, CAST(N'2024-03-13T10:53:11.967' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik test@wp.pl podarował 19,99 zł na naszą aplikację.', N'test@wp.pl')
INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (6, CAST(N'2024-03-13T10:53:46.953' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik test@wp.pl podarował 19,99 zł na naszą aplikację.', N'test@wp.pl')
INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (7, CAST(N'2024-03-13T10:59:20.403' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik  podarował 19,99 zł na naszą aplikację.', N'')
INSERT [dbo].[Price] ([Id], [Date], [Price], [Message], [UserName]) VALUES (8, CAST(N'2024-03-13T23:26:35.450' AS DateTime), CAST(19.99 AS Decimal(10, 2)), N'Użytkownik untus1@wp.pl podarował 19,99 zł na naszą aplikację.', N'untus1@wp.pl')
SET IDENTITY_INSERT [dbo].[Price] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionDiet] ON 

INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (1, N'Jakie są Twoje główne cele żywieniowe?', N'Goals', CAST(N'2024-04-16T16:26:21.557' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (2, N'Czy masz jakieś alergie pokarmowe lub nietolerancje??', N'Allergy', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (3, N'Czy preferujesz jakąś określoną dietę?', N'Type', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (4, N'Jakie rodzaje żywności preferujesz?', N'Food Type', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (5, N'Jak ważne są dla ciebie organiczne lub naturalne produkty?', N'Product Type', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (6, N'Czy preferujesz potrawy z określonego regionu świata?', N'Region Type Food', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (7, N'Czy wykluczasz jakieś produkty ze swojej diety?', N'Excluded Products', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (9, N'Czy gotujesz w domu?', N'Cooking', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (10, N'Jak często spożywasz posiłki?', N'Frequency', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (11, N'Jak duże są zazwyczaj Twoje porcje posiłków?', N'Size', CAST(N'2024-04-16T16:26:21.570' AS DateTime), 1)
INSERT [dbo].[QuestionDiet] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (12, N'Według kalkulatora, ile wynosi twoje zapotrzebowanie kaloryczne?', N'Calories', CAST(N'2024-04-16T17:20:00.353' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[QuestionDiet] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionExercises] ON 

INSERT [dbo].[QuestionExercises] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (1, N'Jak oceniasz swój obecny poziom aktywności fizycznej?', N'Activity rating', CAST(N'2024-04-11T17:26:01.120' AS DateTime), 1)
INSERT [dbo].[QuestionExercises] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (2, N'Ile razy w tygodniu jesteś w stanie poświęcić czas na ćwiczenia?', N'Availability', CAST(N'2024-04-11T17:26:01.120' AS DateTime), 1)
INSERT [dbo].[QuestionExercises] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (3, N'Jakie są Twoje główne cele odchudzania?', N'Goals', CAST(N'2024-04-11T17:26:01.120' AS DateTime), 1)
INSERT [dbo].[QuestionExercises] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (4, N'Czy masz jakieś doświadczenie z ćwiczeniami fizycznymi?', N'DifficultyLevel', CAST(N'2024-04-11T17:26:01.120' AS DateTime), 1)
INSERT [dbo].[QuestionExercises] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (5, N'Jakiego rodzaju intenstywności wolisz treningi?', N'IntensityLevel', CAST(N'2024-04-11T17:26:01.120' AS DateTime), 1)
INSERT [dbo].[QuestionExercises] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (6, N'W jakich miejscach preferujesz ćwiczyć?', N'Location', CAST(N'2024-04-11T17:26:01.120' AS DateTime), 1)
INSERT [dbo].[QuestionExercises] ([Id], [QuestionText], [Category], [DateCreated], [IsActive]) VALUES (7, N'Ile czasu dziennie możesz poświęcić na ćwiczenia?', N'DurationMinutes', CAST(N'2024-04-11T17:26:01.120' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[QuestionExercises] OFF
GO
SET IDENTITY_INSERT [dbo].[Recipes] ON 

INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (1, 1, N'1. Wymieszaj płatki owsiane z mlekiem lub wodą i gotuj na średnim ogniu. 2. Dodaj szczyptę soli i miód do smaku. 3. Posyp gotową owsiankę orzechami.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (2, 2, N'1. Wymieszaj płatki owsiane z mlekiem lub wodą i gotuj na średnim ogniu. 2. Dodaj szczyptę soli i miód do smaku. 3. Posyp gotową owsiankę orzechami.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (3, 3, N'1. Włóż wszystkie warzywa i owoce do blendera. 2. Dodaj trochę wody lub mleka roślinnego, aby ułatwić miksowanie. 3. Mieszaj do uzyskania gładkiej konsystencji.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (4, 4, N'1. Włóż wszystkie warzywa i owoce do blendera. 2. Dodaj trochę wody lub mleka roślinnego, aby ułatwić miksowanie. 3. Mieszaj do uzyskania gładkiej konsystencji.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (5, 5, N'1. Rozgrzej patelnię z odrobiną oleju. 2. Dodaj pokruszone tofu i smaż przez kilka minut. 3. Dodaj ulubione warzywa i przyprawy, smaż do miękkości.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (6, 6, N'1. Rozgrzej patelnię z odrobiną oleju. 2. Dodaj pokruszone tofu i smaż przez kilka minut. 3. Dodaj ulubione warzywa i przyprawy, smaż do miękkości.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (7, 7, N'1. Usmaż boczek na chrupko. 2. Na tej samej patelni usmaż jajka. 3. Podawaj jajecznice z boczkiem na ciepło.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (8, 8, N'1. Usmaż boczek na chrupko. 2. Na tej samej patelni usmaż jajka. 3. Podawaj jajecznice z boczkiem na ciepło.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (9, 9, N'1. Usmaż boczek na chrupko. 2. Na tej samej patelni usmaż jajka. 3. Podawaj jajecznice z boczkiem na ciepło.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (10, 10, N'1. Usmaż boczek na chrupko. 2. Na tej samej patelni usmaż jajka. 3. Podawaj jajecznice z boczkiem na ciepło.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (11, 11, N'1. Wymieszaj jogurt z granolą i warstwami świeżych owoców. 2. Na wierzch dodaj łyżkę miodu lub syropu klonowego.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (12, 12, N'1. Wymieszaj jogurt z granolą i warstwami świeżych owoców. 2. Na wierzch dodaj łyżkę miodu lub syropu klonowego.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (13, 13, N'1. Wymieszaj jogurt z granolą i warstwami świeżych owoców. 2. Na wierzch dodaj łyżkę miodu lub syropu klonowego.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (14, 14, N'1. Wymieszaj jogurt z granolą i warstwami świeżych owoców. 2. Na wierzch dodaj łyżkę miodu lub syropu klonowego.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (15, 15, N'1. Pokrój awokado i rozgnieć je z solą i pieprzem. 2. Posmaruj chleb pastą awokadową. 3. Na wierzch połóż usmażone jajko.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (16, 16, N'1. Pokrój awokado i rozgnieć je z solą i pieprzem. 2. Posmaruj chleb pastą awokadową. 3. Na wierzch połóż usmażone jajko.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (17, 17, N'1. Ugotuj kaszę według instrukcji na opakowaniu. 2. W osobnym naczyniu usmaż kurczaka z przyprawami. 3. Dodaj dynię i ugotowaną kaszę, mieszaj do połączenia składników.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (18, 18, N'1. Ugotuj kaszę według instrukcji na opakowaniu. 2. W osobnym naczyniu usmaż kurczaka z przyprawami. 3. Dodaj dynię i ugotowaną kaszę, mieszaj do połączenia składników.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (19, 19, N'1. Ugotuj kaszę według instrukcji na opakowaniu. 2. W osobnym naczyniu usmaż kurczaka z przyprawami. 3. Dodaj dynię i ugotowaną kaszę, mieszaj do połączenia składników.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (20, 20, N'1. Ugotuj kaszę według instrukcji na opakowaniu. 2. W osobnym naczyniu usmaż kurczaka z przyprawami. 3. Dodaj dynię i ugotowaną kaszę, mieszaj do połączenia składników.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (21, 21, N'1. Wymieszaj w misce mąkę, rozgniecione banany, jajko i mleko. 2. Na patelni rozgrzej odrobinę oleju. 3. Smaż pancakes na złoty kolor z obu stron.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (22, 22, N'1. Wymieszaj w misce mąkę, rozgniecione banany, jajko i mleko. 2. Na patelni rozgrzej odrobinę oleju. 3. Smaż pancakes na złoty kolor z obu stron.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (23, 23, N'1. Umyj i pokrój owoce. 2. Wymieszaj je z jogurtem naturalnym. 3. Na wierzch możesz dodać miód lub niewielką ilość orzechów.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (24, 24, N'1. Umyj i pokrój owoce. 2. Wymieszaj je z jogurtem naturalnym. 3. Na wierzch możesz dodać miód lub niewielką ilość orzechów.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (25, 25, N'1. Umyj i ugotuj quinoa zgodnie z instrukcją na opakowaniu. 2. Grilluj pierś z kurczaka doprawioną ulubionymi ziołami. 3. Podawaj kurczaka na łóżku z quinoa z dodatkiem świeżych warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (26, 26, N'1. Umyj i ugotuj quinoa zgodnie z instrukcją na opakowaniu. 2. Grilluj pierś z kurczaka doprawioną ulubionymi ziołami. 3. Podawaj kurczaka na łóżku z quinoa z dodatkiem świeżych warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (27, 27, N'1. Ugotuj lasagne al dente. 2. Przygotuj sos pomidorowy z dodatkiem świeżych warzyw. 3. Warstwuj lasagne z sosem i piecz w piekarniku przez 25 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (28, 28, N'1. Ugotuj lasagne al dente. 2. Przygotuj sos pomidorowy z dodatkiem świeżych warzyw. 3. Warstwuj lasagne z sosem i piecz w piekarniku przez 25 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (29, 29, N'1. Ugotuj bataty do miękkości, następnie zblenduj na puree. 2. Formuj kotlety i smaż na niewielkiej ilości oleju. 3. Podawaj w bułce z dodatkiem świeżych warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (30, 30, N'1. Ugotuj bataty do miękkości, następnie zblenduj na puree. 2. Formuj kotlety i smaż na niewielkiej ilości oleju. 3. Podawaj w bułce z dodatkiem świeżych warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (31, 31, N'1. Przygotuj makaron ryżowy. 2. Smaż tofu z dodatkiem warzyw i sosu sojowego. 3. Dodaj ugotowany makaron do mieszanki i podgrzej.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (32, 32, N'1. Przygotuj makaron ryżowy. 2. Smaż tofu z dodatkiem warzyw i sosu sojowego. 3. Dodaj ugotowany makaron do mieszanki i podgrzej.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (33, 33, N'1. Grilluj łososia z dodatkiem cytryny i ziół. 2. Przygotuj sałatkę ze świeżych warzyw śródziemnomorskich. 3. Połącz wszystko na talerzu.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (34, 34, N'1. Grilluj łososia z dodatkiem cytryny i ziół. 2. Przygotuj sałatkę ze świeżych warzyw śródziemnomorskich. 3. Połącz wszystko na talerzu.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (35, 35, N'1. Przygotuj stek do smażenia na preferowany stopień wysmażenia. 2. Piecz warzywa z oliwą i ziołami. 3. Podawaj stek z warzywami.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (36, 36, N'1. Przygotuj stek do smażenia na preferowany stopień wysmażenia. 2. Piecz warzywa z oliwą i ziołami. 3. Podawaj stek z warzywami.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (37, 37, N'1. Ugotuj ciecierzycę z dodatkiem curry i mleczka kokosowego. 2. Podawaj z ryżem lub naanem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (38, 38, N'1. Ugotuj ciecierzycę z dodatkiem curry i mleczka kokosowego. 2. Podawaj z ryżem lub naanem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (39, 39, N'1. Ugotuj ryż. 2. Smaż pieczarki z cebulą, dodaj ryż i śmietanę. 3. Dopraw solą i pieprzem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (40, 40, N'1. Ugotuj ryż. 2. Smaż pieczarki z cebulą, dodaj ryż i śmietanę. 3. Dopraw solą i pieprzem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (41, 41, N'1. Przygotuj ciasto do falafela i formuj kulki. 2. Smaż kulki na oleju do zrumienienia. 3. Podawaj w pitach z sosem tzatziki.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (42, 42, N'1. Przygotuj ciasto do falafela i formuj kulki. 2. Smaż kulki na oleju do zrumienienia. 3. Podawaj w pitach z sosem tzatziki.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (43, 43, N'1. Ugotuj mięso z fasolą i pomidorami. 2. Dopraw chili, solą i pieprzem. 3. Podawaj z ryżem lub pieczywem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (44, 44, N'1. Ugotuj mięso z fasolą i pomidorami. 2. Dopraw chili, solą i pieprzem. 3. Podawaj z ryżem lub pieczywem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (45, 45, N'1. Ugotuj makaron ramen. 2. Przygotuj bulion miso. 3. Dodaj kurczaka i warzywa do bulionu, podawaj z makaronem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (46, 46, N'1. Ugotuj makaron ramen. 2. Przygotuj bulion miso. 3. Dodaj kurczaka i warzywa do bulionu, podawaj z makaronem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (47, 47, N'1. Piecz dynię do miękkości. 2. Zblenduj dynię z dodatkiem śmietany i bulionu. 3. Podgrzej i dopraw do smaku.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (48, 48, N'1. Piecz dynię do miękkości. 2. Zblenduj dynię z dodatkiem śmietany i bulionu. 3. Podgrzej i dopraw do smaku.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (49, 49, N'1. Umyj i pokrój pomidory na połówki. 2. Piecz w 180°C przez 20 minut z czosnkiem i bazylią. 3. Zblenduj wszystko na krem, dodaj śmietanę i podgrzej.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (50, 50, N'1. Umyj i pokrój pomidory na połówki. 2. Piecz w 180°C przez 20 minut z czosnkiem i bazylią. 3. Zblenduj wszystko na krem, dodaj śmietanę i podgrzej.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (51, 51, N'1. Przypraw dorsza solą, pieprzem i ziołami. 2. Piecz w folii w 180°C przez 15 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (52, 52, N'1. Przypraw dorsza solą, pieprzem i ziołami. 2. Piecz w folii w 180°C przez 15 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (53, 53, N'1. Podsmaż cebulę na oliwie. 2. Dodaj pokrojone grzyby, smaż 5 minut. 3. Dodaj ryż, smaż 1 minutę. 4. Stopniowo dolewaj bulion, mieszając, aż ryż będzie al dente.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (54, 54, N'1. Podsmaż cebulę na oliwie. 2. Dodaj pokrojone grzyby, smaż 5 minut. 3. Dodaj ryż, smaż 1 minutę. 4. Stopniowo dolewaj bulion, mieszając, aż ryż będzie al dente.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (55, 55, N'1. Przypraw steki i grilluj po 4 minuty z każdej strony. 2. Podawaj z sałatką ze świeżych warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (56, 56, N'1. Przypraw steki i grilluj po 4 minuty z każdej strony. 2. Podawaj z sałatką ze świeżych warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (57, 57, N'1. Na oleju kokosowym zeszklij cebulę, dodaj kurczaka, smaż do zrumienienia. 2. Dodaj mleczko kokosowe i przyprawy curry, gotuj 20 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (58, 58, N'1. Na oleju kokosowym zeszklij cebulę, dodaj kurczaka, smaż do zrumienienia. 2. Dodaj mleczko kokosowe i przyprawy curry, gotuj 20 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (59, 59, N'1. Ugotuj bataty, zblenduj na purée. 2. Dodaj mąkę, uformuj burgery, piecz 30 minut w 180°C.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (60, 60, N'1. Ugotuj bataty, zblenduj na purée. 2. Dodaj mąkę, uformuj burgery, piecz 30 minut w 180°C.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (61, 61, N'1. Ugotuj makaron al dente. 2. Na patelni przygotuj sos ze śmietany, jaj i boczku. 3. Połącz makaron z sosem, podgrzewaj 2 minuty.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (62, 62, N'1. Ugotuj makaron al dente. 2. Na patelni przygotuj sos ze śmietany, jaj i boczku. 3. Połącz makaron z sosem, podgrzewaj 2 minuty.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (63, 63, N'1. Ugotuj makaron al dente. 2. Na patelni przygotuj sos ze śmietany, jaj i boczku. 3. Połącz makaron z sosem, podgrzewaj 2 minuty.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (64, 64, N'1. Ugotuj makaron al dente. 2. Na patelni przygotuj sos ze śmietany, jaj i boczku. 3. Połącz makaron z sosem, podgrzewaj 2 minuty.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (65, 65, N'1. Pokrój warzywa, wymieszaj z serem feta i oliwą. 2. Dopraw do smaku solą i oregano.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (66, 66, N'1. Pokrój warzywa, wymieszaj z serem feta i oliwą. 2. Dopraw do smaku solą i oregano.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (67, 67, N'1. Ugotuj szparagi al dente. 2. Usmaż jajko sadzone. 3. Podawaj szparagi z jajkiem i posypane parmezanem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (68, 68, N'1. Ugotuj szparagi al dente. 2. Usmaż jajko sadzone. 3. Podawaj szparagi z jajkiem i posypane parmezanem.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (69, 69, N'1. Przygotuj spód z mąki migdałowej i jaj. 2. Piecz 10 minut. 3. Dodaj sos i ulubione dodatki, piecz kolejne 10 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (70, 70, N'1. Przygotuj spód z mąki migdałowej i jaj. 2. Piecz 10 minut. 3. Dodaj sos i ulubione dodatki, piecz kolejne 10 minut.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (71, 71, N'1. Przygotuj ciasto z mąki, wody i soli. 2. Uformuj kule, smaż na głębokim oleju. 3. Podawaj z nadzieniem z ciecierzycy i warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (72, 72, N'1. Przygotuj ciasto z mąki, wody i soli. 2. Uformuj kule, smaż na głębokim oleju. 3. Podawaj z nadzieniem z ciecierzycy i warzyw.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (73, 73, N'1. Ugotuj makaron ramen. 2. W bulionie gotuj tofu i warzywa. 3. Podawaj makaron z bulionem, dodaj przyprawy do smaku.')
INSERT [dbo].[Recipes] ([Id], [MealId], [RecipeText]) VALUES (74, 74, N'1. Ugotuj makaron ramen. 2. W bulionie gotuj tofu i warzywa. 3. Podawaj makaron z bulionem, dodaj przyprawy do smaku.')
SET IDENTITY_INSERT [dbo].[Recipes] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAnswersDiet] ON 

INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (541, 1, 41, CAST(N'2024-05-08T17:34:35.780' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (542, 2, 8, CAST(N'2024-05-08T17:34:35.783' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (543, 3, 13, CAST(N'2024-05-08T17:34:35.787' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (544, 4, 19, CAST(N'2024-05-08T17:34:35.790' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (545, 5, 21, CAST(N'2024-05-08T17:34:35.790' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (546, 6, 25, CAST(N'2024-05-08T17:34:35.793' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (547, 7, 30, CAST(N'2024-05-08T17:34:35.793' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (548, 9, 34, CAST(N'2024-05-08T17:34:35.797' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (549, 10, 36, CAST(N'2024-05-08T17:34:35.800' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersDiet] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (550, 11, 38, CAST(N'2024-05-08T17:34:35.800' AS DateTime), N'test@wp.pl')
SET IDENTITY_INSERT [dbo].[UserAnswersDiet] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAnswersDietCalories] ON 

INSERT [dbo].[UserAnswersDietCalories] ([Id], [QuestionId], [Answer], [DateAnswered], [UserName]) VALUES (55, 12, 4000, CAST(N'2024-05-08T17:34:35.803' AS DateTime), N'test@wp.pl')
SET IDENTITY_INSERT [dbo].[UserAnswersDietCalories] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAnswersExercises] ON 

INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1379, 1, 1, CAST(N'2024-04-22T11:17:41.163' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1380, 2, 6, CAST(N'2024-04-22T11:17:41.203' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1381, 3, 11, CAST(N'2024-04-22T11:17:41.207' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1382, 4, 12, CAST(N'2024-04-22T11:17:41.207' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1383, 5, 18, CAST(N'2024-04-22T11:17:41.210' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1384, 6, 20, CAST(N'2024-04-22T11:17:41.213' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1385, 7, 21, CAST(N'2024-04-22T11:17:41.213' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1393, 2, 6, CAST(N'2024-05-08T16:34:19.070' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1394, 1, 2, CAST(N'2024-05-08T16:34:19.073' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1395, 3, 24, CAST(N'2024-05-08T16:34:19.077' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1396, 4, 13, CAST(N'2024-05-08T16:34:19.077' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1397, 5, 15, CAST(N'2024-05-08T16:34:19.080' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1398, 6, 19, CAST(N'2024-05-08T16:34:19.080' AS DateTime), N'test@wp.pl')
INSERT [dbo].[UserAnswersExercises] ([Id], [QuestionId], [ChosenAnswerId], [DateAnswered], [UserName]) VALUES (1399, 7, 21, CAST(N'2024-05-08T16:34:19.083' AS DateTime), N'test@wp.pl')
SET IDENTITY_INSERT [dbo].[UserAnswersExercises] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCaloriesNeeded] ON 

INSERT [dbo].[UserCaloriesNeeded] ([Id], [NewCaloriesDate], [CaloriesNeededResult], [UserName]) VALUES (9, CAST(N'2024-04-04T10:31:04.053' AS DateTime), CAST(1500.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesNeeded] ([Id], [NewCaloriesDate], [CaloriesNeededResult], [UserName]) VALUES (1009, CAST(N'2024-04-28T13:27:30.583' AS DateTime), CAST(1000.00 AS Decimal(10, 2)), N'untus1@wp.pl')
SET IDENTITY_INSERT [dbo].[UserCaloriesNeeded] OFF
GO
SET IDENTITY_INSERT [dbo].[UserCaloriesResult] ON 

INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1, CAST(N'2024-03-25T13:02:21.643' AS DateTime), 3, CAST(132.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (2, CAST(N'2024-03-25T13:02:47.277' AS DateTime), 3, CAST(165.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (3, CAST(N'2024-03-25T13:08:55.083' AS DateTime), 3, CAST(148.50 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (9, CAST(N'2024-03-25T15:53:02.947' AS DateTime), 2, CAST(74.10 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (15, CAST(N'2024-03-26T15:26:23.727' AS DateTime), 3, CAST(33.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (16, CAST(N'2024-03-26T16:27:27.040' AS DateTime), 20, CAST(38.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (23, CAST(N'2024-03-26T17:03:14.057' AS DateTime), 5, CAST(86.80 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (24, CAST(N'2024-03-27T16:29:13.670' AS DateTime), 14, CAST(416.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (25, CAST(N'2024-03-27T16:30:36.150' AS DateTime), 26, CAST(508.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (26, CAST(N'2024-03-27T16:30:52.423' AS DateTime), 15, CAST(654.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (27, CAST(N'2024-03-28T15:10:38.207' AS DateTime), 10, CAST(89.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (28, CAST(N'2024-04-03T22:44:48.537' AS DateTime), 17, CAST(2730.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (29, CAST(N'2024-04-04T10:30:31.243' AS DateTime), 15, CAST(1962.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1028, CAST(N'2024-04-07T12:54:10.820' AS DateTime), 10, CAST(445.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1029, CAST(N'2024-04-08T16:59:21.330' AS DateTime), 3, CAST(165.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1030, CAST(N'2024-04-08T16:59:24.570' AS DateTime), 13, CAST(34.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1031, CAST(N'2024-04-08T16:59:27.067' AS DateTime), 10, CAST(89.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1032, CAST(N'2024-04-08T16:59:30.673' AS DateTime), 41, CAST(364.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1033, CAST(N'2024-04-08T16:59:34.050' AS DateTime), 95, CAST(659.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1034, CAST(N'2024-04-28T13:40:21.343' AS DateTime), 3, CAST(19.80 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1035, CAST(N'2024-05-08T16:29:19.763' AS DateTime), 7, CAST(720.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1036, CAST(N'2024-05-08T16:29:31.323' AS DateTime), 65, CAST(381.00 AS Decimal(10, 2)), N'test@wp.pl')
INSERT [dbo].[UserCaloriesResult] ([Id], [NewCaloriesDate], [ProductId], [Calories], [UserName]) VALUES (1037, CAST(N'2024-05-08T16:29:44.060' AS DateTime), 74, CAST(57.00 AS Decimal(10, 2)), N'test@wp.pl')
SET IDENTITY_INSERT [dbo].[UserCaloriesResult] OFF
GO
SET IDENTITY_INSERT [dbo].[UserChatMessages] ON 

INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (8, N'"Cześć wszystkim! Czy ma ktoś doświadczenie z dietą ketogeniczną? Chciałbym spróbować, ale nie wiem od czego zacząć."', CAST(N'2024-04-28T15:42:47.003' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (9, N'Jakie ćwiczenia polecacie dla początkujących w siłowni?', CAST(N'2024-04-28T15:44:33.483' AS DateTime), N'd_garncarek@wp.pl')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (10, N'Czy ktoś może polecić dobry sposób na zwiększenie liczby kroków w ciągu dnia?', CAST(N'2024-04-28T15:44:45.373' AS DateTime), N'd_garncarek@wp.pl')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (11, N'Jak często powinienem zmieniać plan treningowy?', CAST(N'2024-04-28T15:45:32.770' AS DateTime), N'emil123@gmail.com')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (12, N'Czy intermittent fasting jest bezpieczny dla każdego? Ma ktoś osobiste doświadczenia?', CAST(N'2024-04-28T15:45:42.187' AS DateTime), N'emil123@gmail.com')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (13, N'Hej! Zacząłem dietę keto dwa miesiące temu i czuję się świetnie. Polecam zacząć od usunięcia wszystkich węglowodanów prostych z diety.', CAST(N'2024-04-28T15:46:00.613' AS DateTime), N'emil123@gmail.com')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (14, N'Pamiętaj, aby zawsze robić rozgrzewkę przed treningiem siłowym, to naprawdę pomaga w uniknięciu kontuzji.', CAST(N'2024-04-28T15:46:18.517' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (15, N'Nie zapominajcie o nawadnianiu! Pijcie wodę przed, w trakcie i po treningu.', CAST(N'2024-04-28T15:46:25.773' AS DateTime), N'untus1@wp.pl')
INSERT [dbo].[UserChatMessages] ([Id], [MessageText], [Date], [UserName]) VALUES (16, N'Aby zwiększyć liczbę kroków, staram się chodzić na krótkie spacery podczas przerw w pracy. Każde 500 kroków się liczy!', CAST(N'2024-04-28T15:46:51.160' AS DateTime), N'd_garncarek@wp.pl')
SET IDENTITY_INSERT [dbo].[UserChatMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[UserExerciseSets] ON 

INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2796, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.260' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2797, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2798, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2799, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2800, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2801, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2802, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2803, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2804, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2805, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2806, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2807, N'untus1@wp.pl', 26, CAST(N'2024-04-22T11:17:41.267' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2844, N'test@wp.pl', 116, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2845, N'test@wp.pl', 20, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2846, N'test@wp.pl', 91, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2847, N'test@wp.pl', 130, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2848, N'test@wp.pl', 64, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2849, N'test@wp.pl', 127, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 1)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2850, N'test@wp.pl', 38, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2851, N'test@wp.pl', 64, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2852, N'test@wp.pl', 78, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2853, N'test@wp.pl', 42, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2854, N'test@wp.pl', 127, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2855, N'test@wp.pl', 3, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2856, N'test@wp.pl', 116, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2857, N'test@wp.pl', 103, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2858, N'test@wp.pl', 20, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2859, N'test@wp.pl', 84, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2860, N'test@wp.pl', 114, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2861, N'test@wp.pl', 83, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2862, N'test@wp.pl', 75, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 2)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2863, N'test@wp.pl', 132, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2864, N'test@wp.pl', 114, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2865, N'test@wp.pl', 91, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2866, N'test@wp.pl', 37, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2867, N'test@wp.pl', 103, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2868, N'test@wp.pl', 78, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 3)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2869, N'test@wp.pl', 116, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2870, N'test@wp.pl', 130, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2871, N'test@wp.pl', 131, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2872, N'test@wp.pl', 83, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2873, N'test@wp.pl', 103, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2874, N'test@wp.pl', 75, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2875, N'test@wp.pl', 132, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2876, N'test@wp.pl', 127, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2877, N'test@wp.pl', 114, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2878, N'test@wp.pl', 20, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2879, N'test@wp.pl', 84, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2880, N'test@wp.pl', 37, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2881, N'test@wp.pl', 19, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2882, N'test@wp.pl', 21, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
INSERT [dbo].[UserExerciseSets] ([Id], [UserName], [ExerciseSetId], [DateAssigned], [TrainingDay]) VALUES (2883, N'test@wp.pl', 63, CAST(N'2024-05-08T16:34:19.090' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[UserExerciseSets] OFF
GO
SET IDENTITY_INSERT [dbo].[UserMealSets] ON 

INSERT [dbo].[UserMealSets] ([Id], [UserName], [BreakfastId], [LunchId], [DinnerId], [MealDay]) VALUES (238, N'test@wp.pl', 13, 47, 69, 1)
INSERT [dbo].[UserMealSets] ([Id], [UserName], [BreakfastId], [LunchId], [DinnerId], [MealDay]) VALUES (239, N'test@wp.pl', 2, 45, 62, 2)
INSERT [dbo].[UserMealSets] ([Id], [UserName], [BreakfastId], [LunchId], [DinnerId], [MealDay]) VALUES (240, N'test@wp.pl', 13, 41, 54, 3)
INSERT [dbo].[UserMealSets] ([Id], [UserName], [BreakfastId], [LunchId], [DinnerId], [MealDay]) VALUES (241, N'test@wp.pl', 2, 34, 69, 4)
INSERT [dbo].[UserMealSets] ([Id], [UserName], [BreakfastId], [LunchId], [DinnerId], [MealDay]) VALUES (242, N'test@wp.pl', 2, 47, 58, 5)
INSERT [dbo].[UserMealSets] ([Id], [UserName], [BreakfastId], [LunchId], [DinnerId], [MealDay]) VALUES (243, N'test@wp.pl', 5, 32, 68, 6)
INSERT [dbo].[UserMealSets] ([Id], [UserName], [BreakfastId], [LunchId], [DinnerId], [MealDay]) VALUES (244, N'test@wp.pl', 16, 29, 54, 7)
SET IDENTITY_INSERT [dbo].[UserMealSets] OFF
GO
SET IDENTITY_INSERT [dbo].[Weight] ON 

INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (55, CAST(N'2024-03-11T10:22:18.343' AS DateTime), CAST(80.00 AS Decimal(10, 2)), NULL, N'test123@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (56, CAST(N'2024-03-11T10:22:23.233' AS DateTime), NULL, CAST(66.00 AS Decimal(10, 2)), N'test123@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (69, CAST(N'2024-03-18T18:03:14.960' AS DateTime), CAST(88.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (71, CAST(N'2024-03-19T18:03:14.960' AS DateTime), CAST(89.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (72, CAST(N'2024-03-20T18:03:14.960' AS DateTime), CAST(87.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (73, CAST(N'2024-03-21T18:03:14.960' AS DateTime), CAST(87.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (74, CAST(N'2024-03-22T18:03:14.960' AS DateTime), CAST(89.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (75, CAST(N'2024-03-23T18:03:14.960' AS DateTime), CAST(85.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (76, CAST(N'2024-03-24T18:03:14.960' AS DateTime), CAST(87.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (77, CAST(N'2024-03-25T18:03:14.960' AS DateTime), CAST(88.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (78, CAST(N'2024-03-26T18:03:14.960' AS DateTime), CAST(85.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (79, CAST(N'2024-03-27T18:03:14.960' AS DateTime), CAST(82.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (82, CAST(N'2024-03-28T15:46:52.733' AS DateTime), CAST(85.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (83, CAST(N'2024-04-03T22:46:04.630' AS DateTime), CAST(88.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1084, CAST(N'2024-04-08T15:37:33.783' AS DateTime), CAST(86.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1086, CAST(N'2024-04-28T13:22:44.070' AS DateTime), CAST(86.00 AS Decimal(10, 2)), NULL, N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1088, CAST(N'2024-04-28T13:37:26.420' AS DateTime), NULL, CAST(60.00 AS Decimal(10, 2)), N'untus1@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1089, CAST(N'2024-04-03T17:14:30.323' AS DateTime), CAST(85.00 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1090, CAST(N'2024-04-04T17:14:30.323' AS DateTime), CAST(84.00 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1091, CAST(N'2024-04-05T17:14:30.323' AS DateTime), CAST(84.80 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1092, CAST(N'2024-04-06T17:14:30.323' AS DateTime), CAST(85.80 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1093, CAST(N'2024-04-07T17:14:30.323' AS DateTime), CAST(83.90 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1094, CAST(N'2024-04-08T17:14:30.323' AS DateTime), CAST(84.50 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1095, CAST(N'2024-04-09T17:14:30.323' AS DateTime), CAST(85.50 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1096, CAST(N'2024-04-10T17:14:30.323' AS DateTime), CAST(86.50 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1097, CAST(N'2024-04-11T17:14:30.323' AS DateTime), CAST(87.50 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1098, CAST(N'2024-04-12T17:14:30.323' AS DateTime), CAST(85.50 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1099, CAST(N'2024-04-13T17:14:30.323' AS DateTime), CAST(85.20 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1100, CAST(N'2024-04-14T17:14:30.323' AS DateTime), CAST(85.20 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1101, CAST(N'2024-04-15T17:14:30.323' AS DateTime), CAST(84.20 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1102, CAST(N'2024-04-16T17:14:30.323' AS DateTime), CAST(85.70 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1103, CAST(N'2024-04-17T17:14:30.323' AS DateTime), CAST(88.70 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1104, CAST(N'2024-04-18T17:14:30.323' AS DateTime), CAST(86.70 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1105, CAST(N'2024-04-19T17:14:30.323' AS DateTime), CAST(85.20 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1106, CAST(N'2024-04-20T17:14:30.323' AS DateTime), CAST(84.80 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1107, CAST(N'2024-04-21T17:14:30.323' AS DateTime), CAST(84.80 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1108, CAST(N'2024-04-22T17:14:30.323' AS DateTime), CAST(85.30 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1109, CAST(N'2024-04-23T17:14:30.323' AS DateTime), CAST(86.30 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1110, CAST(N'2024-04-24T17:14:30.323' AS DateTime), CAST(84.30 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1111, CAST(N'2024-04-25T17:14:30.323' AS DateTime), CAST(85.30 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1112, CAST(N'2024-04-26T17:14:30.323' AS DateTime), CAST(83.30 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1113, CAST(N'2024-04-27T17:14:30.323' AS DateTime), CAST(85.30 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1114, CAST(N'2024-04-28T17:14:30.323' AS DateTime), CAST(85.90 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1115, CAST(N'2024-04-29T17:14:30.323' AS DateTime), CAST(83.60 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1116, CAST(N'2024-04-30T17:14:30.323' AS DateTime), CAST(86.20 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1117, CAST(N'2024-05-01T17:14:30.323' AS DateTime), CAST(85.80 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1118, CAST(N'2024-05-02T17:14:30.323' AS DateTime), CAST(86.50 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1119, CAST(N'2024-05-03T17:14:30.323' AS DateTime), CAST(85.90 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1120, CAST(N'2024-05-04T17:14:30.323' AS DateTime), CAST(84.90 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1122, CAST(N'2024-05-08T16:28:51.143' AS DateTime), CAST(85.00 AS Decimal(10, 2)), NULL, N'test@wp.pl')
INSERT [dbo].[Weight] ([Id], [WeightDate], [UserWeight], [GoalWeight], [UserName]) VALUES (1123, CAST(N'2024-05-08T16:28:56.487' AS DateTime), NULL, CAST(83.00 AS Decimal(10, 2)), N'test@wp.pl')
SET IDENTITY_INSERT [dbo].[Weight] OFF
GO
ALTER TABLE [dbo].[QuestionDiet] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[QuestionExercises] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[PossibleAnswersDiet]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuestionDiet] ([Id])
GO
ALTER TABLE [dbo].[PossibleAnswersExercises]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuestionExercises] ([Id])
GO
ALTER TABLE [dbo].[Recipes]  WITH CHECK ADD FOREIGN KEY([MealId])
REFERENCES [dbo].[Meals] ([Id])
GO
ALTER TABLE [dbo].[UserAnswersDiet]  WITH CHECK ADD FOREIGN KEY([ChosenAnswerId])
REFERENCES [dbo].[PossibleAnswersDiet] ([Id])
GO
ALTER TABLE [dbo].[UserAnswersDiet]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuestionDiet] ([Id])
GO
ALTER TABLE [dbo].[UserAnswersDietCalories]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuestionDiet] ([Id])
GO
ALTER TABLE [dbo].[UserAnswersExercises]  WITH CHECK ADD FOREIGN KEY([ChosenAnswerId])
REFERENCES [dbo].[PossibleAnswersExercises] ([Id])
GO
ALTER TABLE [dbo].[UserAnswersExercises]  WITH CHECK ADD FOREIGN KEY([QuestionId])
REFERENCES [dbo].[QuestionExercises] ([Id])
GO
ALTER TABLE [dbo].[UserCaloriesResult]  WITH CHECK ADD  CONSTRAINT [FK_UserCaloriesResult_FoodProducts] FOREIGN KEY([ProductId])
REFERENCES [dbo].[FoodProducts] ([Id])
GO
ALTER TABLE [dbo].[UserCaloriesResult] CHECK CONSTRAINT [FK_UserCaloriesResult_FoodProducts]
GO
ALTER TABLE [dbo].[UserExerciseSets]  WITH CHECK ADD FOREIGN KEY([ExerciseSetId])
REFERENCES [dbo].[Exercises] ([Id])
GO
ALTER TABLE [dbo].[UserMealSets]  WITH CHECK ADD FOREIGN KEY([BreakfastId])
REFERENCES [dbo].[Meals] ([Id])
GO
ALTER TABLE [dbo].[UserMealSets]  WITH CHECK ADD FOREIGN KEY([DinnerId])
REFERENCES [dbo].[Meals] ([Id])
GO
ALTER TABLE [dbo].[UserMealSets]  WITH CHECK ADD FOREIGN KEY([LunchId])
REFERENCES [dbo].[Meals] ([Id])
GO
