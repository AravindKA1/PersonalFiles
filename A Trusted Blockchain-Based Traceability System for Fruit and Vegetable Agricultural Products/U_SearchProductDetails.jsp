<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Searched Product  Details..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style7 {color: #FF0000; font-size: 14px; }
.style1 {font-size: 25px}
.style12 {color: #0000FF}
.style23 {color: #42ac1f}
.style32 {color: #FF00FF}
.style22 {font-size: 14px}
.style11 {
	color: #FF00FF;
	font-weight: bold;
	font-size: 13px;
}
.style41 {
	font-size: 28px;
	color: #009900;
}
.style56 {color: #FF0000}
.style57 {
	color: #FF0000;
	font-weight: bold;
	font-size: 14px;
}
.style58 {color: #3399FF}
.style61 {color: #3399FF; font-size: 14px; }
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
    
      <h2><span class="style12"><span class="style1"><span class="style32">Searched Product </span><span class="style23"><%= request.getParameter("title")%></span><span class="style32">'s Details</span></span><span class="style32">..</span></span></h2>
	  
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
try 
	{   
        String title= request.getParameter("title");
		String category= request.getParameter("category");

			int i=0;
		  
		String str="select * from owner_products where title='"+title+"'"; 
		Statement st=connection.createStatement();
		ResultSet rs=st.executeQuery(str);
		   
		if ( rs.next() )
		{	
			
					i=rs.getInt(1);
					String owner= rs.getString(4);
					int rank1 = rs.getInt(14);
					String des= rs.getString(11);
				
					//Description Encryption 
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue,"AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.ENCRYPT_MODE,key);
					String keyy = String.valueOf(keyValue);

									String decrypted_des = new String(Base64.decode(des.getBytes()));

													String query12="select * from owner_products where id='"+i+"'"; 
													Statement st12=connection.createStatement();
													ResultSet rs12=st12.executeQuery(query12);
													if ( rs12.next()==true)
													{
														String company12 = rs12.getString("company");
														String price12= rs12.getString("price");
														String model12= rs12.getString("model");
														String p_code12= rs12.getString("product_code");
														String d_code12= rs12.getString("dealer_code");
														String date12= rs12.getString("date");

			
			
									String decrypted_price12 = new String(Base64.decode(price12.getBytes()));
									String decrypted_company12= new String(Base64.decode(company12.getBytes()));
									String decrypted_model12 = new String(Base64.decode(model12.getBytes()));
									String decrypted_product_code12= new String(Base64.decode(p_code12.getBytes()));
									String decrypted_dealer_code12= new String(Base64.decode(d_code12.getBytes()));
									String decrypted_date12= new String(Base64.decode(date12.getBytes()));
									
								int newrank=rank1+1;

								Statement st33 = connection.createStatement();
								String query33 ="update owner_products set rank='"+newrank+"' where title='"+title+"'";
								st33.executeUpdate (query33);
								
								Statement st34= connection.createStatement();
								String query34 ="update owner_products set rank='"+newrank+"' where title='"+title+"'";
								st34.executeUpdate (query34);


			
			%>
<table width="596" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr >
    <td rowspan="4" colspan="2'><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" ><div align="left"><a class="#" id="img1" href="#" >
      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:310px; height:180px;" />
    </a> </div></td>
    <td height="52" ><div align="center" class="style56 style14 style22"><strong>Category</strong></div></td>
    <td><div align="center" class="style7 style58"><%= category%></div></td>
  </tr>
  <tr >
    <td width="129" height="41"><div align="center" class="style56 style14 style22"><strong>Company</strong></div></td>
    <td width="111"><div align="center" class="style61"><%= decrypted_company12%></div></td>
  </tr>
  <tr>
    <td height="33"><div align="center" class="style57"><span class="style14">Quantity </span> </div></td>
    <td><div align="center" class="style61"><%= decrypted_model12%></div></td>
  </tr>
  <tr>
    <td height="47"><div align="center" class="style56 style14 style22"><strong>Price</strong></div></td>
    <td height="47"><div align="center" class="style61"><%= decrypted_price12%> Rs/-</div></td>
  </tr>
  
  <tr>
    <td width="180" height="54"><div align="center" class="style22 style14 style34 style17 style56"><strong>Product Code </strong></div></td>
    <td width="144"><div align="center" class="style61"><%= decrypted_product_code12%></div></td>
    <td height="54"><div align="center" class="style56 style14 style22"><strong>Date</strong></div></td>
    <td height="54"><div align="center" class="style61"><%= decrypted_date12%></div></td>
  </tr>
  <tr>
    <td height="43"><div align="center" class="style22 style14 style34 style17 style56"><strong>Dealer's Code </strong></div></td>
    <td><div align="center" class="style61"><%= decrypted_dealer_code12%></div></td>
    <td><div align="center" class="style22 style14 style56"><strong>Rank</strong></div></td>
    <td><div align="center" class="style61"><%=rank1%></div></td>
  </tr>
  <tr>
    <td height="61"><div align="center" class="style22 style14 style34 style17 style56"><strong>Descritpion</strong></div></td>
    <td colspan="3"><div align="center" class="style7">
        <textarea name="textarea" cols="55" rows="10"><%= decrypted_des%></textarea>
    </div></td>
  </tr>
  <tr>
    <td height="61" colspan="4">
	<form id="form1" name="form1" method="post" action="purchase1.jsp">
      <div align="center">
        <input type="hidden" value="<%=i%>" name="id"/>
        <input type="hidden" value="<%=title%>" name="title"/>
        <input type="hidden" value="<%=category%>" name="category"/>
        <input type="submit" name="Submit" value="Purchase" />
        </label>
      </div>
    </form></td>
    </tr>
  
  <%	}
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
		<p align="right">&nbsp;</p>
		<div class="cleaner_h30 horizon_divider">
		  <div align="right"><a href="SearchProducts.jsp" class="style11">Back</a></div>
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
            <h2>&nbsp;</h2>
            
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