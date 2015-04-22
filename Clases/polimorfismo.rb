#El poliformismo sirve para dar genericidad a un método de una clase. 
	#Por ejemplo: Supongamos que tenemos dos tipos de objetos un triangulo y 
	#un círculo que heredan la clase forma. La clase forma tiene un método que se 
	#llama devolverPerimetro

		class Forma
		        def devolverPerimetro()
		        end
		end

		class Circulo < Forma

		        def devolverPerimetro()
		        ...
		        end
		end

		class Triangulo < Forma

		        def devolverPerimetro()
		        ...
		        end
		end

	#Está claro que no se calcula de la misma forma el perímetro de un círculo que 
	#el de un triangulo, por ello cada objeto lo definirá de una forma distinta.
	#
	#El poliformismo nos da la posibilidad de que si tenemos un objeto forma pero
	# no sabemos si es triangulo o circulo, podamos llamar al método devolverPerimetro 
	# y nos devolverá el perímetro correcto.