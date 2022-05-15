<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Verify Owner Products..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 25px}
.style12 {color: #0000FF}
.style32 {color: #FF00FF}
.style22 {font-size: 14px}
.style41 {
	font-size: 28px;
	color: #009900;
}
.style55 {font-size: 16px; color: #FFFFFF; }
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style55 {color: #FF0000}
.style62 {
	color: #FF00FF;
	font-weight: bold;
	font-size: 12px;
}
.style63 {font-weight: bold}
.style65 {font-size: 12px}
.style66 {color: #FF00FF; font-size: 12px; }
.style67 {font-size: 15px}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style37 {	color: #FF0000;
	font-weight: bold;
}
.style36 {color: #42ac1f}
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
                <li><a href="UserLogin.jsp">User</a></li>
                <li><a href="DO_Login.jsp" class="current">Data Owner</a></li>
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
  <h2><span class="style12"><span class="style1"><span class="style32"> Verification Status of Product <span class="style36"><%=request.getParameter("title")%></span></span></span><span class="style32">..</span></span></h2>
  <div>
    <%@ include file="connect.jsp" %>
    <%@ page import="java.util.*"%>
    <%@ page import="java.text.*"%>
    <%@ page import="java.util.Date"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
    <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
    <%@ page import="org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
    <span class="style37">
    <%

  try{      
        
			String title = request.getParameter("title");
			String category = request.getParameter("category");
				
							String owner=(String)application.getAttribute("dname");
							
							
							
								String keys = "ef50a0ef2c3e3a5f";
								byte[] keyValue = keys.getBytes();
								Key key = new SecretKeySpec(keyValue,"AES");
								Cipher c = Cipher.getInstance("AES");
								c.init(Cipher.ENCRYPT_MODE,key);
								String keyy = String.valueOf(keyValue);
								
								String encrypted_Owner = new String(Base64.encode(owner.getBytes()));
							
							
								String hash="",hash1="",des="";
								Statement st=connection.createStatement();
								String strQuery = "select * from owner_products where (title='"+title+"' and category='"+category+"') and owner='"+encrypted_Owner+"'" ;
							  
								ResultSet rs = st.executeQuery(strQuery);
								int id=0;
								if(rs.next()==true)
								{
									id=rs.getInt(1);
									hash=rs.getString(16);
									des=rs.getString(11);
								}
								String decrypted_hash= new String(Base64.decode(hash.getBytes()));
								
								Statement st1=connection.createStatement();
								String strQuery1 = "select hashcode from owner_products where id='"+id+"' and owner='"+encrypted_Owner+"'" ;
								ResultSet rs1 = st1.executeQuery(strQuery1);
								if(rs1.next()==true)
								{
								
									 hash1=rs1.getString(1);
								}
								String decrypted_hash1= new String(Base64.decode(hash1.getBytes()));

																
								if(decrypted_hash.equals(decrypted_hash1))
								{

									%>
	</span>
									<p align="center" class="style37">&nbsp;</p>
									<p align="center" class="style37">&nbsp;</p>
									<p align="center" class="style37">Product is Safe..</p>
									<p align="center" class="style37"><a href="DO_Resolve.jsp"></a></p>
									<span class="style37"><br/>
									<br/>
									</span>
									<p align="center"><a href="DO_VerifyProducts.jsp" class="style10">Back</a></p>
									<%		
		
								}
								else
								{
								
											%>
											</span>
											<p align="center" class="style37">&nbsp;</p>
											<p align="center" class="style37">Product is Not Safe.</p>
											<span class="style37"><br/>
											<br/>
											</span>
											<p align="center"><a href="DO_VerifyProducts.jsp" class="style10">Back</a></p>
											<%	
								}
     

  
  
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>
    <p>&nbsp;</p>
  </div>
  <p>	
  </p>
  <p></p>
    
    <div class="cleaner"></div>
</div>

    <div class="cleaner"></div>  

<div id="tooplate_footer_wrapper">

    <div id="tooplate_footer"></div> 
     <!-- end of tooplate_footer -->

</div> 
    
</body>
</html>