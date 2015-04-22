# Atributos de clase
	# Permite la creación de clases integras y completas; donde la clase permite crear atributos de 
	# clase para acceder a cierta información 
	# Ejemplo:
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

			def self.todos_los_animales
				@@especies 
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

	# Reader y writers para atributos de clases
		#  sugarcode
		#  Ejemplo:
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

	    #Los reader y writes permiten acceder a la clase sin tener relación alguna
	    #con esta
	    
	    Animal.especies = ["rana","pez"]
	    puts Animal.especies.inspect