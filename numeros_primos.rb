def identify_prime_factors(integer)
	c = 0
	for i in (1..integer)
		if integer % i == 0
			c += 1
		end
	c
	end
	
	if c == 2
		integer
	end
end
identify_prime_factors(18)

def numeros_primos(integer)
	my_aray2 = []
	for i in (2..10)
		a = identify_prime_factors(i)
		my_aray2.push(a)
	end
	p my_aray2
end

puts numeros_primos(22)
# p prime_factors(9) == [3, 3]
# p prime_factors(12) == [2, 2, 3]
# p prime_factors(34) == [2, 17]