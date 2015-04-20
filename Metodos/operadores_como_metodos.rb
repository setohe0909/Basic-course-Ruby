# Operadores como métodos
	# Implementación de operadores como métodos
	# De las siguientes sentencias todas son validas y entregan el mismo resultado
	# Ejemplo

		puts 8 + 2
		puts 8.+(2)

		# Pero existe una diferencia considerable en puts 8.+(2). En el cual podemos definirlo de
		# la siguiente manera:
			# miremos a 8 como un objeto donde le asignamos . con el fin de tener la propiedad + al
			# cual le enviaremos 2 para aplicar ese valor sobre la propiedad que se vera aplicada al objeto 
			# dando como un resultado final 10.
			
			puts 8.+(2)
				result => 10

			=> 8 = Es un objeto
			=> .+ = Acceder a la propiedad suma
			=> (2) = Enviar valor a la propiedad para ser ejecutada

	# Otros ejemplos con puts:
		puts 8 - 2
		puts 8.-(2)

		puts 8 * 2
		puts 8.*(2)

		puts 8 / 2
		puts 8./(2)

		puts 8 ** 2
		puts 8.**(2)

	# Otros ejemplos con arreglos:	
		array1 = [1,2,3]
		puts array1.inspect
		array2 = [1,2,3]
		puts array2.inspect

		array1 << 4
		puts array1.inspect
		array2.<<(4)
		puts array2.inspect

		array1[2]
		puts array1.inspect
		array2.[](2)
		puts array2.inspect

		array1[2] = 'x'
		puts array1.inspect
		array2.[]=(2, 'x')
		puts array2.inspect