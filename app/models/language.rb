class Language < ActiveRecord::Base
  belongs_to :profile
  LEVEL = [["débutant","débutant"], ["moyen","moyen"], ["avancé","avancé", "maternelle"]].freeze
  NAME = [["français", "français"], ["anglais","anglais"], ["allemand","allemand"]]
end
