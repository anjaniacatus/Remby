class Skill < ActiveRecord::Base
   has_friendly_id :title, :use_slug => true, :strip_diacritics => true

  belongs_to :profile
end
