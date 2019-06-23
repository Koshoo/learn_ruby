#write your code here
def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  sum = 0
  i = 0
  while i < arr.length
    sum += arr[i]
    i += 1
  end
  sum
end

def multiply(*numbers)
  sum = numbers[0]
  puts numbers.length
  for i in 1..(numbers.length - 1)
    sum *= numbers[i]
  end
  sum
end

def power(a, b)
  sum = a
  while (b > 1)
    sum *= a
    b -= 1
  end
  sum
end

def factorial(n)
  if n == 0 || n == 1
    return 1
  else
    return n * factorial(n - 1)
  end
end
