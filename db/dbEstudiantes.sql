USE [dbEstudiantes]
GO
/****** Object:  Table [dbo].[tbl_Estudiantes]    Script Date: 10/3/2022 09:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Estudiantes](
	[id_Estudiante] [int] IDENTITY(1,1) NOT NULL,
	[nombre_Estudiante] [varchar](50) NOT NULL,
	[edad_Estudiante] [int] NOT NULL,
	[identidad_Estudiante] [varchar](50) NOT NULL,
	[carnet_Estudiante] [varchar](50) NOT NULL,
	[carrera_Estudiante] [varchar](50) NOT NULL,
	[direccion_Estudiantes] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Estudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstudiante]    Script Date: 10/3/2022 09:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Procedimientos almacenados
CREATE PROCEDURE [dbo].[ActualizarEstudiante]
	@id int,
	@nombre varchar(70),
	@edad int,
	@identidad varchar(50),
	@carnet varchar(10),
	@carrera varchar(50),
	@direccion varchar(100)
AS

update 
dbo.tbl_Estudiantes
set
nombre_Estudiante = @nombre,
edad_Estudiante = @edad,
identidad_Estudiante = @identidad,
carnet_Estudiante = @carnet,
carrera_Estudiante = @carrera,
direccion_Estudiantes = @direccion
WHERE id_Estudiante = @id;
GO
/****** Object:  StoredProcedure [dbo].[AgregarEstudiante]    Script Date: 10/3/2022 09:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Procedimientos almacenados
CREATE PROCEDURE [dbo].[AgregarEstudiante]
	@nombre varchar(70),
	@edad int,
	@identidad varchar(50),
	@carnet varchar(10),
	@carrera varchar(50),
	@direccion varchar(100)
AS
	INSERT INTO tbl_Estudiantes	VALUES(@nombre, @edad, @identidad, @carnet, @carrera, @direccion)
GO
/****** Object:  StoredProcedure [dbo].[eliminarEstudiante]    Script Date: 10/3/2022 09:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[eliminarEstudiante]
	@id INT
AS
 	DELETE FROM tbl_Estudiantes WHERE id_Estudiante = @id;
GO
/****** Object:  StoredProcedure [dbo].[sp_listarEstudiantes]    Script Date: 10/3/2022 09:40:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_listarEstudiantes] AS SELECT * FROM tbl_Estudiantes
GO
