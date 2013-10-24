#Fichero para el desarrollo de la clase Fraccion

require "lib/gcd.rb"
require "lib/mcm.rb"

class Fraccion #Definición de la clase Fraccion.
	
	def initialize(num, den)
		divisor = gcd(num, den) #obtenemos el gcd de numerador y denominador para simplificar
		@num = num/divisor	
		@den = den/divisor
	end

	def num()
		@num
	end

	def denom()
		@den
	end
	
	def to_s()
		"#{@num}/#{@den}"
	end 
	
	def to_float()
		@num/@den
	end

	def ==(other)
		((@num == other.num) && (@den == other.denom))
	end 

	def reciproco()
		Fraccion.new(@den,@num)
	end
	
	def -@()
		Fraccion.new(-@num, @den)
	end

	def abs
		Fraccion.new(@num.abs, @den.abs)
	end

	def +(other)
		aux = mcm(@den, other.denom)           #mcm de los denominadores
                resultado = Fraccion.new(((aux/@den)*@num)+((aux/other.denom)*other.num),aux) #suma de los objetos
                simplificar(resultado)  
	end

	def -(other)
		aux = mcm(@den, other.denom)           #mcm de los denominadores
                resultado = Fraccion.new(((aux/@den)*@num)-((aux/other.denom)*other.num),aux) #resta de los objetos
                simplificar(resultado)  
	end
	
	def *(other)
		Fraccion.new(@num*other.num, @den*other.denom)	
	end
	
	def /(other)
		Fraccion.new(@num*other.denom, @den*other.num)	
	end

	def simplificar(other)
		aux = gcd(other.num, other.denom)                 #halla el mcd de numerador y denominador
                Fraccion.new(other.num/aux, other.denom/aux)         #divide los valores anteriores entre el mcd obtenido
	end

	def %(other)
		((@num * other.denom) % (@den * other.num))	
	end

	def <(other)
		(@num * other.denom) < (@den * other.num)
	end

	def >(other)
		(@num * other.denom) > (@den * other.num)
	end
	
end
