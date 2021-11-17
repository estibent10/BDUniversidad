--PROCEDIMIENTO ALMACENADO ACTUALIZAR UNIVERSIDAD
CREATE PROCEDURE SP_Universidades_Actualizar
	@CodigoUniversidad INT,
	@NombreUniversidad VARCHAR(100),
	@CedulaJuridica VARCHAR(25),
	@Activo BIT,

	@CreadoPor VARCHAR(60),
	@ModificadoPor VARCHAR(60)
	AS
	BEGIN
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Universidades SET
	CodigoUniversidad = @CodigoUniversidad,
	NombreUniversidad = @NombreUniversidad,
	CedulaJuridica = @CedulaJuridica,
	Activo = @Activo,
	FechaModificacion = @FechaModificacion,
	CreadoPor  = @CreadoPor ,
	ModificadoPor = @ModificadoPor
	WHERE CodigoUniversidad = @CodigoUniversidad
END