def lonelyinteger(array)
  array.each do |x|
    result = array.count(x)
    return x if result == 1
  end
end

print lonelyinteger([1, 4, 1, 2, 2, 3, 3])
