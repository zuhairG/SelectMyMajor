# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create( email: 'acheweiky@gmail.com', role: "admin", password: 'sameer123', password_confirmation: 'sameer123')
User.create( email: 'zuhair.ghalib@gmail.com', role: "admin", password: 'sameer123', password_confirmation: 'sameer123')
User.create( email: 'uni@uni.edu', role: "University", password: 'sameer123', password_confirmation: 'sameer123')
User.create( email: 'alumni@uni.edu', role: "Alumni", password: 'sameer123', password_confirmation: 'sameer123')
University.create( email: 'test@uni.edu', name: 'testuni', phone: '222-222-2222', address: 'here & there' )
University.create( email: 'test1@uni.edu', name: 'testuni1', phone: '222-222-2222', address: 'here & there' )
University.create( email: 'test2@uni.edu', name: 'testuni2', phone: '222-222-2222', address: 'here & there', picture: 'cmuq.jpg' )