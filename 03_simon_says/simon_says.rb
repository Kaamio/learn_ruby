#write your code here
def echo sana
	return sana
end

def shout sana
	return sana.upcase
end

def repeat (sana , kertaa=2)
	return kertaa.times.collect { sana }.join(' ')
end


def start_of_word (sana, numero=1)
	taulu = sana.chars.to_a
	i = 0
	sanaketju = ""
	while i<numero
	 	sanaketju = sanaketju + taulu[i]
	 	i = i+1
	 end 
	 return sanaketju
end


def first_word (sana)
	taulu = sana.chars.to_a
	i = 0
	sanaketju = ""
	while i<sana.length && taulu[i] != " "
	 	sanaketju = sanaketju + taulu[i]
	 	i = i+1
	 end 
	 return sanaketju
end


#def titleize (sana)
#	taulu = sana.chars.to_a
#	i = 0
#	sanaketju = ""
#
#	while i<sana.length
#			if (taulu[i-1] == " ") || i==0 
#		end
#	 	sanaketju = sanaketju + taulu[i]
#	 	i = i+1
#	 end 
#	 return sanaketju
#end

def titleize (lause)
sanat = lause.split " "
	sanat.length.times do |i|
		if (sanat[i].length>4 || i==0 || i==sanat.length-1)
			sanat[i].capitalize!
		end

end
sanat.join(" ")
end
puts titleize ("jep jep joooo")

