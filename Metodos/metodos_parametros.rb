# Métodos con parámetros
	# Estos toman argumentos que pueden ser contemplados al momento de llevar una 
	# tarea en especifica dentro del método 
		#Ejemplo:
			# => 1-- 
				def bienvendo(nombre)
					puts "Hola " + nombre
				end
			# => 2-- 
				def suma(num_1,num2)
					puts num_1 + num2
				end

			# Ejecución enviando un parametro al método definido:
				# => 1-- 	
					nombre = "Juan"
					bienvenido(nombre)
						result => Hola Juan
				# => 2--
					suma(1,2)
						result => 3

	# Parámetros por defectos
		# Permite agregar una sentencia condicional el cual defina un valor por defecto o 
		# parámetro por defecto
			# Ejemplo:
				def bienvenido(nombre="mundo")
					puts "Hola " + nombre
				end

				def suma(num_1= 1,num2= 1)
					puts num_1 + num2
				end

				# Ejecuta el método
					bienvenido
						result => Hola mundo

					suma
						result => 2