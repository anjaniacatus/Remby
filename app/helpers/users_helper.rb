module UsersHelper
 def if_authorized?(action, resource, &block)
    if authorized?(action, resource)
      yield action, resource
    end
  end

end
