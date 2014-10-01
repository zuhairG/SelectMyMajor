# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create( email: 'acheweiky@gmail.com', role: "admin", password: 'sameer123', password_confirmation: 'sameer123')
User.create( email: 'zuhair.ghalib@gmail.com', role: "admin", password: 'sameer123', password_confirmation: 'sameer123')
