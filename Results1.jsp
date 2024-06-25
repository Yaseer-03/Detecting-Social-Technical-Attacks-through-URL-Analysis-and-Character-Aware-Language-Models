
<%@ include file="connect.jsp"%>

<%
try
{

ResultSet rs=connection.createStatement().executeQuery("SELECT count(datatype),datatype FROM  datasets group by datatype");

%><html>
<head>
<title>Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #000000;
}
-->
</style></head>
<body>
<div id="graph">Loading graph...</div>

<div align="center">
    <script type="text/javascript">
var myData=new Array();
var colors=[];
var m=50;
<%
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString(2);
	int  s2=Integer.parseInt(rs.getString(1));
	
	
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%=s2%>];
      m=m+150;  
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(m, 400);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#FFFFFF');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
  </script>
   </div>
</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

