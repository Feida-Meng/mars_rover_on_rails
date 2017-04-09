# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rover.create(
  # rover_name: 'rover01',
  current_position: '00N',
  move: 'R'

)

Rover.create(
  # rover_name: 'rover02',
  current_position: '01N',
  move: 'R'

)
