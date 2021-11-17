CREATE PROCEDURE SP_Curso_Eliminar
	@CodigoCurso VARCHAR(10)
    AS UPDATE Cursos SET
	Activo = 0
	WHERE CodigoCurso = @CodigoCurso