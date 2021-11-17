﻿--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Profesor_SeleccionarsPorId
(
	@CedulaProfesor VARCHAR(15)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Profesor
WHERE CedulaProfesor = @CedulaProfesor
AND Activo = 1