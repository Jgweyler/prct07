#Fichero para definir las expectativas

require "lib/racional.rb"
require "lib/gcd.rb"
require "lib/mcm.rb"

describe Fraccion do	#Es la primera expectativa
	
	before :each do
		@rac1 = Fraccion.new(2,3)
		@rac2 = Fraccion.new(3,4)
		@rac3 = Fraccion.new(4,6)
		@rac4 = Fraccion.new(-5,2)
	end
	it "Debe existir un numerador" do
		@rac1.num.should eq(2)		
	end
	it "Debe existir un denominador" do
		@rac1.denom.should eq(3)		
	end

	it "Debemos mostrar la fraccion como a/b" do
		@rac1.to_s.should eq("2/3")
	end
	
	it "Debemos mostrar la fraccion en formato flotante" do
		@rac2.to_float.should eq(3/4)
	end

	it "Se debe comparar si dos fracciones son iguales con ==" do
		@rac1.should == @rac3
	end

	it "Debemos mostrar la fraccion recíproca" do
		@rac3=Fraccion.new(3,2)
		@rac1.reciproco.should == @rac3
	end

	it "Se debe calcular el opuesto de una fraccion con -" do
		@rac3= Fraccion.new(-2,3)
		(-@rac1).should == @rac3
	end

	it "Se debe calcular el valor absoluto de una fraccion con abs" do
		@rac3= Fraccion.new(5,2)
		@rac4.abs.should == @rac3
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
		@rac3.num.should eq(1)
		@rac3.denom.should eq(2)
	end
	it "Debe realizarse la división de fracciones" do
		@rac3=@rac1/@rac2
		@rac3.num.should eq(8)
		@rac3.denom.should eq(9)
	end

	it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
		@rac1%@rac2.should eq(8)
		
	end
	
end
