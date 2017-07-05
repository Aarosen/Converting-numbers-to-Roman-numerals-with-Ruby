def counter_f(a, b, c, numero)
	case numero
	when (1..3)
		a * numero 
	when 4
		a + b
	when (5..8)
		if numero % 5 == 0
			b
		elsif numero % 5 != 0 
			b + (a * (numero % 5))
		end
	when 9
		a + c
	end
end

def counter_last(a, numero)
	a * numero 
end

def un_digito(position)
	r = position
	i = "I"
	v = "V"
	x = "X"
	counter_f(i,v,x,r)
end

def dos_digitos(position)
	r = position
	x = "X"
	l = "L"
	c = "C"
	counter_f(x,l,c,r)
end

def tres_digitos(position)
	r = position
	c = "C"
	d = "D"
	m = "M"
	counter_f(c,d,m,r)
end

def cuatro_digitos(position)
	r = position
	m = "M"
	counter_last(m,r)
end	

def to_roman(numeros)
	x = []
	numeros.to_s.chars.map{ |y| x << y.to_i }	
	a = x.length
	if a == 1
		x[0] = un_digito(x[0])
		x.join
	elsif a == 2
		x[0] = dos_digitos(x[0])
		x[1] = un_digito(x[1])
		x.join
	elsif a == 3
		x[0] = tres_digitos(x[0])
		x[1] = dos_digitos(x[1])
		x[2] = un_digito(x[2])
		x.join
	elsif a == 4
		x[0] = cuatro_digitos(x[0])
		x[1] = tres_digitos(x[1])
		x[2] = dos_digitos(x[2])
		x[3] = un_digito(x[3])
		x.join
	end				
end

p a = to_roman(1) == "I"
p b = to_roman(3) == "III"  
p c = to_roman(4) == "IV"
p d = to_roman(9) == "IX"
p e = to_roman(13) == "XIII"
p f = to_roman(14) == "XIV"
p g = to_roman(944) == "CMXLIV"
p h = to_roman(1453) == "MCDLIII"
p i = to_roman(1646) == "MDCXLVI"

puts
puts

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}"