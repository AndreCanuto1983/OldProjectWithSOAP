USE [ExemploMaterializacao]
GO
/****** Object:  Table [dbo].[Atendimento]    Script Date: 03/08/2019 21:41:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Atendimento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPaciente] [int] NOT NULL,
	[Anamnese] [varchar](500) NULL,
	[ExameFisico] [varchar](500) NULL,
	[CID] [varchar](50) NULL,
	[DataCriacao] [datetime] NOT NULL,
	[DataEdicao] [datetime] NOT NULL,
 CONSTRAINT [PK_Atendimento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 03/08/2019 21:41:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paciente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](250) NOT NULL,
	[NomeMae] [varchar](250) NOT NULL,
	[Nascimento] [date] NULL,
	[Sexo] [int] NULL,
	[DataCriacao] [datetime] NOT NULL,
	[DataEdicao] [datetime] NOT NULL,
 CONSTRAINT [PK_Paciente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Paciente] ON 

INSERT [dbo].[Paciente] ([Id], [Nome], [NomeMae], [Nascimento], [Sexo], [DataCriacao], [DataEdicao]) VALUES (1, N'João da Silva', N'Maria Silva', CAST(N'2009-06-30' AS Date), 1, CAST(N'2019-06-30 16:38:08.250' AS DateTime), CAST(N'2019-06-30 16:38:08.250' AS DateTime))
SET IDENTITY_INSERT [dbo].[Paciente] OFF
ALTER TABLE [dbo].[Atendimento]  WITH CHECK ADD  CONSTRAINT [FK_Atendimento_Paciente] FOREIGN KEY([IdPaciente])
REFERENCES [dbo].[Paciente] ([Id])
GO
ALTER TABLE [dbo].[Atendimento] CHECK CONSTRAINT [FK_Atendimento_Paciente]
GO
