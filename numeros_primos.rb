def identify_prime_factors?(integer)
	c = 0
	for i in (1..integer)
		if integer % i == 0
			c += 1
		end
	c
	end
	c == 2
end
# p identify_prime_factors?(19)

def numeros_primos(integer)
	my_aray2 = []
	for i in (2..integer)
		a = identify_prime_factors?(i)
		if a == true
			my_aray2.push(i)
		end
	end
	my_aray2
end
# p numeros_primos(9)

def prime_factors(integer)
	array_primos = numeros_primos(integer)
	new_array = []
	for m in array_primos
		# p "iteracion #{m} #{array_primos}"
		if integer % m == 0
			new_array.push(m)
			nv = integer / m
			if nv % m == 0
				new_array.push(m)
			end
		end
		# p "resultado   #{array_primos}"
		# p "new_array   #{new_array}"
	end
		new_array
end

p prime_factors(102)

p prime_factors(9) == [3, 3]
p prime_factors(12) == [2, 2, 3]
p prime_factors(34) == [2, 17]
p prime_factors(102) == [2,3, 17]
p prime_factors(4568)