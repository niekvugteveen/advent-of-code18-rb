require 'set'
sum = 0
seen = Set.new
input_lines = File.readlines('input.txt').to_enum
while seen.add?(sum)
  begin
    l = input_lines.next
  rescue StopIteration
    l = input_lines.rewind.next
  end
  sum = sum.send(l[0],l.gsub(/\D/,'').to_i)
end
puts sum
