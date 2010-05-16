namespace.db do 
  desc "Erase and fill database in development environement"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    [CivilStatus, CV].each(&:delete_all)

    CivilStaus.populate 40 do |civil|
     civil.family_name = Faker::Name.lastname
     civil.name = Faker::Name.firstname
     civil.age = 16..57
     civil.birthday = randomDate(:year_range => 60, :year_latest => 22)
     civil.hometown = Faker::Address.city
     civil.current_city = Faker::Address.city
     civil.gender = ['male', 'female']
    end
  end
end
