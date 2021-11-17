--PROCEDIMIENTO ALMACENADO ELIMINAR PROFESOR
CREATE PROCEDURE SP_Profesor_Eliminar
	@CedulaProfesor VARCHAR(15) 
	AS UPDATE Profesor SET
	Activo = 0
	WHERE CedulaProfesor = @CedulaProfesor