--PROCEDIMIENTO ALMACENADO INSERTAR MATRICULA
CREATE PROCEDURE SP_Matricula_Insertar
    @CodigoUniversidad INT,
    @CodigoSede INT,
    @CodigoCarrera INT,
    @CodigoCurso VARCHAR(10),
	@NumeroAula VARCHAR(10),
    @CedulaProfesor VARCHAR(15), 
    @CedulaEstudiante VARCHAR(15), 
    @CostoDeMatricula DECIMAL(18,3), 
    @CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Matricula(CodigoUniversidad, CodigoSede, CodigoCarrera, CodigoCurso, NumeroAula, CedulaProfesor,CedulaEstudiante, CostoDeMatricula, CreadoPor )
	VALUES( @CodigoUniversidad, @CodigoSede, @CodigoCarrera, @CodigoCurso, @NumeroAula, @CedulaProfesor, @CedulaEstudiante, @CostoDeMatricula, @CreadoPor )
END