#Fichero para el desarrollo de la clase Fraccion

class Fraccion #Definición de la clase Fraccion.
	attr_reader :num, :den
	def initialize(num, den)
		@num, @den = num, den
	end
end
