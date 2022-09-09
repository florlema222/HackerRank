require 'json'
require 'stringio'

def mini_max_sum(arr)
  array = arr.sort
  valor_total = 0

  array.each do |x|
    valor_total += x
  end

  print valor_total - array[4]
  print ' '
  print alor_total - array[0]
end

arr = gets.rstrip.split.map(&:to_i)

mini_max_sum arr
