authorization do 
  role :admin do
    has_permission_on [ :users, :cvs, :compagnies], :to => :manage
    has_permission_on [:civil_statuses], :to => :read
    has_permission_on :authorization_rules, :to => :read
    has_permission_on :authorization_usages, :to => :read
  end
  
  role :member do
   has_permission_on :civil_statuses, :to => :manage do
     if_attribute :user => is {user}
   end
   has_permission_on :cvs, :to => :read do
     if_attribute :published => :true
   end
   has_permission_on :cvs, :to => :manage do
     if_attribute :cv_user =>  is {user}
   end
   has_permission_on :authorization_rules, :to => :read
   has_permission_on :authorization_usages, :to => :read

  end

end  
  privileges do
    privilege :manage, :includes => [:create, :read, :update, :delete]
    privilege :read, :includes => [:index, :show]
    privilege :create, :includes => :new
    privilege :update, :includes => :edit
    privilege :delete, :includes => :destroy
  end
  
