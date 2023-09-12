Algoritmo SimuladorSueldos
	Definir ValorHora, ValorHoraPiloto, ValorHoraTripulacion, DiasTrabajados, DiasAusente, Simulacion, Puesto como Entero
	Definir SueldoBruto, SueldoNeto, Antiguedad Como Real
	ValorHora <- 0
	ValorHoraPiloto <- 3400
	ValorHoraTripulacion <- 3100
	DiasTrabajados <- 22
	SueldoBruto <- 0
	SueldoNeto <- 0
	
	Repetir
		Escribir "  SIMULADOR DE SUELDOS"
		Escribir ""
		Escribir "  Elija una opción:"
		Escribir ""
		Escribir "  1 - Calcular su sueldo para el mes vigente"
		Escribir "  2 - Simular sueldo con aumento o disminución del valor de la hora"
		Escribir "  3 - Salir del sistema"
		Leer OP
		Escribir ""
		Segun OP
			1: 
			Escribir "  Elija su puesto:"
			Escribir "  1 - Piloto"
			Escribir "  2 - Tripulación"
			Leer Puesto
			Escribir ""
			Escribir "  Ingrese su antigüedad en años cumplidos:"
			Leer Antiguedad
			Escribir ""
			Escribir "  Ingrese la cantidad de días que estuvo ausente sin justificación en el mes:"
			Leer DiasAusente
			Escribir ""
			Si Puesto = 1 Entonces
				SueldoBruto <- ((ValorHoraPiloto * 8) * (DiasTrabajados - DiasAusente) ) 
				Antiguedad <- SueldoBruto * (Antiguedad / 100)
				SueldoBruto <- SueldoBruto + Antiguedad
				SueldoNeto <- SueldoBruto * 0.7
			SiNo
				SueldoBruto <- ((ValorHoraTripulacion * 8) * (DiasTrabajados - DiasAusente) )
				Antiguedad <- SueldoBruto * (Antiguedad / 100)
				SueldoBruto <- SueldoBruto + Antiguedad
				SueldoNeto <- SueldoBruto * 0.7
			FinSi
			Escribir "  Ingrese ENTER para conocer el sueldo calculado"
			Leer tecla
			Limpiar Pantalla
		Escribir ""
		Escribir "  Su SUELDO BRUTO para este período es de $ " SueldoBruto
		Escribir ""
		Escribir "  Su SUELDO NETO (de bolsillo) es de $ " SueldoNeto
		Escribir ""
		Escribir "          *** *** *** *** *** ***"
		Escribir "  Ingrese ENTER para volver al menú inicial"
		Leer tecla
		Limpiar Pantalla
			2:
				Escribir "  ¿Cuál es el valor de la hora de trabajo con el que desea simular? Por favor, ingrese el número:"
				Leer ValorHora
				Escribir ""
				Escribir "  Ingrese la antigüedad para su cálculo (en años cumplidos):"
				Leer Antiguedad
				Escribir ""
				SueldoBruto <- (ValorHora * 8) * DiasTrabajados
					Antiguedad <- SueldoBruto * (Antiguedad / 100)
					SueldoBruto <- SueldoBruto + Antiguedad
					SueldoNeto <- SueldoBruto * 0.7
				Escribir "  Ingrese ENTER para conocer el sueldo simulado"
				Leer tecla
				Limpiar Pantalla
				Escribir ""
				Escribir "  El SUELDO BRUTO simulado es de $ " SueldoBruto
				Escribir ""
				Escribir "  El SUELDO NETO (de bolsillo) simulado es de $ " SueldoNeto
				Escribir ""
				Escribir "          *** *** *** *** *** ***"
				Escribir "  Ingrese ENTER para volver al menú inicial"
				Leer tecla
				Limpiar Pantalla
	FinSegun
	Hasta Que OP =3
	Escribir "  Muchas gracias por utilizar el simulador de sueldos. ¡Hasta la próxima!"
FinAlgoritmo
