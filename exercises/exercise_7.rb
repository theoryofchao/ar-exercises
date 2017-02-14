require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Input a new store name"

@query = gets.chomp

@new_store = Store.new(name: @query);

if(@new_store.save)
  pp "success"
else
  @new_store.errors.full_messages.each do |error|
    pp error
  end
end

#, annual_revenue: 300000, mens_apparel: true, womens_apparel: true