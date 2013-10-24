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
14. Cumplimos las expectativas anteriores definiendo e implementando los métodos de suma y resta en la definición de la clase `Fraccion`. Es necesario crear un método para reducir el resultado a su mínima expresión. Este método se llama `simplificar` y hace uso de el `gcd` y `mcm`. También hemos añadido los métodos de máximo común divisor y de mínimo común múltiplo en sus correspondientes ficheros. 
15. Añadimos la expectativa para mostrar una fracción en formato a/b.
16. Se ha definido el método `to_s` dentro de la clase `Fraccion` y comprobando que cumple las expectativas asociadas al método.
17. A continuación, creamos una nueva expectativa para mostrar la fracción en formato flotante. Nos aparecerá un error indicando que no existe el método to_float.
18. Para solventar el error anterior, se ha implementado el método to_float.
19. Creamos una nueva expectativa para crear el recíproco  de una fracción. Como en los casos anteriores, al hacer un `rake`se nos informará de que el método no está definido.
20. Definimos el método que permite crear el recíproco de una fracción.
21. Creamos una nueva expectativa para poder comparar dos fracciones usando `==`. El error al ejecutar el programa con `rake` nos dice que ha sido imposible encontrar el método definido. También se ha modificado el método `initialize` para que simplifique las fracciones.
22. Solucionamos el error anterior creando el método `==`. 
23. Se ha mejorado el método recíproco puesto que antes se comparaban cadenas de caracteres. A su vez se ha modificado la expectativa para su correcta interpretación. Además, se ha añadido la expectativa para mostrar la fracción opuesta.
24. Añadimos el método -@ para poder crear el opuesto de una fracción. Para ello ha sido necesario eliminar la línea que calculaba el valor absoluto de las variables dentro del método gcd en el fichero `gcd.rb`.
25. Creada la expectativa para el valor absoluto de una funcion utilizando el método `abs`. 
26. Añadida la defición del método `abs` para cumplir la expectativa.
27. Creada la expectativa para el operador resto entre dos fracciones.
28. Se ha modificado un error de sintaxis en la expectativa del operador %. Añadiendo paréntesis hemos corregido dicho error. Además se ha definido el método para dicho operador.

