--PROCEDIMIENTO ALMACENADO INSERTAR UNIVERSIDAD
CREATE PROCEDURE SP_Universidades_Insertar
	@CodigoUniversidad INT,
	@NombreUniversidad VARCHAR(100),
	@CedulaJuridica VARCHAR(25),
	@CreadoPor VARCHAR(60)
	AS
	BEGIN
	INSERT INTO Universidades(CodigoUniversidad, NombreUniversidad, CedulaJuridica,CreadoPor)
	VALUES(@CodigoUniversidad, @NombreUniversidad, @CedulaJuridica, @CreadoPor)
END