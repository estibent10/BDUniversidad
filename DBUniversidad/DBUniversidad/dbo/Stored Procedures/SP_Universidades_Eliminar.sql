--PROCEDIMIENTO ALMACENADO ELIMINAR UNIVERSIDAD
CREATE PROCEDURE SP_Universidades_Eliminar
	@CodigoUniversidad INT 
	AS UPDATE Universidades SET
	Activo = 0
	WHERE CodigoUniversidad = @CodigoUniversidad