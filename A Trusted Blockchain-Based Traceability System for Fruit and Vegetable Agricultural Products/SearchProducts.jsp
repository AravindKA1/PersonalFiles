<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Searching Products..</title> 
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
.style44 {font-family: "Times New Roman", Times, serif;
	color: #FF00FF;
	font-weight: bold;
	font-size: 14px;
}
.style78 {
	color: #FF0000;
	font-weight: bold;
}
.style82 {
	color: #009900;
	font-size: 15px;
}
.style85 {color: #FF0000}
.style89 {font-weight: bold}
.style90 {font-size: 13px}
.style91 {color: #FF0000; font-weight: bold; font-size: 13px; }
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
    
        <h2><span class="style12"><span class="style1"><span class="style32">Search Products by content keyword.. </span></span></span></h2>
                   
                  
        <form action="SearchProducts.jsp" method="post" id="leavereply">
          <p>&nbsp;</p>
          <table align="center" style="margin:0 0 0 30px;">
            <tr>
              <td width="160"><div align="center" class="style3">
                  <div align="right" class="style12">
                    <div align="center" class="style82">Enter  Keyword</div>
                  </div>
              </div></td>
              <td width="166"><div align="left">
                  <input type="text" name="keyword" />
              </div></td>
              <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
            </tr>
            <tr>
              <td colspan="3"><div class="style2">
                  <div align="center" class="style13 style78"> ( searching content Based on Products Description)</div>
              </div></td>
            </tr>
          </table>
          <p class="style44">&nbsp;</p>
        </form>
        <p align="right"><a href="UserMain.jsp" class="style11">Back</a></p>
		<div class="cleaner_h30 horizon_divider"></div>
        <div class="cleaner_h30"></div>
        
        <div class="post_content">
          <p>
		   <%@ include file="connect.jsp" %>
              <%@ page import="java.io.*"%>
              <%@ page import="java.util.*" %>
              <%@ page import="java.util.Date" %>
              <%@ page import="com.oreilly.servlet.*"%>
              <%@ page import ="java.text.SimpleDateFormat" %>
              <%@ page import ="javax.crypto.Cipher" %>
              <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
              <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
              <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
            <%
							try
							{
								String input="",l_Input="",p_Name="",p_Desc="",p_Desc1="";
					
								String p_Price="",p_Categorie="";
										
								String uname = (String)application.getAttribute("uname");
								
								
								input= request.getParameter("keyword");
								if(!input.equals(""))	
								{
										
										l_Input = input.toLowerCase();
										
										
										 
										
										String str = "select * from owner_products";
										Statement st=connection.createStatement();
										ResultSet rs = st.executeQuery(str);
										
										while(rs.next())
										{
											p_Name = rs.getString(2);
											p_Categorie = rs.getString(3);
											p_Desc = rs.getString(11);  
		
																String keys = "ef50a0ef2c3e3a5f";
																byte[] keyValue = keys.getBytes();
																Key key = new SecretKeySpec(keyValue,"AES");
																Cipher c = Cipher.getInstance("AES");
																c.init(Cipher.ENCRYPT_MODE,key);
																String keyy = String.valueOf(keyValue);
		
									String decryptedDesc1 = new String(Base64.decode(p_Desc.getBytes()));
								
									p_Desc1 = decryptedDesc1.toLowerCase(); 
									 
										if (p_Desc1.contains(l_Input) || l_Input.contains(p_Name ) )
										{
											
													
													
												
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									
									Date now = new Date();
									String strDate = sdfDate.format(now);
									
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
											   
									String str2 = "insert into postsearch (user,title,category,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+input+"','"+dt+"')";
									connection.createStatement().executeUpdate(str2);
						%>
  </p>
          <div align="center" class="style15">
            <div align="center"><span class="style81"><span class="style91">Product Name :</span> </span><span class="style18 style32 style22"><strong> <%=p_Name%></strong></span></div>
          </div>
          <div align="center" class="style78">
            </p>
          </div>
          <p align="center" class="style78"></p>
          <div align="center" class="style15 style85 style89">
            <div align="center"><span class="style17 style90">Category :</span> <span class="style18 style32 style22"> <%=p_Categorie%></span></div>
          </div>
          <div align="center" class="style78">
            </p>
          </div>
          <p align="center" class="style78"></p>
          <div align="center" class="style5 style14">
            <div align="center"><span class="style85 style15"><strong><a href="U_SearchProductDetails.jsp?title=<%=p_Name%>&amp;category=<%=p_Categorie%>" class="style56 style30">View Details</a></strong></span></div>
          </div>
          <div align="center">
            </p>
          </div>
          <p></p>
          <div>
            <div align="center">--------------------------------------------------------</div>
          </div>
          <%
						}
						  	}
						 }
				
					}
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
						  
				%>
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