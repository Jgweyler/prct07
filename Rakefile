task :default => :spec

desc "Ejecutar las espectativas de la clase Fraccion"
task :spec do
	sh "rspec -I. spec/racional_spec.rb"
end

task :bin do
	sh "./lib/racional.rb"
end

task :test do
	sh "rspec -I. spec/racional_spec.rb --format documentation"
end

task :thtml do
	sh "rspec -I. spec/racional_spec.rb --format html"
end
