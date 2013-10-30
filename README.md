Práctica de Laboratorio #7. Virtual.
================

Introducción
------------

Considere la clase Ruby para representar fracciones que ha implementado usando el Desarrollo dirigido por pruebas (Test Driven Development - TDD) usando como herramienta Rspec. 

1. Realice las modificaciones oportunas para contemplar el uso del módulo Comparable.

2. La clase se ha de compilar con la herramienta Travis de integración continua. Con ella se comprueba la portabilidad de los desarrollos entre distintas plataformas y versiones de Ruby.

3. Debemos usar también la herramienta Travis. 

Documentación
------------

La organización de los ficheros y directorios en esta práctica es la siguiente:

```
/prct06
	Rakefile
	.travis.yml
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

El fichero **.travis.yml** contendrá las expectativas para probar nuestro programa haciendo uso de la herramienta **Travis**. Vamos a probar nuestro programa en las siguientes plataformas:

```
  - 1.9.3
  - jruby-18mode # JRuby in 1.8 mode
  - jruby-19mode # JRuby in 1.9 mode
  - rbx-18mode
  - rbx-19mode
  - 1.8.7
```

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
* `<=>` este método nos permite usar el módulo comparable en nuestra clase`Fraccion`.

**gcd.rb** contiene el método que calcula el máximo común divisor, es necesario para simplificar las fracciones.

**mcm.rb** contiene el método que calcula el mínimo común múltiplo, este método es necesario para la suma y/o resta de fracciones de diferente denominador. Hace uso del método `gcd` implementado en el fichero _lib/gcd.rb_.



Desarrollo de la práctica
------------

En esta práctica debemos incluir el módulo comparable en la clase que ya teníamos implementada. Para ello es necesario definir el método `<=>`. Hemos comentado de la práctica anterior los métodos comparacionales para que no se produzca conflicto con el nuevo método que vamos a definir.
No es necesario crear nuevas expectativas en el fichero **racional_spec.rb**, ya que nos sirven las que teníamos creadas para los operadores comparacionales por separado.

Creamos el fichero **.travis.yml** donde vamos a incluir las plataformas sobre las que se quiere probar nuestro programa.
