CREATE TABLE [dbo].[Jako�� Powietrza](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rok] [int] NULL,
	[StanowiskoId] [int] NULL,
	[�rednia] [decimal](20, 5) NULL,
	[Liczba Pomiar�w] [decimal](20, 5) NULL,
	[Kompletno��] [decimal](20, 5) NULL,
	[Minimum] [decimal](20, 5) NULL,
	[Maksimum] [decimal](20, 5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Typ Obszaru](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Typ Obszaru] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[�redni Czas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[�redni Czas] [varchar](max) NULL,
	[�redni Czas Kod] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Miasto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Miasto] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Wska�nik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Wska�nik Kod] [varchar](max) NULL,
	[Wska�nik] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Typ Pomiaru](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Typ Pomiaru] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Stanowisko](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data Uruchomienia] [datetime] NULL,
	[Data Zamkni�cia] [datetime] NULL,
	[StacjaId] [int] NULL,
	[Wska�nikId] [int] NULL,
	[�redni CzasId] [int] NULL,
	[Typ PomiaruId] [int] NULL,
	[Nazwa StrefyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Miejscowo��](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Miejscowo��] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Stacja](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kod Stacji] [varchar](max) NULL,
	[Nazwa Stacji] [varchar](max) NULL,
	[Data Uruchomienia] [datetime] NULL,
	[Data Zamkni�cia] [datetime] NULL,
	[Typ StacjiId] [int] NULL,
	[Typ ObszaruId] [int] NULL,
	[Rodzaj StacjiId] [int] NULL,
	[Miejscowo��Id] [int] NULL,
	[MiastoId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Rodzaj Stacji](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rodzaj Stacji] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Typ Stacji](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Typ Stacji] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [dbo].[Nazwa Strefy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nazwa Strefy] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

ALTER TABLE [dbo].[Jako�� Powietrza]  WITH CHECK ADD  CONSTRAINT [FK_Jako�� Powietrza_Stanowisko] FOREIGN KEY([StanowiskoId])
REFERENCES [dbo].[Stanowisko] ([Id])
GO
ALTER TABLE [dbo].[Jako�� Powietrza] CHECK CONSTRAINT [FK_Jako�� Powietrza_Stanowisko]
GO
ALTER TABLE [dbo].[Stanowisko]  WITH CHECK ADD  CONSTRAINT [FK_Stanowisko_�redni Czas] FOREIGN KEY([�redni CzasId])
REFERENCES [dbo].[�redni Czas] ([Id])
GO
ALTER TABLE [dbo].[Stanowisko] CHECK CONSTRAINT [FK_Stanowisko_�redni Czas]
GO
ALTER TABLE [dbo].[Stanowisko]  WITH CHECK ADD  CONSTRAINT [FK_Stanowisko_Wska�nik] FOREIGN KEY([Wska�nikId])
REFERENCES [dbo].[Wska�nik] ([Id])
GO
ALTER TABLE [dbo].[Stanowisko] CHECK CONSTRAINT [FK_Stanowisko_Wska�nik]
GO
ALTER TABLE [dbo].[Stanowisko]  WITH CHECK ADD  CONSTRAINT [FK_Stanowisko_Typ Pomiaru] FOREIGN KEY([Typ PomiaruId])
REFERENCES [dbo].[Typ Pomiaru] ([Id])
GO
ALTER TABLE [dbo].[Stanowisko] CHECK CONSTRAINT [FK_Stanowisko_Typ Pomiaru]
GO
ALTER TABLE [dbo].[Stanowisko]  WITH CHECK ADD  CONSTRAINT [FK_Stanowisko_Stacja] FOREIGN KEY([StacjaId])
REFERENCES [dbo].[Stacja] ([Id])
GO
ALTER TABLE [dbo].[Stanowisko] CHECK CONSTRAINT [FK_Stanowisko_Stacja]
GO
ALTER TABLE [dbo].[Stanowisko]  WITH CHECK ADD  CONSTRAINT [FK_Stanowisko_Nazwa Strefy] FOREIGN KEY([Nazwa StrefyId])
REFERENCES [dbo].[Nazwa Strefy] ([Id])
GO
ALTER TABLE [dbo].[Stanowisko] CHECK CONSTRAINT [FK_Stanowisko_Nazwa Strefy]
GO
ALTER TABLE [dbo].[Stacja]  WITH CHECK ADD  CONSTRAINT [FK_Stacja_Typ Obszaru] FOREIGN KEY([Typ ObszaruId])
REFERENCES [dbo].[Typ Obszaru] ([Id])
GO
ALTER TABLE [dbo].[Stacja] CHECK CONSTRAINT [FK_Stacja_Typ Obszaru]
GO
ALTER TABLE [dbo].[Stacja]  WITH CHECK ADD  CONSTRAINT [FK_Stacja_Miejscowo��] FOREIGN KEY([Miejscowo��Id])
REFERENCES [dbo].[Miejscowo��] ([Id])
GO
ALTER TABLE [dbo].[Stacja] CHECK CONSTRAINT [FK_Stacja_Miejscowo��]
GO
ALTER TABLE [dbo].[Stacja]  WITH CHECK ADD  CONSTRAINT [FK_Stacja_Rodzaj Stacji] FOREIGN KEY([Rodzaj StacjiId])
REFERENCES [dbo].[Rodzaj Stacji] ([Id])
GO
ALTER TABLE [dbo].[Stacja] CHECK CONSTRAINT [FK_Stacja_Rodzaj Stacji]
GO
ALTER TABLE [dbo].[Stacja]  WITH CHECK ADD  CONSTRAINT [FK_Stacja_Typ Stacji] FOREIGN KEY([Typ StacjiId])
REFERENCES [dbo].[Typ Stacji] ([Id])
GO
ALTER TABLE [dbo].[Stacja] CHECK CONSTRAINT [FK_Stacja_Typ Stacji]
GO
ALTER TABLE [dbo].[Stacja]  WITH CHECK ADD  CONSTRAINT [FK_Stacja_Miasto] FOREIGN KEY([MiastoId])
REFERENCES [dbo].[Miasto] ([Id])
GO
ALTER TABLE [dbo].[Stacja] CHECK CONSTRAINT [FK_Stacja_Miasto]
GO