require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
    n = arr.count()
    countNeg = 0
    countPos = 0
    zero = 0
    arr.each do |i|
        if i < 0
            countNeg += 1
        elsif i > 0
            countPos += 1
        elsif i == 0
            zero += 1
        end
    end
    negatives = format("%.6f", ((countNeg/n.to_f).fdiv(100000))).to_f
    positives = format("%.6f", ((countPos/n.to_f).fdiv(100000))).to_f
    zero = format("%.6f", ((zero/n.to_f).fdiv(100000))).to_f
    puts negatives
    puts positives
    puts zero
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
