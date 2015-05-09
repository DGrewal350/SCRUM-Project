# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create role: "Family Physician"
Role.create role: "Chiropractor/PT"
Role.create role: "Dentist"
Role.create role: "Pediatrician"
Role.create role: "Podiatrist"
Role.create role: "Pharmacists"
Role.create role: "Nurse"
Role.create role: "Scribe"
Role.create role: "Pharmacy Tech"
Role.create role: "EMT or MA"
Role.create role: "Bi-lingual Volunteer"
Role.create role: "Dietitian"

#-------------------------------USERS-----------------------------------
admin = User.create(:email => 'Admin@gmail.com', :password => 'pass', :password_confirmation => 'pass', :last_name => 'Account', :first_name => 'Admin')
admin.toggle!(:admin)
User.create(:email => 'User@gmail.com', :password => '12345678', :password_confirmation => '12345678', :last_name => 'Account', :first_name => 'User', :role_id => '10', :admin => 'false')
User.create(:email => 'cher@gmail.com', :password => '12345678', :password_confirmation => '12345678', :last_name => 'Huber', :first_name => 'Cheryl', :role_id => '7', :admin => 'false')
User.create(:email => 'nathan@gmail.com', :password => '12345678', :password_confirmation => '12345678', :last_name =>'Bingham', :first_name => 'Nathan', :role_id => '2', :admin => 'false')
User.create(:email => 'daniel@gmail.com', :password => '12345678', :password_confirmation => '12345678', :last_name => 'Grewal', :first_name => 'Daniel', :role_id => '4', :admin => 'false')
