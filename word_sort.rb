word = 'init'
words = []
while word != ''
  word = gets.chomp
  words << word
end

words = words.sort()
words.each do |word|
  puts word
end
