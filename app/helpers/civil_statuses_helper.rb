module CivilStatusesHelper

  def remove_child_link(name, form_builder)
    form_builder.hidden_field(:_destroy) + link_to_function(name, "remove_child(this)")
  end

  def add_child_link(name, child, form_builder)
    fields = escape_javascript(new_child_fields(child, form_builder))
    link_to_function(name, h("add_child(this, \"#{child}\", \"#{fields}\")"))
  end

  def new_child_fields(child, form_builder)
    form_builder.fields_for(child.pluralize.to_sym, child.camelize.constantize.new, :child_index => 'NEW_RECORD') do |f|
      render(:partial => child.underscore, :locals => { :f => f })
    end
  end
#to calculate age automaticly from "birthday"
  def check_age
    birth = @civil_status.birthday.year 
    t = Time.now
    a = t.to_a
    @civil_status.age = a[5] - birth
    age = @civil_status.age.to_s
    age += " ans"
  end
  
end
