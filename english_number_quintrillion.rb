def englishNumber number
  if number < 0
    return '負でない数を入力してください.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  #  これが最終的に返す文字列です。

  onesPlace = ['one', 'two', 'three', 'four', 'five',
             'six', 'seven', 'eight', 'nine']
  tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty',
             'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
             'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left  = number

  orders = [[18,'quintillion'],[15,'quadrillion'],
			[12,'trillion'],[9, 'billion'],[6,'million'],
			[3,'thousand'],[2,'handred']]
 
  orders.each do |order|
    order2 = 10 ** order[0]
    write = left/order2
    left  = left - write*order2
    if write > 0
	  order_num  = englishNumber write
      numString = numString + order_num + ' ' + order[1]
      if left > 0
        numString = numString + ' '
      end
    end
  end

  write = left/10          #  今度は十の桁です。
  left  = left - write*10  #  そして十の桁をひきます。

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenagers[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end

puts englishNumber(1000)
puts englishNumber(10000)
puts englishNumber(1000000)
puts englishNumber(10000000)
puts englishNumber(1000000000)
puts englishNumber(10000000000)
puts englishNumber(1000000000000)
puts englishNumber(10000000000000)
puts englishNumber(1000000000000000)
puts englishNumber(10000000000000000)
puts englishNumber(1000000000000000000)
puts englishNumber(10000000000000000000)
