# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#user account Creation
=begin
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
#creating firm
puts "create firm"
params = {
:name => "Cotona",
:permalink => "Cotona",
:baseline =>"Mamokatra lamba tsara",
:description =>"Usine de fabrique de tissu size à Antsirabe"}
firm = Firm.create(params)
puts "firm created!!"
=end
#creating profile
params = {
:firstname => "Rakotobe",
:lastname => "koto",
:permalink =>"koto",
:age => 22,
:description => "ceci est une description de Rakotobe koto",
:status => "single",
:sex => "male"}
profile = Profile.create(params)
puts "profile created!!!"

