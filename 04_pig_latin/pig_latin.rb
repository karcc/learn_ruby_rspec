def translate(str)

    letters = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = letters - vowels

	sentence = str.split.map do |string|
    if vowels.include? (string[0])
    	string + "ay"
    elsif string[0..1] == "qu"
    	string[2..-1] + "quay"
    elsif consonants.include? (string[0]) and string[1..2] == "qu"
    	string[3..-1] + string [0] + "quay"
    elsif consonants.include? (string[0]) and consonants.include? (string[1]) and consonants.include? (string[2])
    	string[3..-1] + string [0..2] + "ay"
    elsif consonants.include? (string[0]) and consonants.include? (string[1])
    	string[2..-1] + string [0..1] + "ay"
    elsif consonants.include? (string[0])
    	string[1..-1] + string[0] + "ay"
    
    else
    	string
    				
    	end
    end
    sentence.join(" ")
   
end