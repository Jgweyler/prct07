#Fichero para definir las expectativas

require "lib/racional.rb"
require "lib/gcd.rb"
require "lib/mcm.rb"

describe Fraccion do	#Es la primera expectativa
	
	before :each do
		@rac1=Fraccion.new(2,3)
		@rac2=Fraccion.new(3,4)
		@rac3=Fraccion.new(0,0)
	end
	it "Debe existir un numerador" do
		@rac1.num.should eq(2)		
	end
	it "Debe existir un denominador" do
		@rac1.denom.should eq(3)		
	end

	it "Debe realizarse la suma de fracciones" do
		@rac3=@rac1+@rac2
		@rac3.num.should eq(17)
		@rac3.denom.should eq(12)
	end
	
	it "Debe realizarse la resta de fracciones" do
		@rac3=@rac1-@rac2
		@rac3.num.should eq(-1)
		@rac3.denom.should eq(12)
	end
	
	it "Debe realizarse el producto de fracciones" do
		@rac3=@rac1*@rac2
		@rac3.num.should eq(6)
		@rac3.denom.should eq(12)
	end
	it "Debe realizarse la división de fracciones" do
		@rac3=@rac1/@rac2
		@rac3.num.should eq(8)
		@rac3.denom.should eq(9)
	end
end
