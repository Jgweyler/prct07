#Fichero para definir las expectativas

require "lib/racional.rb"

describe Fraccion do	#Es la primera expectativa
	
	before :each do
		@rac1=Fraccion.new(0,0)
	end
	it "Debe existir un numerador" do
		@rac1.num.should eq(0)		
	end
	it "Debe existir un denominador" do
		@rac1.den.should eq(0)		
	end

end
