--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Aula_SeleccionarsPorId
(
	@NumeroAula VARCHAR(10)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Aula
WHERE NumeroAula = @NumeroAula
AND Activo = 1