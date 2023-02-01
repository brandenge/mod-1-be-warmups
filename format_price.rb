def format_price(price)
  "$%05.2f" % price.delete('$')
end

p format_price('$143.50')
p format_price('$02.50')
p format_price('$32.25$')
p format_price('3$.25')
p format_price('9.$50')
p format_price('75.98')
