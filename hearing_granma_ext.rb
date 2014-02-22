count = 0
while count < 3
  print 'Talk to granma: '
  comment = gets.chomp
  if comment == 'BYE'
    puts 'は?! もっと大きな声で話しておくれ、坊や!'
	count += 1
  else
	count = 0
    if comment == comment.upcase
  	  puts 'いやー、' + (1930 + rand(21)).to_s() + '以来ないねー!'
    else
      puts 'は?! もっと大きな声で話しておくれ、坊や!'
    end
  end
end
