#! /usr/bin/ruby

#Fichero para el desarrollo de la clase Fraccion

require "gcd.rb"
require "mcm.rb"

class Fraccion #Definición de la clase Fraccion.
	include Comparable		#Incluimos el módulo Comparable.

	def initialize(num, den) 	#método para inicializar las variables
		divisor = gcd(num, den) #obtenemos el gcd entre numerador y denominador para simplificar
		@num = num/divisor	
		@den = den/divisor
	end

	#Getters
	def num()
		@num
	end

	def denom()
		@den
	end
	
	#Conversión a string
	def to_s()
		"#{@num}/#{@den}"
	end 
	
	#Conversión a flotante
	def to_float()
		@num/@den
	end

	#Igualdad. Método que compara si dos fracciones son iguales
	def ==(other)
		((@num == other.num) && (@den == other.denom))
	end 

	#Recíproco. Calcula la recíproca de una fracción.
	def reciproco()
		Fraccion.new(@den,@num)
	end
	
	#Opuesto. Se obtiene el opuesto de una fracción
	def -@()
		Fraccion.new(-@num, @den)
	end

	#Valor absoluto. 
	def abs
		Fraccion.new(@num.abs, @den.abs)
	end

	#Resto. Obtenemos el resto entre dos fracciones.
	def %(other)
		((@num * other.denom) % (@den * other.num))	
	end

	#Suma. Se pasa un objeto como parámetro
	def +(other)
		aux = mcm(@den, other.denom)           #mcm de los denominadores
                Fraccion.new(((aux/@den)*@num)+((aux/other.denom)*other.num),aux) #suma de los objetos 
	end

	#Resta. Se pasa un objeto como parámetro
	def -(other)
		aux = mcm(@den, other.denom)           #mcm de los denominadores
                Fraccion.new(((aux/@den)*@num)-((aux/other.denom)*other.num),aux) #resta de los objetos
	end
	
	#Producto. Se pasa un objeto como parámetro
	def *(other)
		Fraccion.new(@num*other.num, @den*other.denom)	
	end
	
	#División. Se pasa un objeto como parámetro
	def /(other)
		Fraccion.new(@num*other.denom, @den*other.num)	
	end
	
	#Definimos el método que nos va a permitir hacer las comparaciones entre fracciones.
	def <=> (other)
		return nil unless other.instance_of? Fraccion  #Comprobamos que 'other' es una instancia de Fraccion y
		(@num * other.denom) <=> (@den * other.num)    #por lo tanto se puede comparar con un objeto de la misma clase.
	end
=begin
	#Menor
	def <(other)
		(@num * other.denom) < (@den * other.num)
	end

	#Mayor
	def >(other)
		(@num * other.denom) > (@den * other.num)
	end
	
	#Menor o igual
	def <=(other)
		(@num * other.denom) <= (@den * other.num)
	end
	
	#Mayor o igual
	def >=(other)
		(@num * other.denom) >= (@den * other.num)
	end
=end 
end
