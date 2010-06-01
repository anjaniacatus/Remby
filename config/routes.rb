ActionController::Routing::Routes.draw do |map|
  map.resources :fields
  map.resources :images


  map.connect 'auto_complete_for_degree_course_field', :controller => 'degree_courses', :action => 'auto_complete_for_degree_course_field'

  map.resources :cvs
  map.resources :fields

  map.resources :civil_statuses do |civil_status|
    civil_status.resources :cvs do |cv|
      cv.resources :degree_courses 
      cv.resources :experiences
      cv.resources :contact_infos
      cv.resources :interests
      cv.resources :other_skills
    end
  end  
 
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
  map.resources :schools
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
   map.root :controller => "civil_statuses"

  # See how all your routes lay out with "rake routes"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end