passedHour = Time.now.hour % 12

chime1 = Proc.new do
  puts 'DONG!'
end

chime2 = Proc.new do
  puts 'LING!'
end

chime3 = Proc.new do
  puts 'DING!'
end

count = 0
while count < passedHour
  chime2.call
  count += 1
end
