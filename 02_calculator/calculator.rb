#write your code here
def add (eka,toka)
	return (eka+toka).to_i
end


def subtract(eka, toka)
	return (eka-toka).to_i
end

def sum taulu
	if taulu == []
		return 0
	else 
		
		a = 0
		while a < taulu.length 
			b = b.to_i + taulu[a].to_i
			a = a +1
		end
	end
return b
end

def multiply *kaikki
	tulo = 1
	kaikki.each  { |i| tulo *=i}
	tulo	

end
	
def power (nro1, nro2)
	return nro1**nro2
	
	end
	puts power(3,2)


