def beer_song beer 
  puts beer.to_s() + ' Bottles of beer on the wall'
  puts beer.to_s() + ' Bottles of beer'
  puts 'Take one down and pass it around'
  beer -= 1
  puts beer.to_s() + ' Bottles of beer on the wall'
  puts ''
  beer_song beer
end

beer_song(9999)
