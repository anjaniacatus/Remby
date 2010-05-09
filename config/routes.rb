ActionController::Routing::Routes.draw do |map|
  map.connect 'auto_complete_for_other_skill_title', :controller => 'cvs', :action => 'auto_complete_for_other_skill_title'

  map.connect 'auto_complete_for_language_level', :controller => 'cvs', :action => 'auto_complete_for_language_level'


  map.connect 'auto_complete_for_experience_duration', :controller => 'cvs', :action => 'auto_complete_for_experience_duration'

  map.connect 'auto_complete_for_experience_job_id', :controller => 'cvs', :action => 'auto_complete_for_experience_job_id'

  map.connect 'auto_complete_for_experience_jobtitle', :controller => 'cvs', :action => 'auto_complete_for_experience_jobtitle'

  map.connect 'auto_complete_for_experience_compagny_id', :controller => 'cvs', :action => 'auto_complete_for_experience_compagny_id'

  map.connect 'auto_complete_for_degree_course_field', :controller => 'cvs', :action => 'auto_complete_for_degree_course_field'

  map.connect 'auto_complete_for_degree_course_degree_name', :controller => 'cvs', :action => 'auto_complete_for_degree_course_degree_name'

  map.connect 'auto_complete_for_cv_title', :controller => 'cvs', :action => 'auto_complete_for_cv_title'

  map.resources :cvs


  map.connect 'auto_complete_for_language_level', :controller => 'cvs', :action => 'auto_complete_for_language_level'

  map.connect 'auto_complete_for_language_title', :controller => 'cvs', :action => 'auto_complete_for_language_title'

  map.connect 'auto_complete_for_experience_duration', :controller => 'cvs', :action => 'auto_complete_for_experience_duration'

  map.connect 'auto_complete_for_experience_job_id', :controller => 'cvs', :action => 'auto_complete_for_experience_job_id'

  map.connect 'auto_complete_for_experience_jobtitle', :controller => 'cvs', :action => 'auto_complete_for_experience_jobtitle'

  map.connect 'auto_complete_for_degree_course_field', :controller => 'cvs', :action => 'auto_complete_for_degree_course_field'

  map.connect 'auto_complete_for_degree_course_degree_name', :controller => 'cvs', :action => 'auto_complete_for_degree_course_degree_name'

  map.connect 'auto_complete_for_cv_title', :controller => 'cvs', :action => 'auto_complete_for_cv_title'

  map.resources :cvs

  map.resources :experiences
  map.resources :contact_infos

  map.resources :civil_statuses do |civil_status|
    civil_status.resources :cvs
  end  
  map.resources :other_skills
  map.resources :interests
  map.resources :offerings
  map.resources :notes
  map.resources :domains
  map.resources :localisations
  map.resources :contracts
  map.resources :functions


  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  map.resources :user_sessions
  map.resources :users
  map.resources :contact_infos, :only => [:new, :create, :destroy]
  map.resources :job_sheets
  map.resources :compagnies

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
   map.root :controller => "cvs"

  # See how all your routes lay out with "rake routes"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end