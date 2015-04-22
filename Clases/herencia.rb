# Herencia
	#Otra de las particularidades de cualquier lenguaje orientado a objetos es sin duda la herencia. 
	#En Ruby se define la herencia de la siguiente manera:
	#
	# Ejemplo: 
		# Clase principal
			class Animal

				attr_accessor :nombre
				attr_reader   :color
				attr_writer   :altura, :orejas

				# Atributos de clases
				@@especies =["perro","gato","raton"]
				@@total_animales = [] 

				def initialize
					@altura = 11
					@orejas  = 2
					@@total_animales << self
				end

				def self.especies
					@@especies 
				end

				def self.especies(array = [])
					@@especies = array
				end

				def self.crear_con_atributos(sonido,color)
					animal = Animal.new(sonido)
					animal.color = color
					return animal
				end

				def set_sonido(sonido)
					@sonido = sonido
				end

				def get_sonido
				 @sonido 
				 return "El sonido es #{@sonido}"
				end

				def color
					"El color es #{@color}"
				end
				
			 end 

		    # Subclase 
		    	class Vaca < Animal
		    		def caminar
		    			puts " La vaca esta caminando"
		    		end
		    	end

		    miVaca = Vaca.new("moo!")
		    puts miVaca.get_sonido

		    miVaca.caminar
		    	result => "La vaca esta caminando"