#  Bloques de códigos - ámbito de una variable
	# Limites en el uso de objetos o clases dentro de una aplicación
		# Ejemplo
		5.times do 
			puts "Hola mundo"
		end
	 

	# Variables de bloque  y locales
	  	# En el siguiente ejemplo podemos ver el uso de variables locales en el 
	  	# caso de variable dado que solo tiene vida en el ambito entre {} del each
		array = [1,2,3,4,5,6]
		array.each {!variable! puts variable * 20}


	# Método:Find
		# find_all/select buscar valores sin ordenes especifico
		# detect se puede obtener un array o un vector con la mismas coincidencia del mismo
		# any? valores booleanos
		# all? todos los objetos sirven
		# delete_if? borrar cualquier elemento que se desee si se encuentra en el objeto o elemento a buscar
		
		# Ejemplo find:
			(1..10).find{!i! i == 5}
			result => 5

			(1..10).find{!i! i % 3 == 0}
				result => 3

		# Ejemplo detect:
			(1..10).detect{!i! i % 3 == 0}
				result => 3

			(1..10).detect{!i! (1..10).include?(i*3)}
				result => 1

		# Ejemplo find_all:
			(1..10).find_all {!i! i % 3 == 0}
			 result => [3, 6, 9]

		# Ejemplo select:
			(1..10).select{!i! (1..10).include?(i*3)}
				result => [1, 2, 3]

		# Ejemplo any?:
			(1..10).any? {!i! i % 3 == 0}
			 result => true

		# Ejemplo all?:
			(1..10).any? {!i! i % 3 == 0}
			 result => false

		# Ejemplo delete_if:
			[*1..10].delete_if {!i! i % 3 == 0}
				result => [1, 2, 4, 5, 7, 8, 10]

	# Método Merge:
		# El método merge permite fucionar valores que se encuentran en diferentes
		# diccionarios
		# Ejemplo: Se crea inicialmente un diccionario
			diccionario_1= {"a"=> 111, "b", => 222}
			diccionario_2= {"b"=> 333}

			# Se realiza el merge, con los siguientes ejemplos:
				# => 1-- 
				diccionario_1.merge(diccionario_2)
					result => {"a" => 111, "b" => 333}

				# => 2-- 
				diccionario_1.merge(diccionario_2) {!clave,viejo,nuevo! nuevo}
					result => {"a" => 111, "b" => 333}

				# => 3-- 
				diccionario_1.merge(diccionario_2) {!clave,viejo,nuevo! viejo}
					result => {"a" => 111, "b" => 222}

				# => 4-- 
				diccionario_1.merge(diccionario_2) {!clave,viejo,nuevo! viejo * 20}
					result => {"a" => 111, "b" => 4440}

				# => 5-- 
				diccionario_1.merge(diccionario_2) do !clave,viejo,nuevo!
					if viejo < nuevo
						viejo
					else
						nuevo
					end
				end
					result => {"a" => 111, "b" => 222}

	# Método Collect:
		# Este metodo entrega como resultado un array
		# Ejemplo collect:
			array = [1, 2, 3, 4, 5, 6, 7]

			nuevo_array = array.collect{!i! i + 1 }
				result => [2, 3, 4, 6, 7, 8]

		# Ejemplo map:
			# => 1-- 
			["manzana","pera","naranja"].map {!fruta! fruta.capitalize}
				result => ["Manzana","Pera","Naranja"]

			# => 2--
			["manzana","pera","naranja"].map {!fruta! fruta.capitalize if fruta == "naranaja"}
				result => [nil,nil,"Naranja"]

				#El anterior resultado nos traera inconvenientes, dado que, al aplicarlo de esta
				#manera el encontrara el valor que coincidad y le dara el nuevo valor; pero aquellos
				#que no coincidan dentran un valor nulo o nil
			
			# => 3--
				["manzana","pera","naranja"].map do !fruta! 
					 if fruta == "naranaja"
					 	fruta.capitalize
				end
				result => ["manzana","pera","Naranja"]

				# A diferencia del anterior ejemplo en este. Se usa un bloque 
				# de codigo mas formal con do.
			
			# => 4--
				(1..20).collect {!numero! numero * 35}

			# => 5--
				diccionario = {"a"=>222,"b"=>333}
				diccionario.map {!c,v! c}
					result=> {"a","b"}

				diccionario.map {!c,v! "#{c} : #{v * 20}"}
					result=> ["a : 222","b : 6660"]

	# Método  sort:
		# => Comparador de la nave espacial, sirve para verificar el funcionamiento
		# del metodo sort.
			#Ejemplo:
				# => El tipo  de resultado puede ser con el comparador
				# 1-- El resultado es  1, si el valor inicial es mayor al segundo valor
				# 2-- El resultado es -1, si el valor inicial es menor al segundo valor
				# 3-- El resultado es  0, si ambos valores son iguales
				2 <=> 1
					result => 1
				3 <=> 4
					result => -1
				3 <=> 3
					result => 0

		#Ejemplo funcionamiento sort:
			array = [3,8,1,8,2]
			array.sort
				result => [1,2,3,8,8]

		# Ejemplo sort como bloque de código:
			array = [3,8,1,8,2]
			array.sort {!v1,v2! v1 <=> v2 }
				result => [1,2,3,8,8]

			fruta = ["manzana","pera","naranja","durazno"]
			fruta.sort
				result => ["durazno","manzana","naranja","pera"]

			fruta.sort {!fruta1,fruta2! fruta1.length <=> fruta2.length }
				result => ["pera","manzana","naranja","durazno"]

			fruta.sort_by {!fruta! fruta.length }
				result => ["pera","manzana","naranja","durazno"]	

		# Ejemplo sort con diccionarios:
			diccionario = {"a"=> 111, "b"=> 222, "c"=> 333}
			diccionario.to_a
			diccionario.sort {!item1,item2! item1[0] <=> item2[0]}
				result => ["a"=>111,"b"=>222,"c"=>333]

	# Método inject:
		# Este metodo se encarga de acumular información y retornas la misma
		# Ejemplo: memo hace referencia en ruby de un acumulador
			(1..10).inject {!memo,n! memo + n}
				result => 55

			array = [*1..10]
				result => [1,2,3,4,5,6,7,8,9,10]
			suma = array.inject {!memo,n! memo + n}
				result => 55

			suma = array.inject(100) {!memo,n! memo + n}
				result => 155

			fruta = ["manzana","pera","cirualea","kiwi","durazno"]
			fruta_mas_larga = fruta.inject do !memo,fruta!
				if memo.length > fruta.length
					memo
				else
					fruta
				end
			end

			menu = ["Home","Historia","Servicios","Sobre nosotros"]
			menu.inject(10) {!memo,seccion! memo + seccion.length}