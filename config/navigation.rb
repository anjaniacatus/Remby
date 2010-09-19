# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|  
  # Specify a custom renderer if needed. 
  # The default renderer is SimpleNavigation::Renderer::List which renders HTML lists.
  # The renderer can also be specified as option in the render_navigation call. 
  # navigation.renderer = Your::Custom::Renderer
  
  # Specify the class that will be applied to active navigation items. Defaults to 'selected'
   navigation.selected_class = 'navigation'
    
  # Item keys are normally added to list items as id.
  # This setting turns that off
  # navigation.autogenerate_item_ids = false
  
  # You can override the default logic that is used to autogenerate the item ids.
  # To do this, define a Proc which takes the key of the current item as argument.
  # The example below would add a prefix to each key.
  # navigation.id_generator = Proc.new {|key| "my-prefix-#{key}"}

  # The auto highlight feature is turned on by default.
  # This turns it off globally (for the whole plugin)
  # navigation.auto_highlight = false

  # Define the primary navigation
  navigation.items do |primary|
    # Add an item to the primary navigation. The following params apply:
    # key - a symbol which uniquely defines your navigation item in the scope of the primary_navigation
    # name - will be displayed in the rendered navigation. This can also be a call to your I18n-framework.
    # url - the address that the generated item links to. You can also use url_helpers (named routes, restful routes helper, url_for etc.)
    # options - can be used to specify attributes that will be included in the rendered navigation item (e.g. id, class etc.)
    #           some special options that can be set:
    #           :if - Specifies a proc to call to determine if the item should
    #                 be rendered (e.g. <tt>:if => Proc.new { current_user.admin? }</tt>). The
    #                 proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :unless - Specifies a proc to call to determine if the item should not
    #                     be rendered (e.g. <tt>:unless => Proc.new { current_user.admin? }</tt>). The
    #                     proc should evaluate to a true or false value and is evaluated in the context of the view.
    #           :method - Specifies the http-method for the generated link - default is :get.
    #           :highlights_on - if autohighlighting is turned off and/or you want to explicitly specify 
    #                            when the item should be highlighted, you can set a regexp which is matched 
    #                            against the current URI.
    #
    primary.item :home, "Accueil", root_path, :id => 'acceuil' do |home|
    end


    primary.item :jobs, "offres récentes", jobs_path, :id => 'link_offre' do |offre|
      if current_user && current_user.roles ==  "compagny" && !current_user.compagny.blank?
        offre.item :new_jobs, 'Créer un offre', new_compagny_job_path(current_user.compagny)  
        offre.item :edition, 'Candidature', job_applications_path(@job) 
      end
    end
    
    primary.item :cv, 'CV', cvs_path, :id => 'link_cv' do |cv|
     if current_user && current_user.roles == "member" && !current_user.civil_status.blank?
       cv.item :cv_disponible, 'Mes CV', cvs_path
       cv.item :new_cv, 'Créer un CV', new_civil_status_cv_path(current_user.civil_status)
     end
     if current_user && current_user.roles == "compagny" && !current_user.compagny.blank?
       cv.item :search_cv, 'rechercher un cv', cvs_path
       cv.item :recent_cv, 'cv  récent',cvs_path
     end
   end
    
    if current_user && current_user.roles == "member" && !current_user.civil_status.blank?
      primary.item:profile, "Mon profile", civil_statuses_path do |pro| 
        pro.item :edition, 'Modifier mon profil', edit_civil_status_path(current_user.civil_status)
      end
    end
    if current_user && current_user.roles == "member" && current_user.civil_status.blank?
       primary.item:profile, "Mon profile", civil_statuses_path do |pro| 
        pro.item :edition, 'Editer mon profil', new_civil_status_path
      end
    end

    if current_user && current_user.roles == "compagny" && !current_user.compagny.blank?
      primary.item:profile, "Mon profile", compagny_path(current_user.compagny) do |pro|   
        pro.item :edition, 'Modifier mon profil', edit_compagny_path(current_user.compagny)
    end
  end
    
    if current_user
      primary.item :edition_compte,"editer mon compte",edit_user_path(current_user), :id => 'connected'  do |account|
       account.item:deconnexion, "logout", logout_path
      end
    else
      primary.item :connexion, "Connexion",  root_path, :id => 'connected' do |connexion|
        connexion.item:inscription, "s'inscrire'", new_user_path
        connexion.item:log, "login", login_path

      end
    end

    # Add an item which has a sub navigation (same params, but with block)
    #primary.item :key_2, 'name', url, options do |sub_nav|
      # Add an item to the sub navigation (same params again)
      #sub_nav.item :key_2_1, 'name', url, options
    #end 
  
    # You can also specify a condition-proc that needs to be fullfilled to display an item.
    # Conditions are part of the options. They are evaluated in the context of the views,
    # thus you can use all the methods and vars you have available in the views.
    #primary.item :key_3, 'Admin', url, :class => 'special', :if => Proc.new { current_user.admin? }
    #primary.item :key_4, 'Account', url, :unless => Proc.new { logged_in? }

    # you can also specify a css id or class to attach to this particular level
    # works for all levels of the menu
    # primary.dom_id = 'menu-id'
    # primary.dom_class = 'menu-class'
    
    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false
  
  end
end