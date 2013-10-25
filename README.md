Práctica de Laboratorio #6. Desarrollo dirigido por comportamiento   
================

Introducción
------------

Esta práctica consiste en desarrollar por equipos la clase Fraccion usando el desarrollo dirigido por comportamiento. Para ello hemos hecho uso de la herramienta **Rspec**.
El desarrollo por comportamiento (BDD) y en este caso particular, desarrollo dirigido por pruebas, consiste en ir creando unas expectativas que indicamos que debe cumplir nuestro programa y que a medida que las creamos, vamos cumpliendo.

Documentación
------------

La organización de los ficheros y directorios en esta práctica es la siguiente:

```
/prct06
	Rakefile
	/spec
		racional_spec.rb
	/lib
		racional.rb
		gcd.rb
		mcm.rb
```

El fichero **Rakefile**, va a contener varios objetivos.

* `spec` será la opción por defecto y hará que se ejecute el fichero _racional_spec.rb_

* `bin` es la opción que ejecutará el programa principal _racional.rb_

* `test` ejecutará el fichero de pruebas con documentación

* `thtml` ejecutará el fichero de pruebas en formato html. 

En el directorio **spec**, se encuentra el fichero **racional_spec.rb** donde están definidas las expectativas para nuestro programa. 
Las expectativas están separadas en los siguientes bloques:

* Getters.
* Operaciones de formato
* Otras operaciones
* Operaciones atirméticas
* Operaciones comparacionales

El siguiente directorio es **lib**, aquí se encuentran el fichero principal **racional.rb** y los ficheros **gcd.rb** y **mcm.rb**, necesarios para la realización de algunos métodos de la clase principal. 

**racional.rb** contiene la definición de la clase y los siguientes métodos:

* `initialize` es el método para inicializar los objetos de la clase y simplificarlos. Contendrá los parámeros 'numerador (num) y 'denominador'(den)
* `to_s` devuelve una cadena con la representación del racional en el formato _a/b_
* `to_float` convierte las fracciones a formato flotante
* `num()` es el get para el numerador
* `denom()` es el get para el denominador
* `==` compara si dos fracciones son iguales
* `abs` se calcula el valor absoluto de una fracción
* `-@` se obtiene el opuesto de una fracción
* `reciproco` obtenemos la fracción recíproca de otra
* `+` devuelve un nuevo racional que suma al objeto que invoca el que le pasan como parámetro
* `-` devuelve un nuevo racional que resta al objeto que invoca el que le pasan como parámetro 
* `*` devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
* `/` devuelve un nuevo racional que multiplica al objeto que invoca el que le pasan como parámetro
* `<` comparamos si una fracción es menor que otra. Devuelve _true_ o _false_
* `>` comparamos si una fracción es mayor que otra. Devuelve _true_ o _false_
* `<=` comparamos si una fracción es menor o igual que otra. Devuelve _true_ o _false_
* `>=` comparamos si una fracción es mayor o igual que otra. Devuelve _true_ o _false_

**gcd.rb** contiene el método que calcula el máximo común divisor, es necesario para simplificar las fracciones.

**mcm.rb** contiene el método que calcula el mínimo común múltiplo, este método es necesario para la suma y/o resta de fracciones de diferente denominador. Hace uso del método `gcd` implementado en el fichero _lib/gcd.rb_.

Desarrollo de la práctica
------------

En las siguientes líneas se sigue un registro de cómo ha sido el desarrollo de la práctica siguiendo el _Desarrollo dirigido por comportamiento_, el número de entradas corresponde aproximadamente con la cronología y el número de commits realizados. 

1. Comenzamos creando el **Rakefile**. Esto nos producirá un error debido a que no hemos creado el fichero que especificamos. Debemos corregir este error. Creamos **racional_spec.rb** dentro del directorio **spec**. De esta manera el error queda solucionado.  

2. Añadimos la primera expectativa dentro de **racional_spec.rb**. Esta expectativa nos indica que vamos a utilizar una clase `Fraccion`.
Al ejecutar el `rake` se produce un error debido a que no hemos definido nunguna clase `Fraccion` y no hemos creado el fichero que la va a contener. 

3. Añandimos el `require` dentro del fichero de expectativas. Si ejecutamos un `rake`se producirá un error porque no hemos creado el fichero. Entonces, creamos el fichero **racional.rb** dentro del directorio **lib**. 

4. Modificamos el fichero **racional.rb** incluyendo la definición de la clase `Fraccion`.

5. Creamos la primera expectativa dentro del fichero **racional_spec.rb** en la que vamos a indicar que en nuestro objeto se almacena 
correctamente un numerador y un denominador. Además añadimos un `before` para la creación del objeto que utilizaremos en las pruebas.
Al ejecutar `rake` obtenemos el error que indica que en la clase no hay un método `initialize` y por lo tanto no podemos usar el constructor.

6. Solucionamos el error anterior creando el método `initialize` en el fichero **racional.rb**. Además añadimos los _getters_ correpondientes para obtener el valor del numerador y el denominador. Estos métodos se van a llamar `num()` y `denom()`.

7. Creamos la expectativa para realizar el producto de fracciones. Al ejecutar el `rake` obtenemos un error porque tenemos el método definido para realizar la operación. 

8. En el fichero **racional.rb** definimos el método `*` (que realiza el producto de fracciones) para que se cumpla la expectativa. 

9. Creamos la expectativa para realizar la división de fracciones. Al ejecutar el `rake` obtenemos un error porque tenemos el método definido para realizar la operación.

10. En el fichero **racional.rb** definimos el método `/` (que realiza la división de fracciones) para que se cumpla la expectativa.

11. Creamos las expectativas para el máximo común divisor y el mínimo común múltiplo. Al ejecutar `rake` saldrá un fallo especificando que los ficheros no existen.

12. Para solucionar el error anterior, creamos los ficheros **gcd.rb** y **mcm.rb** dentro del directorio **lib**. Los métodos que implementemos en estos ficheros son necesarios para realizar la suma y/o la resta de fracciones de diferente denominador.

13. Añadimos las expectativas tanto para la suma como para la resta en su mínima expresión. Obtendremos un nuevo fallo ya que los métodos para sumar y restar no están definidos. Los métodos se llamarán `+` y `-`.

14. Cumplimos las expectativas anteriores definiendo e implementando los métodos de suma y resta en la definición de la clase `Fraccion`. Es necesario crear un método para reducir el resultado a su mínima expresión, hemos decidido simplificar las fracciones en el `initialize`. También hemos añadido los métodos de máximo común divisor y de mínimo común múltiplo en sus correspondientes ficheros. 

15. Añadimos la expectativa para mostrar una fracción en formato _a/b_ con el método `to_s`.

16. Se ha definido el método `to_s` dentro de la clase `Fraccion` y comprobando que cumple las expectativas asociadas al método.

17. A continuación, creamos una nueva expectativa para mostrar la fracción en formato flotante, usamos el método `to_float`, que todavía no está definido y por lo tanto nos aparecerá un error indicando que no existe el método.

18. Para solventar el error anterior, se ha implementado el método `to_float`.

19. Creamos una nueva expectativa para crear el recíproco de una fracción. El método se llamará `reciproco`. Como en los casos anteriores, al hacer un `rake` se nos informará de que el método no está definido.

20. Definimos el método que permite crear el recíproco de una fracción, de esta manera queda cumplida la expectativa anterior. 

21. Creamos una nueva expectativa para poder comparar dos fracciones usando `==`. El error al ejecutar el programa con `rake` nos dice que ha sido imposible encontrar el método definido.

22. Solucionamos el error anterior creando el método `==`. 

23. Se ha mejorado el método `reciproco` puesto que antes se comparaban cadenas de caracteres. A su vez se ha modificado la expectativa para su correcta interpretación. Además, se ha añadido la expectativa para mostrar la fracción opuesta haciendo uso del método `-@`. 

24. Añadimos el método `-@` para poder crear el opuesto de una fracción. Para ello ha sido necesario modificar el método `gcd`. 

25. Creada la expectativa para el valor absoluto de una funcion utilizando el método `abs`.
 
26. Añadida la defición del método `abs` para cumplir la expectativa.

27. Creada la expectativa para el operador resto entre dos fracciones, con el operador `%`.

28. Se ha modificado un error de sintaxis en la expectativa del operador `%`. Añadiendo paréntesis hemos corregido dicho error. Además se ha definido el método para dicho operador.

29. Creada la expectativa para comprobar si una fraccion es menor que otra, con eĺ método `<`.

30. Se definió el método `<` para comprobar si una fracción es menor que otra. De esta manera quedó cumplida la expectativa anterior.

31. Creamos la expectativa para comprobar si una fraccion es mayor que otra, mediante `>`. Solucionamos el error que se produce al crear la expectativa definiendo el método `>` en el fichero **racional.rb**.

32. Añadidas las expectativas para comprobar que dos fracciones sean mayor o igual - menor o igual, con los métodos `>=` y `<=`.

33. Se han definido lo métodos para los operadores `<=` y `>=`.

34. Añadidos los `describe` al fichero **racional_spec.rb** para separar por bloques las expectativas y estructurar el programa de una forma más intuitiva. 

35. Documentación del código. 
