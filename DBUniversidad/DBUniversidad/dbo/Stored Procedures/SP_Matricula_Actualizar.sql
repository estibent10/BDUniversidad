--PROCEDIMIENTO ALMACENADO ACTUALIZAR MATRICULA
CREATE PROCEDURE SP_Matricula_Actualizar
	@NumeroMatricula INT,
    @CodigoUniversidad INT,
    @CodigoSede INT,
    @CodigoCarrera INT,
    @CodigoCurso VARCHAR(10),
	@NumeroAula VARCHAR(10),
    @CedulaProfesor VARCHAR(15), 
    @CedulaEstudiante VARCHAR(15), 
    @CostoDeMatricula DECIMAL(18,3), 
    @CreadoPor VARCHAR(50),
	@ModificadoPor VARCHAR(60)
	AS
	BEGIN 
	DECLARE @FechaModificacion DATETIME;
    SET @FechaModificacion = (SELECT GETDATE())
	UPDATE Matricula SET
	CodigoUniversidad = @CodigoUniversidad,
	CodigoSede = @CodigoSede,
	CodigoCarrera = @CodigoCarrera,
	CodigoCurso = @CodigoCurso, 
	NumeroAula = @NumeroAula, 
	CedulaProfesor = @CedulaProfesor,
	CedulaEstudiante = @CedulaEstudiante, 
	CostoDeMatricula = @CostoDeMatricula, 
	CreadoPor = @CreadoPor,
	ModificadoPor = @ModificadoPor
	WHERE NumeroMatricula = @NumeroMatricula
END