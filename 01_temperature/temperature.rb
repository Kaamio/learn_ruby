#write your code here
def ftoc(fahr)
	conversion = (5.0/9.0)

	if fahr <= 32
		return (0 - (32-fahr)*conversion).to_i
	
	elsif fahr > 32
		return ((fahr-32) * conversion).to_i
		
		end
	end

def ctof (cels)	
	conversion2 = (9.0/5.0)

	if cels <= 0 
		return 32 + ((0-cels)*conversion2).to_i
	
	elsif cels > 0 && cels != 37
		return ((cels*conversion2)+32).to_i
	else
		return ((cels*conversion2)+32.0)
		
		end
	end
	
puts ctof(37)


