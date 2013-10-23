Práctica de Laboratorio #6. Desarrollo dirigido por comportamiento   
================

Introducción
------------

Esta práctica consiste en desarrollar por equipos la clase Fraccion usando el desarrollo dirigido por comportamiento. 

Desarrollo de la práctica
------------

1. Comenzamos creando el `Rakefile`. Esto nos producirá un error debido a que no hemos creado el fichero que especificamos. 
Debemos corregir este error. 
Creamos `racional_spec.rb` dentro del directorio `spec`. De esta manera el error queda solucionado.  

2. Añadimos la primera expectativa dentro de `racional_spec.rb`. Esta expectativa nos indica que vamos a utilizar una clase Fraccion.
Al ejecutar el `rake` se produce un error debido a que no hemos definido nunguna clase `Fraccion` y no hemos creado el fichero que la va a contener. 

3. Añandimos el `require` dentro del fichero de expectativas. Si ejecutamos un `rake`se producirá un error porque no hemos creado el fichero. Entonces, creamos el fichero `racional.rb` dentro del directorio `lib`. 

