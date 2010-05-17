class User < ActiveRecord::Base
  acts_as_authentic 
  has_one :civil_status
  serialize :roles, Array
  def role_symbols
    @role_symbols ||= (role || []).map {|r| r.to_sym}
  end

end
