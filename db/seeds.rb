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
puts "Account created"
=end
puts "Creating localisation's job"
antananarivo = Localisation.create :name => "Antananarivo"
antsirabe = Localisation.create :name => "Antsirabe"
fianarantsoa = Localisation.create :name => "Fianarantsoa"
toamasina = Localisation.create :name => "Toamasina"
majunga = Localisation.create :name => "Majunga"
tulear = Localisation.create :name => "Tulear"
diego = Localisation.create :name => "Diégo Suarez"
puts "Localisation's job created"

puts "Creating function's job"
secretaire = Function.create :name => "Secrétaire"
commerciale = Function.create :name => "Commerciale"
pigiste = Function.create :name => "Pigiste"
coursier = Function.create :name => "Coursier"
receptioniste = Function.create :name => "Receptioniste"
database_administrator = Function.create :name => "Database Administrator"
puts "Function's job created"

puts "Creating Contract's job type"
cdi = Contract.create :name => "CDI"
cdd = Contract.create :name => "CDD"
stage = Contract.create :name => "Stage de 6 mois"
stage_1 = Contract.create :name => "Stage de 3 mois"
formation = Contract.create :name => "Formation en Entreprise"
interim = Contract.create :name => "Intérimaire"
puts "Contract's job created"
puts "Done!!!"
#creating profile
params = {
:firstname => "Rakotobe",
:lastname => "koto",
:age => 22,
:description => "ceci est une description de Rakotobe koto",
:status => "single",
:sex => "male"}
profile = Profile.create(params)
puts "profile created!!!"
