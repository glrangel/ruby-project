#write your code here
def add (num1,num2)
	num1.to_i + num2.to_i
end
def subtract (num1,num2)
	num1.to_i - num2.to_i
end
def sum ok
	sum = 0
	ok.each do |item|
		sum += item
	end
	sum
end
def multiply nums
	newNum = nums[0]*nums[1]

	if nums.length > 2
		i = 2
		while i < nums.length
			newNum *= nums.at(i)
			i += 1
		end
	end

	return newNum
end
def power (num1,num2)
	num1**num2
end

def factorial(num)
	if (num == 0 || num == 1)
		return 1
	end
	newNum = num
	factNum = 1
	while num != 0 do
		if((num-1) <= 0)
			break
		end
		newNum = num * (num-1)
		factNum *= newNum
		num -= 2
	end

	return factNum
end
