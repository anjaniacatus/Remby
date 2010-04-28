authorization do 
  role :admin do
    has_permission_on [:cvs, :civil_statuses], :to => [:index, :show, :new, :edit, :update, :destroy]
  end
end
