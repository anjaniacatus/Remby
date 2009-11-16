module AdministrationHelper
  def nested_fields_for(attr, form)
    render :partial => "shared/nested_fields", :locals => {
      :form => form,
      :fields_for => attr
    }
  end
end
