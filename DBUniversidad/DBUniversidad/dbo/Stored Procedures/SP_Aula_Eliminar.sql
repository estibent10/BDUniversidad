﻿--PROCEDIMIENTO ALMACENADO PARA ELIMINAR AULAS
CREATE PROCEDURE SP_Aula_Eliminar
	@NumeroAula VARCHAR(10)
	AS UPDATE Aula SET
	Activo = 0
	WHERE NumeroAula = @NumeroAula