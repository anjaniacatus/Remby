class OtherInfo < ActiveRecord::Base
   has_friendly_id :name, :use_slug => true, :strip_diacritics => true
belongs_to :profile
end
