﻿--VISTA EN DONDE SE MUESTRAN SOLO LOS REGISTROS ACTIVOS DE LA TABLA "AULA"
CREATE VIEW vw_Aula_SeleccionarActivos AS SELECT * FROM Aula WHERE Activo = 1