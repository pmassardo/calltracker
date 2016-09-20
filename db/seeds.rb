# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Mayor.create(name: 'Emanuel', city: cities.first)

Room.create(number: '102')
Room.create(number: '104')
Room.create(number: '106')
Room.create(number: '202')
Room.create(number: '204')
Room.create(number: '206')
Room.create(number: '302')
Room.create(number: '304')
Room.create(number: '306')

Task.create(name: 'Ported')
Task.create(name: 'Toileted')
Task.create(name: 'Showered')
