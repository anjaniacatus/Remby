module AdministrationHelper
  def nested_fields_for(attr, form)
  if attr.to_s.pluralize.singularize == attr.to_s # testing if attr is singular (has_one or has_many)
    render :partial => "shared/has_one_nested_fields", :locals => {
      :form => form,
      :fields_for => attr
    }
    else
      render :partial => "shared/has_many_nested_fields", :locals => {
        :form => form,
        :fields_for => attr
      }
    end
end

def contact_infos_fields(form)
    concat nested_fields_for(:phone_numbers, form)
    concat nested_fields_for(:emails, form)
    concat nested_fields_for(:urls, form)
    concat nested_fields_for(:postal_box, form)
    concat nested_fields_for(:street_address, form)
end
def qualification_fields(form)
   # concat nested_fields_for(:education_infos, form)
    #concat nested_fields_for(:experiences, form)
    #concat nested_fields_for(:languages, form)
    #concat nested_fields_for(:skills, form)
end

end
