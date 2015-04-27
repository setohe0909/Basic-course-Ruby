# Crear archivo
	# Creando un nuevo en Ruby
		archivo = File.new("prueba.txt","w")  # Con permiso de escritura
	# Sirve para cerrar el archivo, esto se realiza para evitar errores en la creacion o contenido del mismo
		archivo.close 

	#Cualquier tipo de entrada
	archivo.close

	# Abrir archivo y se indica el 'r' lo cual equivale a solo lectura
		archivo.open('Archivo1.txt', 'r') do |archivo|
		#leer del archivo
		end

	# Permisos que puede tener un archivo
		# => r = read 
		# => w = write 
		# => a = append

	#r+ w+ a+

# Escribiéndo en los archivos
	archivo.puts "Hola mundo bienvenido a los archivos Ruby"
	archivo.close

	archivo.write " Texto a escribir en el archivo"
	# El anterior escribe igualmente información dentro
	# del archivo creado pero  entrega en consola el número total de caracteres ingresados

#  Leer datos en los archivos
	File.open('Archivo1.txt', 'r') do |archivo| # Abre el archivo a leer
	  while line = archivo.gets # Abre el contenido actual del archivo disponiendo para realizar la lectura o creación de nuevos datos
	    puts "** " + line.chomp.reverse + " **" 
	  end
	end

	File.open('Archivo1.txt', 'r') do |archivo|
	  file.each_line {|archivo| puts line.upcase }
	end

	# Otra forma de leer es con read()
		Archivo.read() # => El metodo read toma como parametros la cantidad de caracteres a leer

		# => Ejemplo:
			Archivo.read(3)
				result => "hol" # => entrega un resultado de 3 caracteres que se pueda encontrar en el programa

	# Puntero del archivo
		archivo.pos # => permite determinar en que posicion se encuentra en el archivo
		archivo.read(3) # => Captura la catidad de caracteres enviados por parametro del archivo
		archivo.eof? # =>  Verifica por un true o false si se encuentra al final de un archivo
		archivo.write "nuevo texto" # => permite escribir una nueva entrada al archivo
		archivo.rewind # => Permite iniciar nuevamente en el comienzo del archivo
		archivo.lineno # Permite verificar el número de linea del archivo


# Herramientas para trabajar con archivos
	archivo = File.new("archivo_de_prueba.txt","w")
	archivo.puts "Este es un archivo  para renombrar y borrar nuestro de proyecto"
	archivo.close

	# Funciones del archivo
	File.rename("archivo_de_prueba.txt","archivo_para_borrar.txt") # =>  Renombrar archivo
	File.delete("archivo_para_borrar.txt") # => Eliminar archivo

	# Copiar archivo que depende de una libreria llamda fileutils
		requiere "fileutils"
		FileUtils.copy("archivo_para_borrar.txt","archivo_copiado.txt")

		FileUtils => # Esta libreria también permite mover o brindar permisos dentro de las herramientas de archivos

# Examinando detalles de los archivos
	File.exist?(archivo) # => Sirve para verificar si un archivo existe el cual entrega un resultado booleano
	File.directory?(archivo)  # => Permite verificar si el directorio se encuentra inicializado
	File.readable?(archivo)   # => Metodo booleano sirve para verificar si podemos leer y sacar información del mismo
	File.writable?(archivo)   # => Modificar la información que se ha agregado
	File.executable?(archivo) # => Permite verificar si el archivo es ejecutable

	File.size # => Permite saber el tamaño del archivo
	File.dirname(archivo) # => Permite traer el directorio donde se encuentra el archivo
		# Si el resultado es '.' hace referencia que el directorio es directamente donde hace la consulta
	File.expand_path(archivo) # => Obtener información del directorio expandido o ruta completa
	File.basename(archivo) # => Se obtiene el nombre del archivo que se esta utilizando
	File.extname(archivo) # =>  Se obtiene la extensión del archivo

	File.atime(archivo) # => Muestra la ultima vez modificado el archivo hace referencia al tipo de apertura que tiene
	File.mtime(archivo) # => Muestra que el archivo es de lectura o escritura y la ultima vez que abrieron el archivo
	File.ctime(archivo) # => Muestra el status si fue modificado 

	# Al crear un objeto que herede el acceso a los anteriores metodos de la clase File, no podremos acceder 
	# no podremos acceder totalmente a ellos dado que muchos solo son objetos visibles por la clase File
		# => Ejemplo:
		archivo = "prueba.txt"
		miArchivo = File.new(archivo, "r")

		# Al tratar de acceder a los siguientes metodos como:
			miArchivo.size
			archivo.dirname

		# Estos entregaran un error  de el metodo declarado no se encuentra definido.
		
	# Por ello se hace uso de stat, el cual es un metodo que nos permite acceder a ciertos metodos no visibles por fuera
	# de la clase File.
		# =>  Ejemplo: 
		archivo = "prueba.txt"
		miArchivo = File.new(archivo, "r")

		miArchivo.stat.size

		# Esta ultima declaración o fragmento de codigo si nos permitira obtener el resultado esperado del tamaño
		# del archivo aun siendo una objeto instanciado de la clase File

# Trabajando con directorios

	__FILE__ => Esta es una constante dentro de guby que nos permite acceder a cierta información 

	# Manejo con directorios a través de la clase Dir
		Dir.pwd  => Retorna la ruta donde se encuentra el directorio
		Dir.chdir(..) => Permite devolverse en el directorio
		Dir.entries(".") => Muestra documentos ocultos
		Dir.mkdir("miProyecto") => Permite la creación de una nueva capeta
		Dir.delete("miProyecto") => Permite eliminar una carpeta existente

		# Bloques de codigo con la clase Dir
		Dir.foreach('.'){|entrada| puts entrada}