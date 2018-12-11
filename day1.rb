answer = 0
duplicate = nil
seen = [0]
until !duplicate.nil?
  File.foreach('input.txt') do |line|
    answer = answer.send(line[0],line.gsub(/\D/,'').to_i)
    if seen.include?(answer)
      duplicate = answer
      puts duplicate
      exit
    end

    seen << answer
  end

end

puts answer
