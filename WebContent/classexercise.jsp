<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>classexercise</title>
</head>
<body>
<%
String anyErrors = request.getParameter("Error");
String name = request.getParameter("AnotherParam");
if(anyErrors!=null && anyErrors.equals("1")){
	out.println("Hello:"+name+", PLEASE PROVIDE A ROW VALUE >=1 <br>");
}
else if(anyErrors!=null && anyErrors.equals("2")){
	out.println("Hello:"+name+",PLEASE PROVIDE A COLUMN VALUE >=1 <br>");
}
else if(anyErrors!=null && anyErrors.equals("3")){
	out.println("Hello:"+name+",PLEASE PROVIDE A ROW AND COLUMN VALUE >=1 <br>");
}
%>
<p> Plese enter the dimensions of the desired table below:</p>
<form action="createtable.jsp">
<table style="text-align: left; width: 660px; height: 133px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top;"><input name="name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input name="rows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input name="columns" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="Submit"
value="Submit" type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="Reset"
value="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
<p><br>
</p>
</form>
<br>
<br>
</body>
</html>