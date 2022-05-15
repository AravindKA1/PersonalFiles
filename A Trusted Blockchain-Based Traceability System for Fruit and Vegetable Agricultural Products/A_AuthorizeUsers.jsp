<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Authorize Users..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style35 {color: #FF00FF}
.style22 {font-size: 14px}
.style32 {color: #FF00FF;
	font-size: 14px;
	font-weight: bold;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style54 {color: #009900}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style58 {	color: #6699FF;
	font-size: 14px;
}
.style59 {
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
            <h1 align="left" class="style2 style37 style59"><br />
              A Trusted Blockchain-Based Traceability System for Fruit and Vegetable Agricultural Products</h1>
            </div></td>
        </tr>
      </table>        
        </div> <!-- end of site_title -->
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu">
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="index.html">Home</a></li>
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
    
        <h2><span class="style31 style46 style30  style35">View and Authorize Users..</span></h2>
                   
                  
        <table width="592" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="37"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">ID</div></td>
            <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Image</div></td>
            <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">User Name</div></td>
            <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Email</div></td>
            <td  width="100" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Address</div></td>
            <td  width="81"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Status</div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s4=rs.getString(9);
								
								
								
								
								
							
						
					%>
          <tr>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style22">
                <%out.println(i);%>
            </span></div></td>
            <td width="116" rowspan="1" align="center" valign="middle" ><div class="style5 style37 style54 style55 style22" style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="user_Pic.jsp?id=<%=i%>" style="width:90px; height:90px;" />
            </a> </div></td>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
                <%out.println(s1);%>
            </span></div></td>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
                <%out.println(s2);%>
            </span></div></td>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
                <%out.println(s3);%>
            </span></div></td>
            <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
            <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                <div align="center" class="style20 style37 style46"><a href="A_UserStatus.jsp?id=<%=i%>" class="style32 style30">waiting</a></div>
            </div></td>
            <%
						}
						else
						{
						%>
            <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style55 style58">
                <%out.println(s4);%>
            </div></td>
            <%
						}
						
						%>
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
		<div class="cleaner_h30 horizon_divider">
		  <div align="right"><a href="AdminMain.jsp" class="style11"><a href="AdminMain.jsp" class="style11">Back</a></div>
		</div>
  </div>
  <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
          <ul class="tooplate_list"><li>
            <p><a href="A_AuthorizeUsers.jsp">Home</a></p>
            </li>
            <li>
              <p><a href="index.html">Log Out</a></p>
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