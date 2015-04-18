# Condicionales if y else
	#Ejemplo:
		if nombre == nombre2
			puts "True"
		else
			puts "False"
		end

# Estructuras de control
	# unless => evalua si un valor existe
	x = "nombre"
	unless x
		x = "nuevo nombre"
	end	 

	# Case => se evalua algo para probar y obtener un resultado
		case object
			when "12"
				ejecutamos codigo
			when "13"
				ejecutamos codigo
			else
				puts "no found!"
		end

	# Sentencia if one line
		sentencia ? codigo 1 : codigo 2
		#Ejemplo
		puts x ==1 ? "Es uno" : "No es uno"

	# || o OR logico
		x = y || z

# Ciclos
	#loop do Evalua sentencias o funciones infinitas
	#Ejemplo
		loop do 
			puts "Hola"
		end

	#Detener ciclo infinito
		break = Termina ciclo infinito
		next  = Salta a un ciclo o una vuelta dentro de una evaluacion
		redo  = Repita la vuelta que acabo de hacer
		retry = repite todo el ciclo

		# Ejemplos
			# Break
				loop do
					x += 2
					break if x >= 20
						puts x
				end

			# Next
				loop do
					x += 2
					next if x == 6
						puts x
					break if x >= 20
				end

	# While
		#Ejemplo while
			while sentencia que retorna un valor booleano
				ejecutar fragmento de codigo
			end

			while  x < 20
				x += 2
				puts x
			end

			# Otro modo
				puts x += 2 while x < 100

		# Ejemplo until
			until sentencia que retorna un valor booleano
				ejecutar fragmento de codigo
			end

			until x < 20
				x += 2
				puts x
			end

	# Iteradores
		# Ejemplo iteradores sencillos
			x = 6

			5.times do
				puts "hola."
			end

			1.upto(5){puts "hola"}

			(1..5).each{puts "codigo a mostrar o ejecutar"}

		# Otros ejemplos interadores
			1.upto(5) do !i!
				puts "hola" + i.to_s
			end

			frutas = ["manzanas", "naranjas", "cocos"]
			frutas.each do !frutas!
				puts frutas.capitalize
			end

		# For
		    frutas = ["manzanas", "naranjas", "cocos"]
			for  fruta in fruitas
				puts frutas.capitalize
			end

