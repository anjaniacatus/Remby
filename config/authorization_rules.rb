authorization do 
  role :admin do
    has_permission_on [:civil_statuses, :users, :cvs, :compagnies], :to => :manage
    has_permission_on :authorization_rules, :to => :read
    has_permission_on :authorization_usages, :to => :read
  end
  
  role :member do
  
  end

  role :guest do
  end

  role :compagny do
  end 
end  
  privileges do
    privilege :manage, :includes => [:create, :read, :update, :delete]
    privilege :read, :includes => [:index, :show]
    privilege :create, :includes => :new
    privilege :update, :includes => :edit
    privilege :delete, :includes => :destroy
  end
  
