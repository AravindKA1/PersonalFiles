<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adding Categories status..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style36 {font-size: 25px; color: #FF00FF; }
.style18 {color: #006600}
.style37 {	color: #FFCC00;
	font-weight: bold;
}
.style38 {font-size: 14px}
.style39 {color: #006600; font-weight: bold; }
.style40 {
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
            <h1 align="left" class="style2 style37 style40"><br />
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
    
        <h2><span class="style36 style35">Adding Categories status..</span></h2>
                   
                  
        <div class="entry">
          <div class="templatemo_h_line"></div>
          <p>
        <%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,java.util.Random,java.security.KeyPairGenerator,javax.crypto.Cipher,java.security.Key,java.security.KeyPair     "%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>

            <span class="style18">
            <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String title=null,categorie=null,location1=null,sk=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("categorie"))
							{
								categorie=multi.getParameter(paramname);
								
							}
							
							
						}
							
						
						//Generate Hash Code Based on Descritption Start
								String namefile="filename.txt";
								PrintStream p=new PrintStream(new FileOutputStream(namefile));
								p.print(new String(categorie));
								
								
								MessageDigest md=MessageDigest.getInstance("SHA1");
								FileInputStream fis11=new FileInputStream(namefile);				
								DigestInputStream dis1=new DigestInputStream(fis11,md);
								BufferedInputStream bis1=new BufferedInputStream(dis1);				
								while(true)
								{
								
									int b1=bis1.read();
									if(b1==-1)
									
									break;
								}
								
								BigInteger bi1=new BigInteger(md.digest());
								String spl1=bi1.toString();
								String hcode=bi1.toString(16);
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from categories  where category='"+categorie+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
          </span> </p>
          <p class="style39">Categorie Already Exist..</p>
          </p>
          <p>&nbsp;</p>
          <p><a href="A_AddCategory.jsp" class="style38 style15"><strong>Back</strong></a></p>
          <p>
            <%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String dt = strDate + "   " + strTime;
			
					  
										if(!categorie.equals(""))
										{
									
									
									
												String strQuery2 = "insert into categories(category,hash_code) values('"+categorie+"','"+hcode+"')";
												connection.createStatement().executeUpdate(strQuery2);
												
							
												
														%>
          </p>
          <p class="style39">Categorie Added Successfully..</p>
          </p>
          <p>&nbsp;</p>
          <p><a href="A_AddCategory.jsp" class="style38 style15"><strong>Back</strong></a></p>
          <%
											 }
											 else
											 {
											 	
												
														%>
          <p class="style39">Please Input Categorie Name..</p>
          <p class="style37">&nbsp;</p>
          <a href="A_AddCategory.jsp" class="style38 style15"><strong>Back</strong></a>
          </p>
          <%
					
					
												}
					
						}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          </p>
          <p></p>
          <p></p>
          <p> </p>
        </div>
        <div class="cleaner_h30"></div>
        
  </div>
  <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
          <ul class="tooplate_list"><li>
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