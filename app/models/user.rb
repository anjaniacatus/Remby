class User < ActiveRecord::Base
  acts_as_authentic 
  has_one :civil_status
  def role_symbols
    @role_symbols ||= (roles || []).map {|r| r.to_sym}
  end
  
  def clone
    a_clone = super
    a_clone.send(:instance_variable_set, :@role_symbols, @role_symbols.clone) if @role_symbols
    a_clone
  end

end
