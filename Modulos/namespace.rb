# Modulos
	# Donde se puede encapsular dentro de un namespace una clase 
	# para poder acceder a ella.

	# Ejemplo:
		module Inspiracion
			class Cita
				def mostrar_cita_del_dia
					puts "cita del día"
				end
			end
		end

		module Legal
			class Cita
			end 
		end

	    # Invocación:
	    	cita_1 = Inspiracion::Cita.new
	    	cita_2 = Legal::Cita.new

# Módulo mixin
	module InformacionContacto
	  attr_accessor :primer_nombre, :primer_apellido, :ciudad, :estado, :codigo_zip

	  def nombre_completo
	    return @primer_nombre + " " + @primer_apellido
	  end

	  def ciudad_estado_zip
	    cez = @ciudad
	    cez += "* #{@estado}" if @estado
	    cez += "  #{@codigo_zip}" if @codigo_zip
	    return cez
	  end
	end

	class Persona
	 include InformacionContacto
	end

	class Profesor
	  include InformacionContacto
	  attr_accessor :plan_de_estudio
	end

	class Estudiante < Persona
	  attr_accessor :horario
	end

# Comandos load, requires e include
	# Con los siguientes comando se pueden  optimizar el consumo de los modulos
		# load => se usa para cargar el codigo tantas veces sea necesario
			# Se inicia al principio del archivo lo siguiente:
			load 'modulo.rb' 
		# requiere => Solo carga una vez el metodo que estamos utilizando
			requiere 'modulo.rb' 
		# include => Permite incluir el uso de un modulo directamente en una
		# unica clase
			include InformacionContacto

# El módulo enumerable
	# Permite implementar metodos llamandolos desde enum para ordenar 
	# información y otras opciones
	# 
	# Ejemplo:
	#
		class Lista

			include Enumerable # Metodo donde se inicializa each, permite recorrer arreglos o enumerarlos

			def initialize
				@lista = []
			end

			def each
				@lista.each {|item| yield item}
			end

		end

		lista = Lista.new
		lista.lista = ["Comprar comida","Lavar el carro"]
		lista.lista.select{|i| i.length > 6}