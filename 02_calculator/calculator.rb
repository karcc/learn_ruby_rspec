def add (x,y)
	x + y
end

def subtract (x,y)
	x - y
end

def sum(number)	
	number.inject(0){|x, num| x + num}	
end

def multiply(number)
	number.inject(1){|num1, num2| num1 * num2}
end

def power(num, power_num)
	num ** power_num	
end

def factorial(x)
	if x <= 1  
		1
	else
	(1..x).inject(:*)
end
end
