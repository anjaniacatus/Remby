class Firm < ActiveRecord::Base
  has_many :offerings, :dependent => :delete_all
end
