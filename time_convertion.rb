require 'json'
require 'stringio'

def timeConversion(s)
  if s[8..-1] == 'PM'
    if s[0..1] != '12'
      pm = (s[0..1].to_i + 12).to_s
      s[0..1] = pm
    end
    result = s.delete('PM')
  else
    if s[0..1] == '12'
      am = s[0..1] = '00'
      s[0..1] = am
    end
    result = s.delete('AM')
  end
  return result
end

print timeConversion('07:01:14PM')
