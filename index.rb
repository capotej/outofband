<% if $_POST %>	
<% $MSGS << $_POST["msg"] %>
*redirect::http://localhost:9292||
<% else %>
<html>
<head>
<title>outofband</title>
</head>
<body>
<iframe src="/msg.rb" width="500" height="500"></iframe>
<br/>
<form action="http://localhost:9292" name="formy" method="post">
       Msg:<input type="text" name="msg">
       <input type="submit" value="send">
</form>
</body>
</html>
<% end %>
