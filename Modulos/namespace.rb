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