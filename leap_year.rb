print 'Start year : '
start_year = gets.chomp
print 'End year : '
end_year = gets.chomp

year = start_year.to_i()
while year < end_year.to_i()
  if year % 4 == 0 and (year % 100 != 0 or (year % 100 == 0 and year % 400 == 0))
    puts year
  end  
  year += 1
end
