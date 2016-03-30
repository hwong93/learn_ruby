def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  if array == []
    0
  else
    array.inject do |sum, num|
      sum += num
    end
  end
end

def multiply(array)
  if array == []
    nil
  else
    array.inject do |product, num|
      product *= num
    end
  end
end
