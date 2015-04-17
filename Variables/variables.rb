# variables

	primer_nombre # Una variable que puede accederse desde un punto determinado

	$primer_nombre # es una variable global

	@@primer_nombre  # Es para definir una variable que puede tener acceso a elementos de una clase

	@primer_nombre  # Es para definir  una variable como un objeto

# tipos entero
	 65.char
	 1.next
	 20.round
	 1234325.class

# tipo flotante
	10.35.class
	2321.20.round
	2321.20.to_i

# tipo cadena
	saludo = "Hola"
	nombre = "ejemplo"
	saludo + ' ' + nombre
	saludo.reverse
	saludo.capitalize
	saludo.upcase
	saludo.lowcase
	saludo.length

	puts saludo

	# Dar formato
		puts "Hola \t mundo \n otr linea"

# Vectores
	array = ["hola","Mundo","Seto"]
	# Index del array da un inicio en 0 
		array[0] ===  "hola"
	# Posibilidad de crear arreglos mixtos
		array_mixt = ["Hola", 120, 2.4]
	# Limpiar valores de un arreglo o eliminarlo
		array.clear
	# Agregar en la ultima posicion un valore
		array << "Bienvenido"
	# Dar valor vacio a un elemento del arreglo
		array[0] = nil

	# Mas metodos de vectores
		#Ejemplo
			array = [1,2,3,4,5,6,7]
			array_2 = [8,9,10]
		# Mostrar como se encuentra conformado el arreglo
			array.inspect
		# Imprimir el arreglo
			puts array
			puts array_2.inspect
		# Imprimir uniendo todos los valores del arreglo
			array.join  = "1234567"
		#Convertir a String
			array.to_s
		# Dar formato con join
			array.join<" "> = "1 2 3 4 5 6 7"
		# Ordenar arreglo
			array.sort
		# Evitar valores repetidos
			array.uniq!
		# Eliminar datos en el arreglo
			array.delete_at(2)

# Diccionarios
	persona = {
				'primer_nombre' => 'Nombre',
				'tipo_de_empresa' => 'educacion'
			  }
 	# Obtener información del diccionario
 		persona['primer_nombre']
 	# Verificar proceso inverso al anterior
 		persona.index('Nombre')

# Tipo booleano
	#  Posibles valores booleanos  --> true or false
	 	3 != "hola" = true
	 	[1,2,3,4].include?(2) = true
	 	1 ==  "ff" = false
	# Booleanos con diccionarios
	 	{ 'a' => 1, 'b' => 2}.has_key?('a')
	 	{ 'a' => 1, 'b' => 2}.has_value?('3')

# Tipo rango
	x = 1..10
	x.include?(5)
	x.firts = 1
	x.last = 10
	x.begin = 1
	x.end = 10
	#Almacenar un rango en un arreglo
		z = [*x] = [1,2,3,4,5,6,7,8,9,10]
	# Rango letras
		y = "a".."z"

# Tipo constantes
	# las constantes en Ruby se escriben totalmente en mayusculas
		TEST = 2
	# Nota: Estas son modificables ya es mas responsabilidad del desarrollador recordar
	# que estas son constantes  y tiene un valor fijo