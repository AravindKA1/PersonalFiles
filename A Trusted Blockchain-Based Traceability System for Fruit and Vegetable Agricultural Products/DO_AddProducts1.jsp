<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adding Products Status..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style35 {color: #006600}
.style59 {
	font-size: 28px;
	color: #009900;
}
.style8 {
	font-size: 16px;
	color: #CC0000;
	font-weight: bold;
}
.style68 {
	color: #6666FF;
	font-weight: bold;
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
            <h1 align="center" class="style2 style37 style59"><br />
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
    
    <div id="tooplate_content">
    
        <h2 class="style35">Adding Products Status..</h2>
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

          <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String category=null,title=null,price=null,des=null,p_code=null,bin = "", paramname=null, d_code=null, date=null, model=null, company=null, image=null;;
					
					FileInputStream fs=null;
					String s1=null;
					
					File file1 = null;	
					try {
					
						
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("category"))
							{
								category=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("title"))
							{
								title=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("company"))
							{
								company=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("model"))
							{
								model=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("price"))
							{
								price=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("p_code"))
							{
								p_code=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("d_code"))
							{
								d_code=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("date"))
							{
								date=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("textarea2"))
							{
								des=multi.getParameter(paramname);
							}
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					if(category.equals("--Select--"))
					{
					%>
          </p>
          <p class="style8">Please Select the Categorie..</p>
          <p>
            <%
					}
					else if(title.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product Title..</p>
          <p>
            <%
					}	
					else if(company.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product Company Name ..</p>
          <p>
            <%
					}
					else if(model.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product Quantity..</p>
          <p>
            <%
					}
					else if(price.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product Price ..</p>
          <p>
            <%
					}
					else if(p_code.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product Code ..</p>
          <p>
            <%
					}
					else if(d_code.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product's Dealers Code ..</p>
    
          <p>
            <%
					}
					else if(date.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product Upload Date ..</p>
          <p>
            <%
					}
					else if(des.equals(""))
					{
					%>
          </p>
          <p class="style8">Please Enter Product Description ..</p>
          <p>
            <%
					}
					
		            else
					{
						FileInputStream fs1 = null;
			 			String query1="select * from owner_products  where title='"+title+"' and category='"+category+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
									
												%><br/>
	  <p class="style68">Product Title Already Exist..</p>
									  <br/>
										  <%
					   }
					   else
					   {
								  
								  
								String owner=(String)application.getAttribute("dname");
								  
										  
								//Generate Hash Code Based on Descritption Start
								String namefile="filename.txt";
								PrintStream p=new PrintStream(new FileOutputStream(namefile));
								p.print(new String(des));
								
								
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
								String h1=bi1.toString(16);
								//Generate Hash Code Based on Descritption Ends
								  
									//Encryption 
									String keys = "ef50a0ef2c3e3a5f";
									byte[] keyValue = keys.getBytes();
									Key key = new SecretKeySpec(keyValue,"AES");
									Cipher c = Cipher.getInstance("AES");
									c.init(Cipher.ENCRYPT_MODE,key);
									String keyy = String.valueOf(keyValue);
									
									String encrypted_owner = new String(Base64.encode(owner.getBytes()));
									String encrypted_price = new String(Base64.encode(price.getBytes()));
									String encrypted_company= new String(Base64.encode(company.getBytes()));
									String encrypted_model = new String(Base64.encode(model.getBytes()));
									String encrypted_product_code= new String(Base64.encode(p_code.getBytes()));
									String encrypted_dealer_code= new String(Base64.encode(d_code.getBytes()));
									String encryptedDesc = new String(Base64.encode(des.getBytes()));
									String encrypted_date= new String(Base64.encode(date.getBytes()));
									String encrypted_hash= new String(Base64.encode(h1.getBytes()));
									
									
									//Generating Secret Key For Product
									Key prKey;
									Key pubKey;
									
									Cipher encoder = null;
									
									KeyPairGenerator kg = KeyPairGenerator.getInstance("RSA");
									encoder = Cipher.getInstance("RSA");
									KeyPair kp = kg.generateKeyPair();
									prKey = kp.getPrivate();
									
									pubKey = kp.getPublic();
									byte[] pub = pubKey.getEncoded();
									byte[] priv = prKey.getEncoded();
									
									String Secretkey=String.valueOf(priv);
									//out.print(Secretkey+"<br>");
									
									String encrypted_Secretkey= new String(Base64.encode(Secretkey.getBytes()));
									//out.print(encrypted_Secretkey);
									
									int rank=0;
									
									
									String query11="select * from categories where category='"+category+"' "; 
									Statement st11=connection.createStatement();
									ResultSet rs11=st11.executeQuery(query11);
						
							
									if ( rs11.next() )
								   {
									
									s1=rs11.getString(3);
									
									}
									
									
									
									  String status="Safe";
								  
								   PreparedStatement ps=connection.prepareStatement("insert into owner_products(title,category,owner,sk,price,company,model,product_code,dealer_code,des,image,date,rank,status,hashcode,cat_hash_code) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
									
									ps.setString(1,title);
									ps.setString(2,category);
									ps.setString(3,encrypted_owner);
									ps.setString(4,encrypted_Secretkey);
									ps.setString(5,encrypted_price);
									ps.setString(6,encrypted_company);
									ps.setString(7,encrypted_model);
									ps.setString(8,encrypted_product_code);
									ps.setString(9,encrypted_dealer_code);
									ps.setString(10,encryptedDesc);
									ps.setBinaryStream(11, (InputStream)fs, (int)(file1.length()));	
									ps.setString(12,encrypted_date);
									ps.setInt(13,rank);
									ps.setString(14,status);
									ps.setString(15,encrypted_hash);
									ps.setString(16,s1);
									int k=ps.executeUpdate();
									
									
									PreparedStatement ps1=connection.prepareStatement("insert into backup(title,category,owner,sk,price,company,model,product_code,dealer_code,des,image,date,hashcode,cat_hash_code) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
									
									ps1.setString(1,title);
									ps1.setString(2,category);
									ps1.setString(3,encrypted_owner);
									ps1.setString(4,encrypted_Secretkey);
									ps1.setString(5,encrypted_price);
									ps1.setString(6,encrypted_company);
									ps1.setString(7,encrypted_model);
									ps1.setString(8,encrypted_product_code);
									ps1.setString(9,encrypted_dealer_code);
									ps1.setString(10,encryptedDesc);
									ps1.setBinaryStream(11, (InputStream)fs, (int)(file1.length()));	
									ps1.setString(12,encrypted_date);
									ps1.setString(13,encrypted_hash);
									ps1.setString(14,s1);
									int k1=ps1.executeUpdate();
								   
									if(k>0 && k1>0)
									{
					  					
															
												%><br/>
										  <p class="style68">Product Uploaded Successfully..</p>
										  <br/>
										  <%
							  
									}
								}
								}
				
			}
			catch (Exception e) 
			{
				out.println(e.getMessage());
			}
			%>
          </p>
          <p>&nbsp;</p>
		            <p><a href="DO_AddProducts.jsp" class="style7"><strong>Back</strong></a></p>

          <p></p>
   
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
              <p align="center">&nbsp;</p>
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