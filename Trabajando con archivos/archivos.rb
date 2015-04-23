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

	# Sistema de archivos
	# Dos perspectivas a evaluar:
		# Unix, linux o Mac : /
		# Windows : \ 
		# Directorio/Miarchivo.join()


	# Permisologías:
		# Un dueño y ciertos permisos 
		# chmod permiosos
		# chown dueño
		# Unix: compartido/lib/miarchivo.rb
		# Windows: compartido\lib\miarchivo.rb

	# Directorios de archivos
		# Direcctorios absolutos. Ejemplos:
			puts "/Usuarios/Oja.la/Desktop"

		# Directorios relativos. Ejemplo:
			puts "../../Usuarios/Oja.la/Desktop"

		# Crear directorios de manera dinamica. Ejemplo
			# '' => representa un directorio absoluto
			puts File.join('', 'Usuarios', 'Oja.la', 'Desktop')

		# Almacena toda la información sobre el manejo de archivos
			puts __FILE__

			# La cual se puede verificar:

				puts File.expand_path(__FILE__)

				# =>  Ubica el directorio en el que se esta
					puts File.dirname(__FILE__)

				# => Ubica el directoro en el que nos encontrarmos y genera la ruta dinamica
				# con ayuda de join
					puts File.join(File.dirname(__FILE__), '..', "Ejercicios\ Archivos")