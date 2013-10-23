#Fichero para el desarrollo de la clase Fraccion

require "lib/gcd.rb"
require "lib/mcm.rb"

class Fraccion #Definición de la clase Fraccion.
	#attr_reader :num, :den
	def initialize(num, den)
		@num, @den = num, den
	end

	def num()
		@num
	end

	def den()
		@den
	end

	def *(other)
		Fraccion.new(@num*other.num, @den*other.den)	
	end
	
	def /(other)
		Fraccion.new(@num*other.den, @den*other.num)	
	end

	
end
