word = 'init'
words = []
while word != ''
  word = gets.chomp
  words << word
end

i = 0
while i < words.length - 1
  j = words.length - 1
  while j > i
    if words[j] < words[j-1]
      tmp = words[j]
	  words[j] = words[j-1]
	  words[j-1] = tmp
	end 
    j -= 1
  end
  i += 1
end
words.each do |word|
  puts word
end
