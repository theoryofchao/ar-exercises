require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)

@store1.employees.create(first_name: "Alpha", last_name: "Lambda", hourly_rate: 40)
@store1.employees.create(first_name: "Beta", last_name: "Mu", hourly_rate: 50)
@store2.employees.create(first_name: "Gamma", last_name: "Nu", hourly_rate: 50)
@store2.employees.create(first_name: "Delta", last_name: "Xi", hourly_rate: 100)
@store4.employees.create(first_name: "Epsilon", last_name: "Omicron", hourly_rate: 150)
@store4.employees.create(first_name: "Zeta", last_name: "Pi", hourly_rate: 200)
@store5.employees.create(first_name: "Eta", last_name: "Rho", hourly_rate: 250)
@store5.employees.create(first_name: "Theta", last_name: "Sigma", hourly_rate: 300)
@store6.employees.create(first_name: "Iota", last_name: "Tau", hourly_rate: 350)
@store6.employees.create(first_name: "Kappa", last_name: "Upsilon", hourly_rate: 400)