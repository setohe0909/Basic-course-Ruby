# => Métodos en Ruby
	#Permite ordenar información dentro de ruby 
		# Declarar un método. 
			# => Este se declara con la palabra clave def
			# Ejemplo:
				def bienvenido
				  	puts "hello"
				end  

				def sumar
					puts 1 + 6
				end

				def obtener_palabra_mas_larga
					palabras = ["manzana","pera","transeunte","software"]
					palabras_mas_larga = palabras.inject do |memo, palabra|
						memo.length > palabras.length ? memo : palabra
					end
					puts palabras_mas_larga
				end

			# Se ejecuta solo escribiendo el nombre del metodo obteniendo el resultado:
				=> bienvenido
					result => hello

				=> sumar
					result => 7

	# Ámbito de un método
		# restricciones o ambitos de una variable
		# Variable local o de bloque se crea asi
			variable = "valor x"
		# Variable global uso fuera y dentro de funciones o bloques de código
			$variable = "valor x"
		# Variable que puede tener acceso a elementos de una clase
			@varaible = ["manzana","pera","transeunte","software"]
		# Define una variable como un objeto
			@@varaible = ["manzana","pera","transeunte","software"]

	# Tipos de métodos
		#Public, private, protected
		#Los métodos de una clase por defecto, y si no se indica lo contrario, son públicos. Además de público, un método puede ser protected o private.
		#Para determinar de qué tipo es basta con añadir la palabra clave private al principio de los métodos privados por ejemplo:

			class coche
		        def abrirPuertas
		        end

		        def cerrarPuertas
		        end

		        private
		                def abrirGuantera
		                end
		        end
			end

		#La palabra clave protected se usa de la misma forma que private con la diferencia que un si una clase hereda el método también puede usarla como si fuera público, mientras que si se llama desde el exterior se comporta como un método privado.


