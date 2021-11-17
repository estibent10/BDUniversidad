--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Matricula_SeleccionarsPorId
(
	@NumeroMatricula INT
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Matricula
WHERE NumeroMatricula = @NumeroMatricula
AND Activo = 1