ActionController::Routing::Routes.draw do |map|
  map.resources :contact_informations, :only => [ :new, :create, :destroy ]


  map.resources :jobs

  map.resources :offerings

  map.resources :notes

  map.resources :societies, :has_many => [ :notes, :offerings, :jobs, :contact_informations ], :dependent => :destroy

  map.resources :skills

  map.resources :other_infos

  map.resources :education_informations 

  map.resources :schools

  map.resources :experiences
  map.resources :localisations
  map.resources :contracts
  map.resources :functions
  map.resources :profiles, :has_many => [:education_informations, :skills, :experiences, :other_infos]


  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.resources :user_sessions
  map.resources :users
  
  map.root :controller => "societies", :action => 'index'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end