# Simbolos
# Los símbolos en Ruby son un enigma. Muchos los usamos, pero en realidad no 
# sabemos qué son. Así que veamos qué es un símbolo.
#
#Un símbolo es simplemente algo que se utiliza para representar nombres y 
#cadenas (strings). De lo que se trata es de encontrar una manera de describir un 
#nombre eficientemente ahorrando la memoria que utilizaría el almacenar cada instancia de la cadena (string).
	
	#Ejemplo :prueba
	
	# Uso en diccionarios
		diccionario = {
			             :primer_nombre => 'Nombre'
					  }

	# Imprimir diccionario con simbolo
		diccionario[:primer_nombre]

####################################	
#El caso del Doctor Jones
#####################################

#El Doctor Jones es un Psicólogo. Normalmente utiliza tests de asociación de palabras para diagnosticar a los pacientes, y usa ruby para gestionar esta tarea. Su primer paciente, Yon, contesta de esta manera:
#Dr. J.: Rojo Yon: Ruby Dr. J.: Tranportes Yon: Rails Dr. J.: Chunky Yon: Bacon
#El Doctor crea un hash para almacenar sus datos:

 

yon = { "rojo"         => "ruby",
        "transportes"  => "rails",
        "chunky"       => "bacon" }

#El segundo paciente, Bob, contesta lo siguiente:

 

bob = { "rojo"        => "pintura",
        "trasportes"  => "coche",
        "chunky"      => "fat" }


#Despues de realizar cientos de tests, el Doctor comienza a darse cuenta de que ¡su sistema va a quedarse sin memoria! En un sobresalto, Jones realiza las siguientes pruebas en irb:

 
 paciente1 = { "ruby" => "rojo" }
 paciente2 = { "ruby" => "programacion" }
 paciente1.each_key {|key| puts key.object_id.to_s}
 211006
 paciente2.each_key {|key| puts key.object_id.to_s}
 203536

#Mirando los resultados observamos que cada vez que se crea un hash para almacenar información, Ruby crea un objeto de tipo String para cada clave en un lugar diferente de la memoria. Afortunadamente, hay una alternativa. ¡Símbolos al rescate!
#Al contrario que las cadenas (strings), los símbolos con el mismo nombre son inicializados y existen en memoria una sola vez en cada sesión de Ruby. Obviamente los símbolos son más útiles cuando se va a reutilizar la representación de las cadenas en otro lugar. Aplicando esto a los tests del Doctor Jones podemos observar el funcionamiento de los símbolos:

 

 paciente1 = { :ruby => "rojo" }
 paciente2 = { :ruby => "programacion" }
 paciente1.each_key {|key| puts key.object_id.to_s}
 3918094
 patient2.each_key {|key| puts key.object_id.to_s}
 3918094

#Usando símbolos hemos usado una única dirección de memoria para representar la palabra ruby en nuestros tests. De esta manera se puede ahorrar gran cantidad de espacio. ¿Cuándo más deberé usar símbolos?
#Como ya hemos dicho, los símbolos son útiles cuando se va a utilizar la palabra una y otra vez para representar algo, ya sea una clave en un hash o el método que estas usando en una petición http. Un ejemplo de su uso en el framework Rails es el uso de símbolos en rutas y enlaces. Rails define acciones en los controladores responder a las peticiones antes de dibujar la página, así un enlace en Rails se quedaría de esta manera:

 

link_to("Ver artículo", :controller => "articulos", :action => "ver", :id => 1)

#Cuando una aplicación puede tener cientos de enlaces, cientos de referencias a diferentes acciones y controladores es mucho más eficiente usar símbolos y no cadenas.
#Para acabar, es importante remarcar que la utilidad de los símbolos no se limita a las claves en los hashes. Por ejemplo, si alguien está escribiendo un servidor o cliente http probablemente use las palabras post y get en diferentes lugares de la aplicación, por lo que sería apropiado usar:

 

    hacer_esto if peticion == :get

    ...
    enviar_mensaje_al_servidor(:post, nombre_fichero)

#En cualquier caso donde una cadena (string) pueda ser usada una y otra vez, un símbolo es un buen candidato para reemplazarla.

#Otras notas

#Si vas a referirte a un método de un objeto, usa un símbolo, porque al haber declarado el método, el símbolo ya existe.
#La función de los símbolos es la identificación, ya sea de claves en un hash, de métodos, de opciones, etc.
#También tener en cuenta algunos de los comentarios:

#¿Cuánta memoria usarían 1000 cadenas “rojo” y cuánta usarían 1000 :rojo?
#20 bytes por objeto más almacenamiento de los datos 4 bytesm más almacenamiento de los tamaños (4 bytes). Así que unos 28.000 bytes más o menos.

#Para símbolos se usaría una entrada en la tabla de símbolos, lo cual son sólo unos bytes (aproximadamente una decena de bits, no decenas de miles).

#Generalmente uso la siguiente regla para elegir entre cadena o símbolo:
#Si los contenidos (es decir, la secuencia de caracteres) del objeto es importante, uso una cadena.
#Si la identidad del objeto es importante, uso un símbolo.