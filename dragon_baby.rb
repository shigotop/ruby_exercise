class Dragon
  def initialize
  end

  def talk comment
    case comment
    when 'feed'
	  feed
    when 'walk'
      walk
    else
	  puts '何言ってるかわかりません！'
	end
  end

  def feed
    puts '美味しいです！'
  end

  def walk
	puts '歩いています！'
  end
end

baby = Dragon.new

print 'Talk to dragon : '
comment = gets.chomp
baby.talk comment
