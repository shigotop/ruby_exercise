comment = ''
while comment != 'BYE'
  print 'Talk to granma: '
  comment = gets.chomp
  if comment == comment.upcase
    puts 'いやー、' + (1930 + rand(21)).to_s() + '以来ないねー!'
  else
    puts 'は?! もっと大きな声で話しておくれ、坊や!'
  end
end

