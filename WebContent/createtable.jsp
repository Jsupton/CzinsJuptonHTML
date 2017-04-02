<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>createtable</title>
</head>
<body style="color: white; background-color: black;" alink="#000099"
link="#000099" vlink="#990099">
<%
String val = request.getParameter("name");
int row = Integer.parseInt(request.getParameter("rows"));
int col = Integer.parseInt(request.getParameter("columns"));
if(row<=0 && col<=0){
	response.sendRedirect("classexercise.jsp?Error=3&AnotherParam="+val);
}
else if(row <= 0){
	response.sendRedirect("classexercise.jsp?Error=1&AnotherParam="+val);
}
else if(col <= 0){
	response.sendRedirect("classexercise.jsp?Error=2&AnotherParam="+val);
}
String name = "Hello "+ val +" Here is your table.<br>";
out.print(name);
%>
<form>
<table style="text-align: left; width: 100%;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<%
String y = "";
for(int i = 1;i<= row;i++){
	y = y +"<tr>\n";
	for(int x = 1;x<=col;x++){
		y= y+ "<td >"+i+","+x+"</td>";
	}
	y = y+ "</tr>\n";
}
out.print(y);
%>
</tbody>
</table>
<br>
</form>
</body>
</html>