<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Total Bill On Purchased Products..</title> 
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
.style55 {font-size: 16px; color: #FFFFFF; }
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style55 {color: #FF0000}
.style56 {font-size: 12px}
.style61 {font-size: 13px}
.style62 {
	font-size: 25px;
	font-weight: bold;
	color: #009900;
}
.style63 {color: #FF00FF}
.style65 {
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
	color: #0000FF;
	font-size: 25px;
}
.style66 {color: #006600}
.style67 {font-size: 20px}
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
  <p class="style62"><span class="style31 style46 style30  style35">All  Purchased Products and Total Bill.. </span></p>
  <p class="style62">&nbsp;</p>
  <div id="tooplate_sidebar">
        
            <table width="1044" border="1" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Id </div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Title Image</div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Title</div></td>
                <td valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style61 style55"><strong>Category</strong></div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Company</div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61"><span class="style5 style55 style61 style64">Quantity</span></div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Price</div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Product Code </div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Purchase By </div></td>
                <td valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style55 style61">Purchase Date</div></td>
              </tr>
              
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
		
								int integrate=0,totalbill=0;
								int check=1,test=1;;
							String title1="",category1="",s1,s2,s3,s4,s5,s6,s7;
							int i=0,j=1;
				
						   	String query="select * from purchase order by title ASC"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(7);
								integrate=Integer.parseInt(s3);
								totalbill=totalbill+integrate;
								s4=rs.getString(6);
								s5=rs.getString(3);
				  
													String query1="select * from owner_products where title='"+s1+"'"; 
													Statement st1=connection.createStatement();
													ResultSet rs1=st1.executeQuery(query1);
													if ( rs1.next()==true)
													{
														i=rs1.getInt(1);
														title1=rs1.getString(2);
														category1=rs1.getString(3);
														String des1= rs1.getString(11);
														int rank1 = rs1.getInt(14);
														
														
														//Description Encryption 
														String keys = "ef50a0ef2c3e3a5f";
														byte[] keyValue = keys.getBytes();
														Key key = new SecretKeySpec(keyValue,"AES");
														Cipher c = Cipher.getInstance("AES");
														c.init(Cipher.ENCRYPT_MODE,key);
														String keyy = String.valueOf(keyValue);

									String decryptedDesc1 = new String(Base64.decode(des1.getBytes()));

				
									
							
					%>
                      <tr>
                <td  width="56"  valign="middle" height="142" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(i);%>
                  </p>
                </div></td>
                <td  width="166" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <div class="style63" style="margin:10px 13px 10px 13px;" >
                    <input  name="image2" type="image" src="images.jsp?imgid=<%=i%>" style="width:140px; height:120px;" />
                  </div>
                  </div></td>
                <td  width="125" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(title1);%>
                  </p>
                </div></td>
                <td  width="97" valign="middle" height="142" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(category1);%>
                  </p>
                </div></td>
                <%
					
													String query12="select * from owner_products where id='"+i+"'"; 
													Statement st12=connection.createStatement();
													ResultSet rs12=st12.executeQuery(query12);
													if ( rs12.next()==true)
													{
														String company12 = rs12.getString(6);
														String price12= rs12.getString(8);
														String model12= rs12.getString(7);
														String p_code12= rs12.getString(9);
														String d_code12= rs12.getString(10);
														String date12= rs12.getString(13);

			
			
									String decrypted_price12 = new String(Base64.decode(price12.getBytes()));
									String decrypted_company12= new String(Base64.decode(company12.getBytes()));
									String decrypted_model12 = new String(Base64.decode(model12.getBytes()));
									String decrypted_product_code12= new String(Base64.decode(p_code12.getBytes()));
									String decrypted_dealer_code12= new String(Base64.decode(d_code12.getBytes()));
									String decrypted_date12= new String(Base64.decode(date12.getBytes()));
			
			
			
			
		
                      			
					%>
                   
                <td  width="98"  valign="middle" height="142" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(decrypted_company12);%>
                  </p>
                </div></td>
                <td  width="83" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(decrypted_model12);%>
                  </p>
                </div></td>
                <td  width="98" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(decrypted_price12);%>
                    Rs/- </p>
                </div></td>
                <td  width="111" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(decrypted_product_code12);%>
                  </p>
                </div></td>
                <td  width="117" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(s5);%>
                  </p>
                </div></td>
                <td  width="117" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63">
                  <p>
                    <%out.println(s4);%>
                  </p>
                </div></td>
              </tr>  
                        <%
				
					}	}
						
					
			}
				%>
    </table>
				<p>&nbsp;</p>
				<p><br/>
                </p>
				<table width="1027" border="0" cellspacing="2" cellpadding="2">
                  <tr>
                    <td width="1019"><span class="style65"><span class="style66">Total Bill On All Purchased Products is :</span>
                        <%out.println(totalbill);%>
                    <span class="style67">Rs/-                  </span></span></td>
                  </tr>
    </table>
				<p>
				  <%
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
    </p>
				<p>&nbsp;</p>
				
				<p>&nbsp;</p>
				<table width="592" border="0" cellspacing="2" cellpadding="2">
                  <tr>
                    <td width="584"><div align="right"><a href="AdminMain.jsp" class="style11">Back</a></div></td>
                  </tr>
                </table>
				<p>&nbsp;</p>
			<p align="center"><a href="UserMain.jsp" class="style11"></a></p>
            <h2>&nbsp;</h2>
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