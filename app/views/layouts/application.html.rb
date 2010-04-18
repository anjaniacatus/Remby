!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
  <title> remby: <%= title %></title>
  <%- if Rails.env.production? -%>
      <%= stylesheet_link_tag 'screen', :media => "screen" -%>
      <%= stylesheet_link_tag 'jquerycssmenu', :media => "screen" -%>
      <%= stylesheet_link_tag 'autocomplete', :media => "screen" -%>
    <%- else -%>
      <link href="/stylesheets/screen.css" media="screen" rel="stylesheet" type="text/css" />
      <link href="/stylesheets/jquerycssmenu.css" media="screen" rel="stylesheet" type="text/css" />
      <link href="/stylesheets/autocomplete.css" media="screen" rel="stylesheet" type="text/css" />
   <%- end -%>
  
  <%= javascript_include_tag 'jquery' %>
  <%= javascript_include_tag 'jquerycssmenu' %>
  <%= javascript_include_tag "swapselect" %>
  <%= javascript_include_tag "jquery.autocomplete.js" %>
  <%= javascript_include_tag "jquery.select-autocomplete.js" %>
  <%= yield :javascript %>
  <%= render :partial => 'shared/javascript' %>
  <%= yield(:head) %> 
  <% javascript_tag do %>
    <%= yield(:jstemplates) %>
  <% end -%>
</head>
<body>
  <div id = "page wrapper">
  <ul id= "nav">
  </ul>
  <div id= "main_content" >
    <%= yield %>
  </div>
  <h1><%= title %> </h1>
 </div>
  <p style="color: green"> <%= flash[:notice] %> </p>
</body>
</html>