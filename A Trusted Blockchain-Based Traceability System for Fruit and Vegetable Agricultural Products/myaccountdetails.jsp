<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>User Account Details..</title> 
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
.style1 {font-size: 25px}
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style32 {color: #FF00FF}
.style22 {font-size: 14px}
.style9 {color: #FF0000; font-weight: bold; }
.style11 {
	color: #FF00FF;
	font-weight: bold;
	font-size: 13px;
}
.style41 {
	font-size: 28px;
	color: #009900;
}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style43 {font-family: "Courier New", Courier, monospace}
.style45 {font-size: 15px}
.style46 {color: #3366FF;
	font-weight: bold;
}
.style47 {color: #3399FF}
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
            <h1 align="center" class="style2 style37 style41">&nbsp;</h1>
            <h1 align="center" class="style2 style37 style41">&nbsp;</h1>
          </div></td>
        </tr>
      </table>        
        </div> <!-- end of site_title -->
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu">
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="index.html" class="style22">Home</a></li>
                <li><a href="UserLogin.jsp" class="current">User</a></li>
                <li><a href="DO_Login.jsp">Data Owner</a></li>
				<li><a href="AdminLogin.jsp">Admin</a></li>
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
    
        <h2><span class="style12"><span class="style1"><span class="style32">User</span> <span class="style23"><%=(String)application.getAttribute("uname")%><span class="style32">'s</span></span> <span class="style32">Account Details </span></span><span class="style32">..</span></span></h2>
                   
                  
        <table width="405" border="2" align="center"  cellpadding="0" cellspacing="0"  >
          <%@ include file="connect.jsp" %>
          <%@ page import="org.bouncycastle.util.encoders.Base64"%>
          <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getInt(7);
								
								
					%>
          <tr>
            <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style15 style9 style41 style45" style="margin-left:20px;"><strong>Account Number </strong></div></td>
            <td  width="221" valign="middle" height="40" style="color:#000000;"><div align="left" class="style10 style42 style43 style47 style45" style="margin-left:20px;">
                <%out.println(i);%>
            </div></td>
          </tr>
          <tr>
            <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style15 style9 style41 style45" style="margin-left:20px;"><strong>User Name </strong></div></td>
            <td  width="221" valign="middle" height="40"><div align="left" class="style10 style42 style43 style47 style45" style="margin-left:20px;">
                <%out.println(s1);%>
            </div></td>
          </tr>
          <tr>
            <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style15 style9 style41 style45" style="margin-left:20px;"><strong>Address</strong></div></td>
            <td  width="221" align="left" valign="middle" height="40"><div align="left" class="style10 style42 style43 style47 style45" style="margin-left:20px;">
                <%out.println(s2);%>
            </div></td>
          </tr>
          <tr>
            <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style15 style9 style41 style45" style="margin-left:20px;"><strong>Email</strong></div></td>
            <td  width="221" align="left" valign="middle" height="40"><div align="left" class="style10 style42 style43 style47 style45" style="margin-left:20px;">
                <%out.println(s3);%>
            </div></td>
          </tr>
          <tr>
            <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style15 style9 style41 style45" style="margin-left:20px;"><strong>Mobile</strong></div></td>
            <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 style42 style43 style47 style45" style="margin-left:20px;">
                <%out.println(s4);%>
            </div></td>
          </tr>
          <tr>
            <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style15 style9 style41 style45" style="margin-left:20px;"><strong>Branch</strong></div></td>
            <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 style42 style43 style47 style45" style="margin-left:20px;">
                <%out.println(s5);%>
            </div></td>
          </tr>
          <tr>
            <td   width="176" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style15 style9 style41 style45" style="margin-left:20px;"><strong>Amount</strong></div></td>
            <td  width="221" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                <div align="left" class="style10 style42 style43 style47 style45" style="margin-left:20px;">
                  <%out.println(s6);%>
            Rs/- </div></td>
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
        <p align="right"><a href="useraccount.jsp" class="style10">Back</a><a href="UserMain.jsp" class="style46"></a><a href="UserMain.jsp" class="style11"></a></p>
  </div>
    <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
            <ul class="tooplate_list">
			<li>
			  <p><a href="myaccountdetails.jsp">Home</a></p>
			</li>
            <li>
              <p><a href="index.html">Log Out</a></p>
            </li>
          </ul>
            <blockquote>
              <p>&nbsp;</p>
            
          </blockquote>
            
        
        
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