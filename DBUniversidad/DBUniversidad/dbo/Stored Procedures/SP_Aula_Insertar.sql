--PROCEDIMIENTO ALMACENADO PARA INSERTAR AULAS
CREATE PROCEDURE SP_Aula_Insertar
	@NumeroAula VARCHAR(10),
	@Horario VARCHAR(30),
	@CodigoCurso VARCHAR(10),
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Aula(NumeroAula, Horario, CodigoCurso, CreadoPor)
	VALUES(@NumeroAula, @Horario, @CodigoCurso, @CreadoPor)
END