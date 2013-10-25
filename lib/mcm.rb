#Fichero para la implementación del mínimo común múltiplo

def mcm(u, v)                #método Mínimo Común Múltiplo
	(u/gcd(u,v))*v        #uso del máx. común divisor para hallarlo        
end
