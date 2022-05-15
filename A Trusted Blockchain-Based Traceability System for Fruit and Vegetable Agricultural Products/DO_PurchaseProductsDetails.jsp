<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Purchase Details..</title> 
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
.style62 {font-size: 13px}
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
            <h1 align="center" class="style2 style37 style59">&nbsp;</h1>
            <h1 align="center" class="style2 style37 style59">&nbsp;</h1>
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
                <li class="current"><a href="DO_Login.jsp" class="current">Data Owner</a></li>
				<li><a href="AdminLogin.jsp" class="style35">Admin</a></li>
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
    
        <h2><span class="style31 style46 style30  style35"> Product <span class="style54"><%=request.getParameter("title")%></span>'s Purchase Details..</span></h2>
                   
                  
        <table width="644" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
          <tr>
            <td  width="49"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Si No. </div></td>
            <td  width="195" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Purchased User</div></td>
            <td  width="195" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Price</div></td>
            <td  width="195" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57">Date</div></td>
          </tr>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
          <%
					  
						String s1="",s2,s3,s4,s5,s6,s7;
						int i=1;
						try 
						{
	
							String title=request.getParameter("title");
						   	String query="select user,price,date from purchase where title='"+title+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								
								
								String user=rs.getString(1);
								String price=rs.getString(2);
								String date=rs.getString(3);																						
							
					%>
          <tr>
            <td height="57" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style22">
                <%out.println(i);%>
            </span></div></td>
            <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <a href="DO_PurchaseUserProfile1.jsp?username=<%=user%>&title=<%=title%>"><span class="style22">
              <%out.println(user);%>
            </span></a></div></td>
            <td align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
              <%out.println(price);%>
            </span><span class="style62">Rs/-</span></div></td>
            <td height="57" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22"> <span class="style22">
                <%out.println(date);%>
            </span></div></td>
          </tr>
          <%
					i+=1;	}
				
				
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
		  <div align="right"><a href="DO_PurchaseProducts.jsp" class="style11">Back</a></div>
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