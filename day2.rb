twice = 0
thrice = 0
File.readlines("input2.txt").each do |line|
  charcounts = ('a'..'z').map{|char|line.count(char)}
  twice += charcounts.uniq.count(2)
  thrice += charcounts.uniq.count(3)
end

puts twice*thrice
