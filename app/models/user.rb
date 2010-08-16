class User < ActiveRecord::Base
  has_friendly_id :username, :use_slug => true, :strip_diacritics => true
  acts_as_authentic 
  has_one :civil_status
  has_one :compagny

  def role_symbols
    @role_symbols ||= (roles || []).map {|r| r.to_sym}
  end
  
  def clone
    a_clone = super
    a_clone.send(:instance_variable_set, :@role_symbols, @role_symbols.clone) if @role_symbols
    a_clone
  end

end
