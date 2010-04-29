class Language < ActiveRecord::Base
  belongs_to :cv
  validates_presence_of :title, :level
  Levels = ["maternelle","courant","avancé","intermediaire", "débutant"]
  Titles = ["anglais", "malgache", "allemand","espagnol", "italien", "japonais", "chinois", "français", "mandarin"]
end
