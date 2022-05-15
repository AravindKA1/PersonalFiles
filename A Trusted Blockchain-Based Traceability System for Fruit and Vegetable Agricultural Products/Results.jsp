
<%@ include file="connect.jsp"%>


<%
try
{

ResultSet rs1=connection.createStatement().executeQuery("select title,rank from owner_products where rank>0");

%><html>
<head>
<title>Transaction Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null;
	
	while(rs1.next())
	{
	String title=rs1.getString(1);
	int rank=rs1.getInt(2);;

				
	
	%>
	
	myData["<%=i%>"]=["<%= title%>",<%= rank%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(750, 300);
	myChart.setBarBorderColor('#D9EDF7');
	
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

