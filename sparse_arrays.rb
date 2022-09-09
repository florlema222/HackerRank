def matchingStrings(strings, queries)
  result = []
  queries.each do |x|
    if strings.include?(x)
      r = strings.count(x)
      result.push(r)
    else
      result.push(0)
    end
  end
  result
end

print matchingStrings(%w[aba baba aba xzxb], %w[aba xzxb ab])
