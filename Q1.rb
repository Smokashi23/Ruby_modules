num = 7
flag = 0

if num < 2
  flag = 1
else
  (2..(num/2).to_i).each do |i|
    if num % i == 0
      flag = 1
      break
    end
  end
end

if flag == 1
  puts 'Not Prime'
else
  puts 'Prime'
end
