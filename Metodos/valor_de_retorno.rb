# Valores de retorno en métodos en Ruby
	#
		#Ejemplo:
			# => 1-- 
				def bienvendo(nombre)
					puts "Hola " + nombre
					return "Hola"
				end

				# En el anterior fragmento de código se puede entender que  Ruby da por entendido 
				# que al encontrar un return en la interpretación del código da por terminado la ejecución
				# de ese bloque de código.

			# => 2-- 
				def suma(n1=0,n2=0,mensaje)
					puts "#{mensaje}, el resultado es #{n1 + n2}"
				end

			# Ejecución de los anteriores ejemplos:
				nombre = "Prueba"

				bienvendo(nombre)
					result=>  -- Hola Prueba
							  -- Hola
							  
				mensaje = bienvenido

				suma(13,96, mensaje)
					result=> Hola, el resultado es 109