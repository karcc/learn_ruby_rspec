def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, num = 2)
	([string] * num).join(" ")
end

def start_of_word (string, num)
	string[0...num]	
end

def first_word(string)
	string.split(" ").first
end

def titleize(string)
	lowercase_string = %w{and over the}
	string.split.each_with_index.map{|s, index|lowercase_string.include?(s) && index > 0 ? s : s.capitalize}.join(" ")
end