#Sobreescribir métodos y llamados con super
	#Ejemplo:
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
					animal = self.new(sonido)
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

		    		# sobreescribimos el metodo de la clase padre
		    		
		    		def color
		    			"El color de tu vaca es #{@color}"
		    		end
		    	end

		    miVaca = Vaca.new("moo!")
		    puts miVaca.get_sonido

		    miVaca.caminar
		    	result => "La vaca esta caminando"

		    # Ejecución de sobreescribir el método
		     miVaca = crear_con_atributos.new("moo!","amarillo")
		     puts miVaca.get_sonido
		     puts miVaca.color
		     	result => "El color de tu vaca es amarillo"

		     # Ejemplo sobreescribir un método de la clase array de Ruby
		     	# Se define inicialmente un arreglo
		     		array = [1,2,3]
		     			result => [1,2,3]
		     				# Este se representa sin un cambio considerable aun 
		     				# dado que no se ha personalizado
		     				# 
		     	#Pero si personalizamos la clase array
		     		class Array
		     			def to_s
		     				selft.join('* ')
		     			end
		     		end

		     		# Con el anterior fragmento de código personalizamos la clase Array
		     		# de Ruby, donde esta separa los elementos de un arreglo por "*"
		     		# 
		     		# Si ejecutamos lo siguiente veremos el resultado:
		     			array.to_s
		     				result=> "1* 2* 3"

		     # Acceder a un método de la clase por la palabra super
			     class Aguila < Animal
			     	def get_sonido
			     		super # Permite mostrar la información como nosotros la personalizamos sobreescribiendo el método
			     	end
			     end

			     miAguila = Aguila.new("Sonido de aguila.mp3")
			     puts miAguila.get_sonido