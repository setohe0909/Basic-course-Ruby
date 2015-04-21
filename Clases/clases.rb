# Clases
	# =>  Estas nos permiten organizar código o instrucciones que son complejas en 
	# estructuras organizadas
	
	# Definir una clase 
		# => Se define una clase con la palabra clave class, pero se debe usar 
		# al nombrar una clase el estandar CamelCase donde la primera letras de cada
		# palabra empieza en mayuscula 
			# Ejemplo:
				# SoyUnaClase => CamelCase
			
				# => 1--
				 	class SoyUnaClase
				 		puts "hola"
				 	end  

				# => 2--
					class Animal
						def hacer_sonido
							puts "mooh"
						end
					end

	# Instanciar una clase
		# Es crear un objeto para hacer referencia de metodos o propiedades de una clase
		# => Ejemplo
			class Animal
				def hacer_sonido
				 "mooh"
				end
			end

			animal = Animal.new
			# en la anterior linea animal heredara todas las funciones o propiedades pertenecientes
			# a la clase

			# para acceder a un  metodo de la clase animal podemos hacerlo de esta manera:
			puts animal.hacer_sonido
				result=> "mooh"
	
	# Atributos de una clase
		# permite generar acceso seguro de entrada y salida de una clase get/set 
		# Ejemplo:
			class Animal

				def asignar_sonido(onomatopeya)
					@sonido = onomatopeya
				end

				def hacer_sonido
				 @sonido 
				end

			end

			animal1 = Animal.new
			animal1.asignar_sonido("woof!")
			puts animal1.hacer_sonido

			animal2 = Animal.new
			animal2.asignar_sonido("Rawr!")
			puts animal2.hacer_sonido