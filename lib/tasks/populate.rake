namespace :db do 
  desc "Erase and fill database in development environement"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    [CivilStatus, Cv].each(&:delete_all)

    CivilStatus.populate 20 do |civil|
     civil.family_name = Faker::Name.first_name
     civil.name = Faker::Name.name
     civil.age = 16..57
     civil.birthday = 6.days.from_now..6.years.from_now
     civil.hometown = Faker::Address.city
     civil.current_city = Faker::Address.city
     civil.gender = ['male', 'female']
     civil.status = ['married', 'single']    
  end
  end
end
