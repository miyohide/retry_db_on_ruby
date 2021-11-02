require "./config/init"

TodoItem.group("TO_CHAR(created_at, 'YYYY-mm-dd')").count.each do |created_at, count|
  puts " #{created_at}: #{count}"
end

puts "-" * 30
puts "     Total: #{TodoItem.count}"
