!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
  <title> remby: <%= title %></title>
  <%= stylesheet_link_tag 'scaffold' %>
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