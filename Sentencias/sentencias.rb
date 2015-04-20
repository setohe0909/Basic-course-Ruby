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