--liquibase formatted sql
--changeset author:auto stripComments:false dbms:mssql endDelimiter:GO
CREATE TABLE [dbo].[country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[done_vaccination_calendar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[vaccine_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
 CONSTRAINT [PK_done_vaccination_calendar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[infection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[infection_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_infection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[patient](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[patronymic] [nvarchar](50) NOT NULL,
	[birth_date] [date] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_patient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[patient_infection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[infection_id] [int] NOT NULL,
	[patient_id] [int] NOT NULL,
 CONSTRAINT [PK_patient_infection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[serological_reason](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[serological_reason_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_serological_reason] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[serological_study](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[serological_reason_id] [int] NOT NULL,
	[infection_id] [int] NOT NULL,
	[result] [nchar](10) NOT NULL,
	[patient_id] [int] NOT NULL,
 CONSTRAINT [PK_serological_study] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[tuberculosis_test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[result] [float] NOT NULL,
	[patient_id] [int] NOT NULL,
 CONSTRAINT [PK_tuberculosis_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[is_admin] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[vaccination_calendar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[patient_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[infection_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
 CONSTRAINT [PK_vaccination_calendar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[vaccination_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vaccination_status_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[vaccine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vaccine_name] [nvarchar](max) NOT NULL,
	[vaccine_maker_id] [int] NOT NULL,
	[infection_id] [int] NOT NULL,
 CONSTRAINT [PK_vaccine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[vaccine_maker](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vaccine_maker_name] [nvarchar](max) NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_vaccine_maker] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[infection] ON 
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (1, N'Вирусный гепатит B')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (2, N'Туберкулез')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (3, N'Пневмококковая инфекция')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (4, N'Дифтерия')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (5, N'Коклюш')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (6, N'Столбняк')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (7, N'Полиомиелит')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (8, N'Гемофильная инфекция')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (9, N'Корь')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (10, N'Краснуха')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (11, N'Эпидемический паротит')
INSERT [dbo].[infection] ([id], [infection_name]) VALUES (12, N'Грипп')
SET IDENTITY_INSERT [dbo].[infection] OFF
GO

SET IDENTITY_INSERT [dbo].[country] ON 
INSERT [dbo].[country] ([id], [country_name]) VALUES (1, N'Россия')
INSERT [dbo].[country] ([id], [country_name]) VALUES (2, N'Франция   ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (3, N'Корея     ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (4, N'Хорватия  ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (5, N'Индия     ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (6, N'Италия    ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (7, N'Бельгия   ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (8, N'Германия  ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (9, N'Нидерланды')
INSERT [dbo].[country] ([id], [country_name]) VALUES (10, N'Австрия   ')
INSERT [dbo].[country] ([id], [country_name]) VALUES (11, N'Куба      ')
SET IDENTITY_INSERT [dbo].[country] OFF
GO

SET IDENTITY_INSERT [dbo].[vaccine_maker] ON 
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (1, N'ГУ НИИЭМ им. Гамалеи РАМН', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (2, N'ФГУП НПО Микроген МЗ', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (3, N'ОАО Биомед им. Мечникова', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (12, N'ЗАО Вектор-Би-Алъгам', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (13, N'ЗАО НПК Комбиотех', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (14, N'ООО СмитКляйн Бичем Биомед', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (15, N'ЗАО Медикотехнологический холдинг МТХ', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (16, N'СПНИИВС и ППВП', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (17, N'ЗАО Витафарма', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (18, N'РосНИПЧИ Микроб', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (19, N'ООО Гритвак', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (20, N'СтаврНИПЧИ', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (21, N'НИИ Микробиологии МО РФ', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (22, N'РостНИИ ПМ', 1)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (23, N'Авентис Пастер', 2)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (24, N'LG Кемикал Лтд', 3)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (25, N'Институт иммунологии', 4)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (26, N'Серум инститьют оф Индия', 5)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (27, N'Кайрон С.п.А.', 6)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (28, N'ГлаксоСмит Кляйн Байолоджикалс', 7)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (29, N'Зексишес Зерумвсрк Дрезден', 8)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (30, N'Кайрон Беринг ГмбХ и Ко', 8)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (31, N'Мерк Шарп Доум Б.В.', 9)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (32, N'Бакстер вакцины', 10)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (33, N'Эбер Биотек', 11)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (34, N'Солвей Фармасьютикалз БВ', 9)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (35, N'Шанта Биотехника', 5)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (36, N'Вокхард Лимитед', 5)
INSERT [dbo].[vaccine_maker] ([id], [vaccine_maker_name], [country_id]) VALUES (37, N'ФГУП Предприятие по производству БиВП ИПиВЭ им. М.П.Чумакова', 1)
SET IDENTITY_INSERT [dbo].[vaccine_maker] OFF
GO

SET IDENTITY_INSERT [dbo].[vaccine] ON 
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (4, N'Вакцина БЦЖ', 1, 2)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (5, N'Вакцина БЦЖ-М', 1, 2)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (6, N'Вакцина коревая культуральная живая сухая', 2, 9)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (7, N'Вакцина паротитная культуральная живая сухая', 2, 11)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (8, N'Вакцина паротитно-коревая культуральная живая сухая', 2, 9)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (9, N'АКДС-вакцина', 3, 5)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (11, N'АС-анатоксин', 3, 6)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (12, N'Вакцина полиомиелитная пероральная 1, 2, 3 типов', 37, 7)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (13, N'Вакцина гепатита В рекомбинантная дрожжевая жидкая', 13, 1)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (14, N'Вакцина против гепатита В рекомбинантная дрожжевая жидкая Энджерикс', 14, 1)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (15, N'Вакцина против гепатита В ДНК Рекомбинантная', 2, 1)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (16, N'Вакцина гриппозная аллантошсная очищенная для интраназалъного введения взрослым', 2, 12)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (17, N'Вакцина гриппозная аллантоисная очищенная для интраназального введения детям 3-14 лет', 2, 12)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (18, N'Вакцина гриппозная инактивированная элюатноцентрифужная жидкая (ИГВ)', 2, 12)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (19, N'РУВАКС', 23, 9)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (20, N'РУДИВАКС', 23, 10)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (21, N'ИМОВАКС ПОЛИО', 23, 7)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (22, N'ТЕТРАКОК', 23, 4)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (24, N'АКТ-ХИБ', 23, 8)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (25, N'ВАКСИГРИП', 23, 12)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (26, N'ПНЕВМО 23', 23, 3)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (27, N'ЭУВАКС В', 24, 1)
INSERT [dbo].[vaccine] ([id], [vaccine_name], [vaccine_maker_id], [infection_id]) VALUES (28, N'ФЛЮАРИКС', 29, 12)
SET IDENTITY_INSERT [dbo].[vaccine] OFF
GO

SET IDENTITY_INSERT [dbo].[serological_reason] ON 
INSERT [dbo].[serological_reason] ([id], [serological_reason_name]) VALUES (1, N'Плановое')
INSERT [dbo].[serological_reason] ([id], [serological_reason_name]) VALUES (2, N'Эпидпоказания')
SET IDENTITY_INSERT [dbo].[serological_reason] OFF
GO

SET IDENTITY_INSERT [dbo].[user] ON 
INSERT [dbo].[user] ([id], [username], [password], [is_admin]) VALUES (1, N'admin1', N'AIhMBBdKkWuQDM1W+3JlOt5bvxYbvBeWIxXvMcv9hPA1VboXnZK3cB08Cq2Nyl1uIA==', 1)
INSERT [dbo].[user] ([id], [username], [password], [is_admin]) VALUES (32, N'user1', N'AFmm7S8fvBt66i48dUQFQhMsxmXgBGEfSwSVhzAwYNNCsf1D86Hx8syITwL8QWELkQ==', 0)
INSERT [dbo].[user] ([id], [username], [password], [is_admin]) VALUES (33, N'user2', N'ACaoch3Z9T2dUaCymvTXq6nteUwpvffKy6wEyX3JTcF/JuG44Kt2QaEdW4jRn+MmVQ==', 0)
INSERT [dbo].[user] ([id], [username], [password], [is_admin]) VALUES (34, N'test1', N'AD4NHGJX9rfIEnzdOMuKDOi1Y0rNQMSKh540dDtm3k4EFix+BOJq2srZX7Sq80NLJg==', 0)
SET IDENTITY_INSERT [dbo].[user] OFF
GO

SET IDENTITY_INSERT [dbo].[vaccination_status] ON 
INSERT [dbo].[vaccination_status] ([id], [vaccination_status_name]) VALUES (1, N'Частичная')
INSERT [dbo].[vaccination_status] ([id], [vaccination_status_name]) VALUES (2, N'Полная')
INSERT [dbo].[vaccination_status] ([id], [vaccination_status_name]) VALUES (3, N'Ожидает')
SET IDENTITY_INSERT [dbo].[vaccination_status] OFF
GO

ALTER TABLE [dbo].[done_vaccination_calendar]  WITH CHECK ADD  CONSTRAINT [FK_done_vaccination_calendar_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[done_vaccination_calendar] CHECK CONSTRAINT [FK_done_vaccination_calendar_patient]
GO
ALTER TABLE [dbo].[done_vaccination_calendar]  WITH CHECK ADD  CONSTRAINT [FK_done_vaccination_calendar_vaccination_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[vaccination_status] ([id])
GO
ALTER TABLE [dbo].[done_vaccination_calendar] CHECK CONSTRAINT [FK_done_vaccination_calendar_vaccination_status]
GO
ALTER TABLE [dbo].[done_vaccination_calendar]  WITH CHECK ADD  CONSTRAINT [FK_done_vaccination_calendar_vaccine] FOREIGN KEY([vaccine_id])
REFERENCES [dbo].[vaccine] ([id])
GO
ALTER TABLE [dbo].[done_vaccination_calendar] CHECK CONSTRAINT [FK_done_vaccination_calendar_vaccine]
GO
ALTER TABLE [dbo].[patient]  WITH CHECK ADD  CONSTRAINT [FK_patient_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[patient] CHECK CONSTRAINT [FK_patient_user]
GO
ALTER TABLE [dbo].[patient_infection]  WITH CHECK ADD  CONSTRAINT [FK_patient_infection_infection] FOREIGN KEY([infection_id])
REFERENCES [dbo].[infection] ([id])
GO
ALTER TABLE [dbo].[patient_infection] CHECK CONSTRAINT [FK_patient_infection_infection]
GO
ALTER TABLE [dbo].[patient_infection]  WITH CHECK ADD  CONSTRAINT [FK_patient_infection_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[patient_infection] CHECK CONSTRAINT [FK_patient_infection_patient]
GO
ALTER TABLE [dbo].[serological_study]  WITH CHECK ADD  CONSTRAINT [FK_serological_study_infection] FOREIGN KEY([infection_id])
REFERENCES [dbo].[infection] ([id])
GO
ALTER TABLE [dbo].[serological_study] CHECK CONSTRAINT [FK_serological_study_infection]
GO
ALTER TABLE [dbo].[serological_study]  WITH CHECK ADD  CONSTRAINT [FK_serological_study_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[serological_study] CHECK CONSTRAINT [FK_serological_study_patient]
GO
ALTER TABLE [dbo].[serological_study]  WITH CHECK ADD  CONSTRAINT [FK_serological_study_serological_reason] FOREIGN KEY([serological_reason_id])
REFERENCES [dbo].[serological_reason] ([id])
GO
ALTER TABLE [dbo].[serological_study] CHECK CONSTRAINT [FK_serological_study_serological_reason]
GO
ALTER TABLE [dbo].[tuberculosis_test]  WITH CHECK ADD  CONSTRAINT [FK_tuberculosis_test_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tuberculosis_test] CHECK CONSTRAINT [FK_tuberculosis_test_patient]
GO
ALTER TABLE [dbo].[vaccination_calendar]  WITH CHECK ADD  CONSTRAINT [FK_vaccination_calendar_infection] FOREIGN KEY([infection_id])
REFERENCES [dbo].[infection] ([id])
GO
ALTER TABLE [dbo].[vaccination_calendar] CHECK CONSTRAINT [FK_vaccination_calendar_infection]
GO
ALTER TABLE [dbo].[vaccination_calendar]  WITH CHECK ADD  CONSTRAINT [FK_vaccination_calendar_patient] FOREIGN KEY([patient_id])
REFERENCES [dbo].[patient] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vaccination_calendar] CHECK CONSTRAINT [FK_vaccination_calendar_patient]
GO
ALTER TABLE [dbo].[vaccination_calendar]  WITH CHECK ADD  CONSTRAINT [FK_vaccination_calendar_vaccination_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[vaccination_status] ([id])
GO
ALTER TABLE [dbo].[vaccination_calendar] CHECK CONSTRAINT [FK_vaccination_calendar_vaccination_status]
GO
ALTER TABLE [dbo].[vaccine]  WITH CHECK ADD  CONSTRAINT [FK_vaccine_infection] FOREIGN KEY([infection_id])
REFERENCES [dbo].[infection] ([id])
GO
ALTER TABLE [dbo].[vaccine] CHECK CONSTRAINT [FK_vaccine_infection]
GO
ALTER TABLE [dbo].[vaccine]  WITH CHECK ADD  CONSTRAINT [FK_vaccine_vaccine_maker] FOREIGN KEY([vaccine_maker_id])
REFERENCES [dbo].[vaccine_maker] ([id])
GO
ALTER TABLE [dbo].[vaccine] CHECK CONSTRAINT [FK_vaccine_vaccine_maker]
GO
ALTER TABLE [dbo].[vaccine_maker]  WITH CHECK ADD  CONSTRAINT [FK_vaccine_maker_country] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id])
GO
