<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product Owner Profile..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style3 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style7 {color: #FF0000; font-size: 14px; }
.style1 {font-size: 25px}
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style32 {color: #FF00FF}
.style22 {font-size: 14px}
.style26 {color: #3366FF}
.style40 {color: #FFFFFF}
.style9 {color: #FF0000; font-weight: bold; }
.style11 {
	color: #FF00FF;
	font-weight: bold;
	font-size: 13px;
}
.style33 {color: #000000}
.style41 {
	font-size: 28px;
	color: #009900;
}
-->
</style>
</head>
<body> 

<div id="tooplate_header_wrapper">

    <div id="tooplate_header">
    
        <div id="site_title">
        
<table width="951" border="0" cellspacing="2" cellpadding="2">
        <tr>
          <td width="943"><div class="style1" id="div">
            <h1 align="left" class="style2 style37 style41"><br />
              A Trusted Blockchain-Based Traceability System for Fruit and Vegetable Agricultural Products</h1>
            </div></td>
        </tr>
      </table>        
        </div> <!-- end of site_title -->
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu">
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="index.html" class="style22">Home</a></li>
                <li><a href="UserLogin.jsp">User</a></li>
                <li><a href="DO_Login.jsp">Data Owner</a></li>
				<li><a href="AdminLogin.jsp" class="current">Admin</a></li>
                <li></li>
                <li></li>
            </ul>    	
        
        </div> <!-- end of tooplate_menu -->
        
    </div>	  
</div> <!-- end of header_wrapper -->

<div id="tooplate_middle_wrapper1">
	<div id="tooplate_middle_wrapper2">
		<div id="tooplate_middle">

		  <h1>&nbsp;</h1>
			
	  </div>
	</div>
</div>

<div id="tooplate_main">
    
    <div id="tooplate_content">
    
        <h2><span class="style12"><span class="style1"><span class="style32">Product Owner </span> <span class="style23"><%=request.getParameter("ownername")%><span class="style32">'s</span></span> <span class="style32">Profile</span></span><span class="style32">..</span></span></h2>
                   
                  
        <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
          <%@ include file="connect.jsp" %>
          <%@ page import="org.bouncycastle.util.encoders.Base64"%>
          <%
						
						String owner=request.getParameter("ownername");
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from data_owner where ownername='"+owner+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(9);
								
								
								
								
								
								
					%>
          <tr>
            <td width="226" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="owner_Pic.jsp?id=<%=i%>" style="width:200px; height:200px;" />
            </a></strong></div></td>
          </tr>
          <tr>
            <td  width="122" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
            <td  width="163" valign="middle" height="40" style="color:#000000;"><div align="left" class="style9 style10 style22 style40" style="margin-left:20px;">
                <%out.println(s1);%>
            </div></td>
          </tr>
          <tr>
            <td  width="122" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Mobile</strong></div></td>
            <td  width="163" valign="middle" height="40"><div align="left" class="style9 style10 style22 style40" style="margin-left:20px;">
                <%out.println(s2);%>
            </div></td>
          </tr>
          <tr>
            <td  width="122" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Address</strong></div></td>
            <td  width="163" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style22 style40" style="margin-left:20px;">
                <%out.println(s3);%>
            </div></td>
          </tr>
          <tr>
            <td  width="122" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
            <td  width="163" align="left" valign="middle" height="40"><div align="left" class="style9 style10 style22 style40" style="margin-left:20px;">
                <%out.println(s5);%>
            </div></td>
          </tr>
          <tr>
            <td   width="122" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Status</strong></div                        ></td>
            <td  width="163" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                <div align="left" class="style9 style10 style22 style40" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div></td>
          </tr>
          <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
		<p>&nbsp;</p>
		<p align="right"><a href="A_ProductsWithRank.jsp" class="style11">Back</a></p>
		<div class="cleaner_h30 horizon_divider"></div>
  </div>
  <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
          <ul class="tooplate_list">
			<li>
			  <p><a href="#">Home</a></p>
			</li>
            <li>
              <p><a href="index.html">Log Ou</a></p>
            </li>
          </ul>
  </div>
        
		<div class="cleaner"></div>
</div>

    <div class="cleaner"></div>  

<div id="tooplate_footer_wrapper">

    <div id="tooplate_footer"></div> 
     <!-- end of tooplate_footer -->

</div> 
    
</body>
</html>