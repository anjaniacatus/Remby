# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#user account Creation
puts "Creating account."
params = {
:username => "catus",
:email => "catus@yahoo.fr",
:role => 1,
:password => "catus",
:password_confirmation => "catus",
}
user = User.create!(params)
puts "Done!!!"
