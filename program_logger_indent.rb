$nestingDepth = 0

def log comment, &block
  print "\s\s" * $nestingDepth
  puts '開始 ' + comment 
  print "\s\s" * $nestingDepth
  $nestingDepth += 1
  puts '終了，返り値は：' + (block.call).to_s
  $nestingDepth -= 1
end

log '外ブロック' do
  log 'ある小さなブロック' do
    5
  end
  log 'もうひとつのブロック' do
    'I like Thai food!'
  end
  false
end
