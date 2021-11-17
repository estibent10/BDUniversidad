--PROCEDIMIENTO ALMACENADO INSERTAR CARRERAS
CREATE PROCEDURE SP_Carrera_Insertar
	@CodigoCarrera INT,
	@NombreCarrera VARCHAR(100),
	@CreadoPor VARCHAR(50)
	AS
	BEGIN
	INSERT INTO Carreras(CodigoCarrera, NombreCarrera, CreadoPor)
	VALUES (@CodigoCarrera, @NombreCarrera, @CreadoPor)
END