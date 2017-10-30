#write your code here
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
=begin
def translate string
	
	sanat = string.split    #[kapina aapinen mainos]
	for i in 0...sanat.length # sanat.length = 3
			kirjaimet = sanat[i].chars # eka kirjaimet = sanat[0].chars eli k a p i n a
			
			

if onkovokaali kirjaimet[0]	#onko eka kirjain vokaali?
	kirjaimet.push ("ay")	#jos on, loppuun ay
		sanat[i] = kirjaimet.join("") #liitetään tämän sanan kirjaimet yhteen.
else
	while !(onkovokaali kirjaimet[0]) #jos eka kirjain on konsonantti
		if kirjaimet[0] == "q" 
		if kirjaimet[1] == "u"  #jos sana alkaa qu
				konsonantti = kirjaimet.shift   #konsonantista tulee sanan eka kirjain, joka poistuu
				kirjaimet.push(konsonantti)		#konsonantti kirjainten perään
				u = kirjaimet.shift				#sama toiseen kertaan
				kirjaimet.push(u)
			end
		else								#jos eka kirjain ei ole vokaali eikä q tai u
			konsonantti = kirjaimet.shift	#konsonantista tulee sanan eka kirjain, joka poistuu
			kirjaimet.push(konsonantti)		#konsonantti kirjainten perään
		end
	end
kirjaimet.push ("ay")						#loppuun ay
		sanat[i] = kirjaimet.join("")		#kirjaimet liitetään yhteen
	end
end

	vastaus = sanat.join(" ")
	return vastaus
end


	
def onkovokaali kirjain
	kir = kirjain.downcase

	if kir == "a" or kir == "e" or kir == "i" or kir == "o" or kir == "u"
		return true
	else
		false
	end
	end



puts translate "kapina aapinen mainos quorn kkkkapina"
	
=end


def translate lause

sanat = lause.split(" ")

	for i in (0...sanat.length)
		kirjaimet = sanat[i].chars

	if onkovokaali kirjaimet[0]
		
		kirjaimet.push("ay")
	else 
		while !onkovokaali(kirjaimet[0])
			if kirjaimet[0]=="q" && kirjaimet[1] == "u"
				kirjaimet.shift(2)
				kirjaimet.push("qu")
				break
			end
			vika = kirjaimet[0]
			kirjaimet.push(vika)
			kirjaimet.shift
		end
		kirjaimet.push("ay")
	end
	sanat[i] = kirjaimet.join("")
	end
sanat.join(" ")
end
	

def onkovokaali kirjain
	vokaalit = ["a", "e", "i", "o", "u", "y"]	
	if vokaalit.include?(kirjain) 
		return true
	else
		return false
	end
end

puts translate ("mun aasi quorn kkjaina quiet")

