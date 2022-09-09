require 'json'
require 'stringio'

def plusMinus(arr)
  n = arr.count
  count_neg = 0
  count_pos = 0
  zero = 0
  arr.each do |i|
    if i.negative?
      count_neg += 1
    elsif i.possitive?
      count_pos += 1
    elsif i.zero?
      zero += 1
    end
  end
  negatives = format('%.6f', ((count_neg/n.to_f).fdiv(100000))).to_f
  positives = format('%.6f', ((count_pos/n.to_f).fdiv(100000))).to_f
  zero = format('%.6f', ((zero/n.to_f).fdiv(100000))).to_f
  puts negatives
  puts positives
  puts zero
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
