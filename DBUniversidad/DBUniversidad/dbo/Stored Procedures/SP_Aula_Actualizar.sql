--PROCEDIMIENTO ALMACENADO PARA ACTUALIZAR AULAS
CREATE PROCEDURE SP_Aula_Actualizar
	@NumeroAula VARCHAR(10),
	@Horario VARCHAR(30),
	@CodigoCurso  VARCHAR(10),
	@CreadoPor VARCHAR(50),
	@ModificadoPor VARCHAR(60)
	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Aula SET
	Horario = @Horario,
	CodigoCurso  = @CodigoCurso,
	FechaModificacion = @FechaModificacion,
	ModificadoPor = @ModificadoPor
	WHERE NumeroAula = @NumeroAula
END