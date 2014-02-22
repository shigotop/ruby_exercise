class OrangeTree
  def initialize
    @height = 0
    @orangeCount = 0
	@year = 0
  end

  def oneYearPasses
	@orangeCount -= @year
    @height += 1
	@year += 1
	if @year > 2
	  @orangeCount += @year
 	  if @year == 7
	    puts '木は死にました'
        exit
      end
	end
  end

  def countTheOranges
    return @orange_num
  end

  def pichAnOrange
	if @orangeCount > 0
      @orangeCount -= 1
      puts scoreOrange
	else
	  puts "もうオレンジはありません"
	end
  end

  def scoreOrange
    scores = ['最高！','うまい', 'なかなか', '微妙', 'まずい']
	return scores.sample
  end
end

tree = OrangeTree.new
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.pichAnOrange
tree.oneYearPasses
tree.pichAnOrange
tree.oneYearPasses
