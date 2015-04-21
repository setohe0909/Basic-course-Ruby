# Métodos para asignar y obtener variables de instancia
	# Valores de recepcion o de retorno en una clase
	# Ejemplo:
		class Animal

			def set_sonido(onomatopeya)
				@sonido = onomatopeya
			end

			def get_sonido
			 @sonido 
			 return "El sonido es #{@sonido}"
			end

		end 

		animal1 = Animal.new
		animal1.set_sonido("woof!")
		puts animal1.hacer_sonido

		animal2 = Animal.new
		animal2.get_sonido("Rawr!")
		puts animal2.hacer_sonido

	# Atributos de métodos
		# Estos sirve para definir en clases complicada o hacer referencia a ciertos metodos de la misma 
		# Se definene arrt_* metodos, los cuales son:
			# => attr_reader   -->  Para leer información
			# => attr-writer   -->  Para leer información	
			# => attr_accessor -->  Sirve para definir ambos métodos sin tenerlos separados(los anteriores métodos)
			
			#Ejemplo
			# => 1--
				attr_reader :nombre

				def nombre
					@nombre
				end

			# => 2--
				attr_writer :nombre

				def nombre(valor)
					@nombre = valor
				end

			# => 3--
				attr_accessor :nombre

				def nombre
					@nombre
				end

				def nombre(valor)
					@nombre = valor
				end

		# Ejemplo de aplicacion de atributos en una clase get/set:
			class Animal

				attr_accessor :nombre
				attr_reader   :color
				attr_writer   :altura, :orejas

				def initialize
					@altura = 11
					@orejas  = 2
				end

				def set_sonido(onomatopeya)
					@sonido = onomatopeya
				end

				def get_sonido
				 @sonido 
				 return "El sonido es #{@sonido}"
				end

		    end 

		    animal = Animal.new
		    animal.nombre = "Benji"
			animal.set_sonido("woof!")

			puts animal1.hacer_sonido
		    puts animal1.altura
		    puts "El animal tiene #{animal.orejas} orejas"