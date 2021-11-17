--PROCEDIMIENTO ALMACENADO ELIMINAR MATRICULA
CREATE PROCEDURE SP_Matricula_Eliminar
	@NumeroMatricula INT
	AS UPDATE Matricula SET
	Activo = 0
	WHERE NumeroMatricula = @NumeroMatricula