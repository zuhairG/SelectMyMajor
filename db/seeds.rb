# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")
 
def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end

User.create( email: 'acheweiky@gmail.com', role: "admin", password: 'sameer123', password_confirmation: 'sameer123')
User.create( email: 'zuhair.ghalib@gmail.com', role: "admin", password: 'sameer123', password_confirmation: 'sameer123')
User.create( email: 'uni@uni.edu', role: "University", password: 'sameer123', password_confirmation: 'sameer123')
User.create( email: 'alumni@uni.edu', role: "Alumni", password: 'sameer123', password_confirmation: 'sameer123')
is = Major.create(name: 'Information Systems', description: 'this is the IS major', level: 'Bachelors')
cs = Major.create(name: 'Computer Science', description: 'this is the CS major', level: 'Bachelors')
ba = Major.create(name: 'Business Administration', description: 'this is the BA major', level: 'Bachelors')
Alumni.create( email: 'test1@alumni.edu',password: 'alumni1', name: 'alumni1', phone: '222-222-2222')

University.create( email: 'test1@uni.edu', name: 'testuni1', phone: '222-222-2222', address: 'here & there' )
University.create( email: 'test2@uni.edu', name: 'testuni2', phone: '222-222-2222', address: 'here & there' )

University.create( email: 'cmuq@uni.edu', name: 'cmuq', phone: '222-222-2222', address: 'education city', picture: seed_image('cmuq'), majors:[Major.find_by_name('Information Systems'), Major.find_by_name('Computer Science'),  Major.find_by_name('Business Administration')])

University.create( email: 'cmuq@uni.edu', name: 'cmuq12', phone: '222-222-2222', address: 'education city', picture: seed_image('cmuq'), majors:[is, ba, cs])


Alumni.create(email: 'alumni@cmu.edu', name: 'cmualum', phone: '222-222-2222', university_id: '3', graduation_year: '2014-05-05', major: cs, email: 'alum@cmu.edu',password: 'sameer123', password_confirmation: 'sameer123', confirmed_at: Time.now)