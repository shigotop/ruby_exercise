def log comment, &block
  puts '開始 ' + comment
  puts '終了，返り値は：' + (block.call).to_s
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
