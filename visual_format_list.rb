outline = [
  [1, '数', 1],
  [2, '文字', 72],
  [3, '変数', 118]
]


line_width = 40
puts '目次'.center(line_width)
outline.each do |t|
	puts (t[0].to_s() + '章：' + t[1]).ljust(line_width/2) + ('p.'+ t[2].to_s()).rjust(line_width/2)
end

