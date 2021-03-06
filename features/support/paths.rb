module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    when /the new cv page/
      new_cv_path

    when /the new user page/
      new_user_path

    when /the new essai page/
      new_essai_path

    when /the new civil_status page/
      new_civil_status_path

    when /the new civil_status page/
      new_civil_status_path

    when /the new cv page/
      new_cv_path

    when /the new presentation page/
      new_presentation_path

    when /the new compagny page/
      new_compagny_path
     when /path "(.+)"/  
      $1  


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
