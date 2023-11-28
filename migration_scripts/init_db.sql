--liquibase formatted sql
--changeset author:auto stripComments:false dbms:mssql endDelimiter:GO
CREATE TABLE [dbo].[Admins](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Countries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[KeyWords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Word] [nchar](10) NOT NULL,
 CONSTRAINT [PK_KeyWords] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyPatients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nchar](10) NOT NULL,
	[Name] [nchar](10) NOT NULL,
	[Patronymic] [nchar](10) NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_MyPatients] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[MyProcedures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[VaccineId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_MyProcedures] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PatientsTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NOT NULL,
 CONSTRAINT [PK_PatientsTypes] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProceduresDone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ProcedureId] [int] NOT NULL,
	[FullOrNot] [bit] NOT NULL,
	[ActualDate] [date] NOT NULL,
 CONSTRAINT [PK_ProceduresDone] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ProceduresKeyWords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[KeyWordId] [int] NOT NULL,
	[ProcedureId] [int] NOT NULL,
 CONSTRAINT [PK_ProceduresKeyWords] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Vaccines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[MakerId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
 CONSTRAINT [PK_Vaccines] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[VaccinesMakers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_VaccinesMakers] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[VaccinesTypes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VaccinesTypes] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Admins] ON
INSERT [dbo].[Admins] ([id], [username], [password]) VALUES (1, N'testadm', N'APM1RKs7PcUFWxTElROSg6/Zyu8k+z0d4PVqCBMrzvlU8vnGLGrds7HVKFWJai0+lw==')
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO

SET IDENTITY_INSERT [dbo].[Countries] ON
INSERT [dbo].[Countries] ([id], [Name]) VALUES (1, N'Россия    ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (2, N'Франция   ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (3, N'Корея     ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (4, N'Хорватия  ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (5, N'Индия     ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (6, N'Италия    ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (7, N'Бельгия   ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (8, N'Германия  ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (9, N'Нидерланды')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (10, N'Австрия   ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (11, N'Куба      ')
INSERT [dbo].[Countries] ([id], [Name]) VALUES (2090, N'test      ')
SET IDENTITY_INSERT [dbo].[Countries] OFF
GO

SET IDENTITY_INSERT [dbo].[KeyWords] ON
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (1, N'В отпуск  ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (2, N'По плану  ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (3, N'Экстренно ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (4, N'Ребенку   ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (5, N'Взрослому ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (6, N'В школу   ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (8, N'В садик   ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (9, N'В поездку ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (10, N'На работу ')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (11, N'Не выбрано')
INSERT [dbo].[KeyWords] ([id], [Word]) VALUES (31, N'forTest   ')
SET IDENTITY_INSERT [dbo].[KeyWords] OFF
GO

SET IDENTITY_INSERT [dbo].[PatientsTypes] ON
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (1, N'Мама      ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (2, N'Папа      ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (3, N'Бабушка   ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (4, N'Дедушка   ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (5, N'Сестра    ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (6, N'Брат      ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (7, N'Дочь      ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (8, N'Сын       ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (9, N'Внук      ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (10, N'Внучка    ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (11, N'Прабабушка')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (12, N'Прадедушка')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (13, N'Я         ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (14, N'Муж       ')
INSERT [dbo].[PatientsTypes] ([id], [Name]) VALUES (15, N'Жена      ')
SET IDENTITY_INSERT [dbo].[PatientsTypes] OFF
GO

SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([id], [username], [password]) VALUES (1017, N'test', N'ABgpeXJDVF6PuH5BeeqspKBLtJbWhM92hUkQKnMeg/A6XkTO6Q3lLlEDRPjUuGmR0A==')
INSERT [dbo].[Users] ([id], [username], [password]) VALUES (2025, N'hehe', N'AEYCr2LI2KmBrLSfn6LnoTySjEIBjko4qwDoasnc19yMbWu+dDbwmOcehayTQ/7bYA==')
INSERT [dbo].[Users] ([id], [username], [password]) VALUES (2026, N'testreg', N'ADCkCUrnkYJqFJBHSB7/b1ZDfGnA1rPh96UhyW6TRprrhD88MRs+4h9h+rjoE5JJeg==')
INSERT [dbo].[Users] ([id], [username], [password]) VALUES (2027, N'pupupu', N'AKLOytwXAviSEMIVKCxqatu0YF0dzZ9a+w/cLSTkpf5dLtBSzYrb4xtI3xqHXUG5IQ==')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO

SET IDENTITY_INSERT [dbo].[Vaccines] ON
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (1, N'Вакцина БЦЖ', 3, 3)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (3, N'Вакцина БЦЖ-М', 3, 3)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (4, N'Вакцина коревая культуральная живая сухая', 4, 10)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (5, N'Вакцина паротитная культуральная живая сухая', 4, 12)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (6, N'Вакцина паротитно-коревая культуральная живая сухая', 4, 10)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (9, N'АКДС-вакцина', 5, 6)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (12, N'АС-анатоксин', 5, 7)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (14, N'Вакцина полиомиелитная пероральная 1, 2, 3 типов', 11, 8)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (15, N'Вакцина гепатита В рекомбинантная дрожжевая жидкая', 13, 2)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (16, N'Вакцина против гепатита В рекомбинантная дрожжевая жидкая "Энджерикс"', 14, 2)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (17, N'Вакцина против гепатита В ДНК Рекомбинантная', 4, 2)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (18, N'Вакцина гриппозная аллантошсная очищенная для интраназалъного введения взрослым', 4, 13)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (19, N'Вакцина гриппозная аллантоисная очищенная для интраназального введения детям 3-14 лет', 4, 13)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (20, N'Вакцина гриппозная инактивированная элюатноцентрифужная жидкая (ИГВ)', 4, 13)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (21, N'РУВАКС', 23, 10)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (22, N'РУДИВАКС', 23, 11)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (23, N'ИМОВАКС ПОЛИО', 23, 8)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (25, N'ТЕТРАКОК', 23, 5)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (28, N'АКТ-ХИБ', 23, 9)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (29, N'ВАКСИГРИП', 23, 13)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (30, N'ПНЕВМО 23', 23, 4)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (31, N'ЭУВАКС В', 24, 2)
INSERT [dbo].[Vaccines] ([id], [Name], [MakerId], [TypeId]) VALUES (32, N'ФЛЮАРИКС', 29, 13)
SET IDENTITY_INSERT [dbo].[Vaccines] OFF
GO

SET IDENTITY_INSERT [dbo].[VaccinesMakers] ON
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (3, N'ГУ НИИЭМ им. Гамалеи РАМН', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (4, N'ФГУП НПО "Микроген" МЗ', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (5, N'ОАО "Биомед" им. Мечникова', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (11, N'ФГУП "Предприятие по производству БиВП" ИПиВЭ им. М.П.Чумакова', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (12, N'ЗАО "Вектор-Би-Алъгам"', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (13, N'ЗАО НПК "Комбиотех"', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (14, N'ООО "СмитКляйн Бичем Биомед"', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (15, N'ЗАО Медикотехнологический холдинг "МТХ"', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (16, N'СПНИИВС и ППВП', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (17, N'ЗАО "Витафарма"', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (18, N'РосНИПЧИ "Микроб"', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (19, N'ООО "Гритвак"', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (20, N'СтаврНИПЧИ', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (21, N'НИИ Микробиологии МО РФ', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (22, N'РостНИИ ПМ', 1)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (23, N'Авентис Пастер', 2)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (24, N'LG Кемикал Лтд', 3)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (25, N'Институт иммунологии', 4)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (26, N'Серум инститьют оф Индия', 5)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (27, N'Кайрон С.п.А.', 6)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (28, N'ГлаксоСмит Кляйн Байолоджикалс', 7)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (29, N'Зексишес Зерумвсрк Дрезден', 8)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (30, N'Кайрон Беринг ГмбХ и Ко', 8)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (31, N'Мерк Шарп Доум Б.В.', 9)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (32, N'Бакстер вакцины', 10)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (33, N'Эбер Биотек', 11)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (34, N'Солвей Фармасьютикалз БВ', 9)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (35, N'Шанта Биотехника', 5)
INSERT [dbo].[VaccinesMakers] ([id], [Name], [CountryId]) VALUES (39, N'Вокхард Лимитед', 5)
SET IDENTITY_INSERT [dbo].[VaccinesMakers] OFF
GO

SET IDENTITY_INSERT [dbo].[VaccinesTypes] ON
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (2, N'Вирусный гепатит B ')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (3, N'Туберкулез')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (4, N'Пневмококковая инфекция')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (5, N'Дифтерия')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (6, N'Коклюш')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (7, N'Столбняк')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (8, N'Полиомиелит')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (9, N'Гемофильная инфекция')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (10, N'Корь')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (11, N'Краснуха')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (12, N'Эпидемический паротит')
INSERT [dbo].[VaccinesTypes] ([id], [Name]) VALUES (13, N'Грипп')
SET IDENTITY_INSERT [dbo].[VaccinesTypes] OFF
GO

ALTER TABLE [dbo].[MyProcedures] ADD  CONSTRAINT [DF__MyProcedu__UserI__18EBB532]  DEFAULT ((0)) FOR [UserId]
GO

ALTER TABLE [dbo].[MyPatients]  WITH CHECK ADD  CONSTRAINT [FK_MyPatients_PatientsTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[PatientsTypes] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MyPatients] CHECK CONSTRAINT [FK_MyPatients_PatientsTypes]
GO

ALTER TABLE [dbo].[MyProcedures]  WITH CHECK ADD  CONSTRAINT [FK_MyProcedures_MyPatients] FOREIGN KEY([PatientId])
REFERENCES [dbo].[MyPatients] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MyProcedures] CHECK CONSTRAINT [FK_MyProcedures_MyPatients]
GO

ALTER TABLE [dbo].[MyProcedures]  WITH CHECK ADD  CONSTRAINT [FK_MyProcedures_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MyProcedures] CHECK CONSTRAINT [FK_MyProcedures_Users]
GO

ALTER TABLE [dbo].[MyProcedures]  WITH CHECK ADD  CONSTRAINT [FK_MyProcedures_Vaccines] FOREIGN KEY([VaccineId])
REFERENCES [dbo].[Vaccines] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MyProcedures] CHECK CONSTRAINT [FK_MyProcedures_Vaccines]
GO

ALTER TABLE [dbo].[ProceduresDone]  WITH CHECK ADD  CONSTRAINT [FK_ProceduresDone_MyProcedures] FOREIGN KEY([ProcedureId])
REFERENCES [dbo].[MyProcedures] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProceduresDone] CHECK CONSTRAINT [FK_ProceduresDone_MyProcedures]
GO

ALTER TABLE [dbo].[ProceduresKeyWords]  WITH CHECK ADD  CONSTRAINT [FK_ProceduresKeyWords_KeyWords] FOREIGN KEY([KeyWordId])
REFERENCES [dbo].[KeyWords] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProceduresKeyWords] CHECK CONSTRAINT [FK_ProceduresKeyWords_KeyWords]
GO

ALTER TABLE [dbo].[ProceduresKeyWords]  WITH CHECK ADD  CONSTRAINT [FK_ProceduresKeyWords_MyProcedures] FOREIGN KEY([ProcedureId])
REFERENCES [dbo].[MyProcedures] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProceduresKeyWords] CHECK CONSTRAINT [FK_ProceduresKeyWords_MyProcedures]
GO

ALTER TABLE [dbo].[Vaccines]  WITH CHECK ADD  CONSTRAINT [FK_Vaccines_VaccinesMakers] FOREIGN KEY([MakerId])
REFERENCES [dbo].[VaccinesMakers] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vaccines] CHECK CONSTRAINT [FK_Vaccines_VaccinesMakers]
GO

ALTER TABLE [dbo].[Vaccines]  WITH CHECK ADD  CONSTRAINT [FK_Vaccines_VaccinesTypes] FOREIGN KEY([TypeId])
REFERENCES [dbo].[VaccinesTypes] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Vaccines] CHECK CONSTRAINT [FK_Vaccines_VaccinesTypes]
GO

ALTER TABLE [dbo].[VaccinesMakers]  WITH CHECK ADD  CONSTRAINT [FK_VaccinesMakers_Countries] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VaccinesMakers] CHECK CONSTRAINT [FK_VaccinesMakers_Countries]
GO
