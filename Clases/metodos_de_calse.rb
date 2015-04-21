# Que es self
	#En cada instante de la ejecución del programa, hay uno y sólo un self: el objeto
	# que se está usando en ese instante.
	# 
	#Contexto del nivel superior
	#El contexto del nivel superior se produce si no se ha entrado en otro contexto, por ejemplo, la definición de una clase. Por la tanto, el término "nivel superior" se refiere al código escrito fuera de las clases o módulos. Si abres un fichero de texto y escribes:

	x = 1

	#habrás creado una variable local en el nivel superior. Si escribes:

	def m
	end
	
	#habrás creado un método en el nivel superior: un método que no es definido como un método de una clase o módulo. Si nada más arrancar el intérprete, tecleas:

	puts self

	#La respuesta es main, un término que se refiere al objeto que se crea al iniciar el intérprete.

	#self dentro de clases y módulos
	#En una clase o definición de módulo, self es la clase o el módulo al que pertenece el objeto:

	class S  
	  puts 'Comenzó la clase S'  
	  puts self  
	  module M  
	    puts 'Módulo anidado S::M'  
	    puts self  
	  end  
	  puts 'De regreso en el nivel más superficial de S'  
	  puts self  
	end

	La salida es:
	Comenzó la clase S
	S  
	Módulo anidado S::M  
	S::M  
	De regreso en el nivel más superficial de S  
	S
	self dentro de los métodos

	class S  
	  def m  
	    puts 'Clase S, metodo m:' 
	    puts self # <S:0x2835908> 
	  end  
	end  
	s = S.new  
	s.m

#Métodos de calse
	# Se usan con self el cual ruby identifica como un metodo de la clase relacionada
	# Ejemplo:
		class Animal

			attr_accessor :nombre
			attr_reader   :color
			attr_writer   :altura, :orejas

			def initialize
				@altura = 11
				@orejas  = 2
			end

			def self.todos_los_animales
				["perro","gato","raton"]
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

	    # Donde se puede acceder a este sin necesidad de instanciar la clase:
	    	puts Animal.todos_los_animales

	    	animal2 = Animal.crear_con_atributos("Rawr!","blanco")
	    	puts animal2.get_sonido
	    	puts animal2.color