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

4. Modificamos el fichero `racional.rb` incluyendo la definición de la clase `Fraccion`.

5. Creamos la primera expectativa dentro del fichero `racional_spec.rb` en la que vamos a indicar que en nuestro objeto se almacena 
correctamente un numerador y un denominador. Además añadimos un `before` para la creación del objeto que utilizaremos en las pruebas.
Al ejecutar `rake` obtenemos el siguiente error que indica que en la clase no hay un método initialize y por lo tanto no podemos usar el constructor.

	Failures:

	  1) Fraccion Debe existir un numerador
	     Failure/Error: Unable to find matching line from backtrace
	     ArgumentError:
	       wrong number of arguments (2 for 0)
	     # ./spec/racional_spec.rb:8:in `initialize'
	     # ./spec/racional_spec.rb:8:in `new'
	     # ./spec/racional_spec.rb:8

	  2) Fraccion Debe existir un denominador
	     Failure/Error: Unable to find matching line from backtrace
	     ArgumentError:
	       wrong number of arguments (2 for 0)
	     # ./spec/racional_spec.rb:8:in `initialize'
	     # ./spec/racional_spec.rb:8:in `new'
	     # ./spec/racional_spec.rb:8

	Finished in 0.00038 seconds
	2 examples, 2 failures
	rake aborted!

6. Solucionamos el error anterior creando el método `initialize` en el fichero `racional.rb`. Además añadimos los getters correpondientes para obtener el valor del numerador y el denominador. Estos métodos se van a llamar `num()` y `den()`.
7. Creamos la expectativa para realizar el producto de fracciones. Al ejecutar el `rake` obtenemos un error porque tenemos el método definido para realizar la operación. 
8. En el fichero `racional.rb` definimos el método `*` (que realiza el producto de fracciones) para que se cumpla la expectativa. 
9. Creamos la expectativa para realizar la división de fracciones. Al ejecutar el `rake` obtenemos un error porque tenemos el método definido para realizar la operación.
10. En el fichero `racional.rb` definimos el método `/` (que realiza la división de fracciones) para que se cumpla la expectativa.
11. Creamos las expectativas para el máximo común divisor y el mínimo común múltiplo. Al ejecutar `rake` saldrá un fallo especificando que los ficheros no existen.
12. Para solucionar el error anterior, creamos los ficheros `gcd.rb` y `mcm.rb` dentro del directorio `lib`. Los métodos que implementemos en estos ficheros son necesarios para realizar la suma y/o la resta de fracciones de diferente denominador.
13. Añadimos las expectativas tanto para la suma como para la resta en su mínima expresión. Obtendremos un nuevo fallo ya que los métodos para sumar y restar no están definidos.

