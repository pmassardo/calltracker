# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

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

Role.create(name: 'admin')
Role.create(name: 'user')
Role.create(name: 'inactive')

User.create(email: 'paul_massardo@hotmail.com',first_name: 'Paul', last_name: 'Massardo', role_id: 1, password:'12345', password_confirmation: '12345' )
User.create(email: 'test1@test.com',first_name: 'Shari', last_name: 'Massardo', role_id: 1, password:'12345', password_confirmation: '12345' )
User.create(email: 'test2@test.com',first_name: 'Sherri', last_name: 'Potter', role_id: 1, password:'12345', password_confirmation: '12345' )
User.create(email: 'test3@test.com',first_name: 'Tara', last_name: 'Cerone', role_id: 1, password:'12345', password_confirmation: '12345' )
