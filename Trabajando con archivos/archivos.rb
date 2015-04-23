# Trabajando con archivos
	# Elementos de entrada y salida básicos
	# Ejemplo:
	#
	# gets => Permite obtener información

	#capturamos el valor agregado a get y junto con chomp podemos eliminar el santo de linea \n
	# o cualquier tipo de formato que pueda existir
		input = gets.chomp

	# Ejemplo chomp, donde eliminara la ultima letra del texto
		"Ultimo elemento r".chomp
			result => "Ultimo elemento"

	# Los siguientes son metodos de salida
		print "Acabas de escribir: "
		puts input + "."

	resultado = ""
	until resultado == "terminar"
	  print "> "
	  resultado = gets.chomp
	  puts "Escuchando: #{resultado}"
	end
	puts "Hasta pronto"