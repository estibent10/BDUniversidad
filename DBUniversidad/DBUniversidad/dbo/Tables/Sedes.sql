--TABLA PARA ALMACENAR INFORMACIÃ“N DE LAS SEDES
CREATE TABLE Sedes(
	CodigoSede INT,
	NombreSede VARCHAR(30) NOT NULL,
	Telefono VARCHAR(12) NOT NULL,
	CorreoElectronico VARCHAR(50) NOT NULL,
	Direccion VARCHAR(50) NOT NULL,
	Activo BIT NOT NULL DEFAULT(1),

	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,

	CONSTRAINT PK_Sedes PRIMARY KEY(CodigoSede)
);
GO
--DOCUMENTACION DE LA TABLA "SEDES"
EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Sedes que el sistema gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Sedes'
GO
--DOCUMENTACION DE LAS COLUMNAS 
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'CÃ³digo de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'CodigoSede'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'NombreSede'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'TelÃ©fono de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'Telefono'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Correo electrÃ³nico de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'CorreoElectronico'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'DirecciÃ³n de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'Direccion'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'CondiciÃ³n en la que se encuentra, sea 0 o 1',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creaciÃ³n del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificaciÃ³n del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del autor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO
EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de quien modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Sedes', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'