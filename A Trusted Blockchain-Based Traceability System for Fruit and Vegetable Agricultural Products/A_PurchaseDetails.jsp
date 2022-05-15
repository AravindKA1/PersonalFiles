<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Product Purchase Details..</title> 
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
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style54 {color: #009900}
.style56 {color: #FF0000}
.style57 {font-size: 15px}
.style59 {
	font-size: 28px;
	color: #009900;
}
.style60 {font-size: 13px}
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
    
        <h2><span class="style31 style46 style30  style35">Product <span class="style54"><%=request.getParameter("title")%></span>'s Purchase Details.. </span></h2>
                   
                  
        <table width="684" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="42"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">ID</div></td>
            <td  width="138" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Category</div></td>
            <td  width="121" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Purchased By </div></td>
            <td  width="142" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Price </div></td>
            <td  width="98" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Date</div></td>
          </tr>
          <%@ include file="connect.jsp" %>
          <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
							String title=request.getParameter("title");
							String category=request.getParameter("category");
						   	String query="select * from purchase where title='"+title+"' and category='"+category+"'";
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
				
								s1=rs.getString(5);
								s2=rs.getString(3);
								s3=rs.getString(7);
								s4=rs.getString(6);
								
								
					%>
          <tr>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style22">
                <%out.println(j);%>
            </span></div></td>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
                <%out.println(s1);%>
            </span></div></td>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
                <%out.println(s2);%>
            </span></div></td>
            <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
              <%out.println(s3);%>
            </span><span class="style60">Rs/-</span></div></td>
            <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
                <%out.println(s4);%>
            </span></div></td>
          </tr>
          <%
					j+=1;	}
						
					
				
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
		  <div align="right"><a href="A_PurchasedProducts.jsp" class="style11"><a href="AdminMain.jsp" class="style11">Back</a></div>
		</div>
  </div>
    <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
            <ul class="tooplate_list">
              <li>
              <p><a href="#">Home</a></p>
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