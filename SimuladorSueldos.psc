Algoritmo SimuladorSueldos
	Definir ValorHoraPiloto, ValorHoraTripulacion, DiasTrabajados, DiasAusente, Simulacion, Puesto como Entero
	Definir SueldoBruto, SueldoNeto, Antiguedad Como Real
	ValorHoraPiloto <- 3400
	ValorHoraTripulacion <- 3100
	DiasTrabajados <- 22
	SueldoBruto <- 0
	SueldoNeto <- 0
	
	Repetir
		Escribir "SIMULADOR DE SUELDOS"
		Escribir ""
		Escribir "Elija una opción:"
		Escribir "1 - Simular su sueldo para este período"
		Escribir "3 - Salir del sistema"
		Leer Simulacion
		Escribir ""
		Si Simulacion = 1 Entonces
			Escribir "Elija su puesto:"
			Escribir "1 - Piloto"
			Escribir "2 - Tripulación"
			Leer Puesto
			Escribir ""
			Escribir "Ingrese su antigüedad en años cumplidos:"
			Leer Antiguedad
			Escribir ""
			Escribir "Ingrese la cantidad de días que estuvo ausente sin justificación en el mes:"
			Leer DiasAusente
			Escribir ""
			Si Puesto = 1 Entonces
				SueldoBruto <- ((ValorHoraPiloto * 8) * (DiasTrabajados - DiasAusente) ) 
				Antiguedad <- SueldoBruto * (Antiguedad / 100)
				SueldoBruto <- SueldoBruto + Antiguedad
				SueldoNeto <- SueldoBruto * 0.7
			FinSi
			Si Puesto = 2 Entonces
				SueldoBruto <- ((ValorHoraTripulacion * 8) * (DiasTrabajados - DiasAusente) )
				Antiguedad <- SueldoBruto * (Antiguedad / 100)
				SueldoBruto <- SueldoBruto + Antiguedad
				SueldoNeto <- SueldoBruto * 0.7
			FinSi
		Escribir "Su sueldo bruto para este período es de $ " SueldoBruto
		Escribir "Su sueldo neto (de bolsillo) es de $ " SueldoNeto
		Escribir ""
		FinSi
	Hasta Que Simulacion =3
	Escribir "Muchas gracias por utilizar el simulador de sueldos. ¡Hasta la próxima!"
FinAlgoritmo
