print 'Year : '
year = gets.chomp
print 'Month : '
month = gets.chomp
print 'Day : '
day = gets.chomp

seconds = Time.now() - Time.mktime(year,month,day)
old = (seconds/(60*60*24*365)).to_i()
puts 'You are ' + old.to_s() + ' years old.'
