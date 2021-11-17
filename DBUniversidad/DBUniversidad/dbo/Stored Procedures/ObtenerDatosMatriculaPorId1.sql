--CREACIÃ“N DE UN PROCEDIMIENTO ALMACENADO PARA OBTENER DATOS DE LA MATRÃCULA
CREATE PROCEDURE ObtenerDatosMatriculaPorId1 @NumeroMatricula INT AS
SELECT Matri.NumeroMatricula, 
	Uni.CodigoUniversidad, 
	Uni.NombreUniversidad AS Universidad,
	Sed.NombreSede,
	Carre.NombreCarrera,
	Curs.NombreCurso,
	Aul.NumeroAula,
	Aul.Horario,
	Prof.NombreProfesor,
	Prof.Apellidos AS 'Apellidos Profesor',
	Est.Nombre AS 'Nombre Estudiante',
	Est.Apellidos AS 'Apellidos Estudiante',
	Curs.Precio AS 'Costo del Curso',
	Matri.CostoDeMatricula,
	Matri.CostoDeMatricula + Curs.Precio AS 'Total A Pagar',
	Matri.FechaCreacion AS 'Fecha De MatrÃ­cula'
	FROM Matricula AS Matri 

	INNER JOIN Universidades AS Uni ON Matri.CodigoUniversidad = Uni.CodigoUniversidad
	INNER JOIN Sedes AS Sed ON Matri.CodigoSede = Sed.CodigoSede
	INNER JOIN Carreras AS Carre ON Matri.CodigoCarrera = Carre.CodigoCarrera
	INNER JOIN Aula As Aul ON Matri.NumeroAula = Aul.NumeroAula
	INNER JOIN Cursos AS Curs ON Matri.CodigoCurso = Curs.CodigoCurso
	INNER JOIN Profesor AS Prof ON Matri.CedulaProfesor = Prof.CedulaProfesor
	INNER JOIN Estudiantes AS Est ON Matri.CedulaEstudiante = Est.CedulaEstudiante