class CivilStatus < ActiveRecord::Base
  validates_presence_of :family_name, :name, :gender, :age, :current_city
  Genders = ["","femme", "homme"]
  Statuses = ["","marié(e)","celibataire"]
end
