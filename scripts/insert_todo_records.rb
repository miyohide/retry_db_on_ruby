require "./config/init"

1_000.times do |i|
  puts "Create TodoItem #{i}"
  TodoItem.new(title: "title %04d" % i, description: "description %04d" % i).save
  sleep 0.5
end
