<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #FF0000}
.style3 {font-weight: bold}
.style4 {font-weight: bold}
.style5 {font-weight: bold}
.style6 {font-weight: bold}
.style7 {font-weight: bold}
.style8 {font-weight: bold}
.style9 {font-weight: bold}
.style10 {font-weight: bold}
.style12 {color: #FF0000; font-weight: bold; }
.style13 {font-weight: bold}
.style14 {font-weight: bold}
-->
</style>
<table width="1015" border="1" align="center"  cellpadding="0" cellspacing="0">
              <tr>
                <td  valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Id </strong></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Title Image</strong></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Title</strong></div></td>
                <td height="34" valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style55 style61 style5"><strong>Category</strong></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Purchased By </strong></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Company</strong></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><span class="style5 style55 style61 style64">Quantity</span></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Price</strong></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Description</strong></div></td>
                <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Purchased Date</strong></div></td>
				 <td valign="middle" bgcolor="#000000" style="color: #2c83b0;"><div align="center" class="style1 style64 style61 style55 style5"><strong>Category Hash Code</strong></div></td>
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
						
						
						
								int check=1,test=1;;
							String title1="",category1="",s1,s2,s3,s4,s5,s6,s7,s11=null;
							int i=0,j=1;
							
							String cat="Vegetable";
							
							String query11="select * from categories where category='"+cat+"' "; 
									Statement st11=connection.createStatement();
									ResultSet rs11=st11.executeQuery(query11);
						
							
									if ( rs11.next() )
								   {
									
									s11=rs11.getString(3);
									
									}
							
							
						
						   	String query="select * from purchase where cat_hash_code='"+s11+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5); //cat
								s3=rs.getString(7);
								s4=rs.getString(6);
								s5=rs.getString(3);
								s6=rs.getString(8);
								
								
							
				  
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
														
														String keys = "ef50a0ef2c3e3a5f";
														byte[] keyValue = keys.getBytes();
														Key key = new SecretKeySpec(keyValue,"AES");
														Cipher c = Cipher.getInstance("AES");
														c.init(Cipher.ENCRYPT_MODE,key);
														String keyy = String.valueOf(keyValue);

									String decryptedDesc1 = new String(Base64.decode(des1.getBytes()));

				
									
					%>
                      <tr>
                        <td  width="48"  valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63 style2 style3">
                          <p>
                            <%out.println(i);%>
                          </p>
                        </div></td>
                <td  width="146" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style20 style37 style56 style63 style2 style4">
                  <div class="style63" style="margin:10px 13px 10px 13px;" >
                    
                    <input  name="image2" type="image" src="images.jsp?imgid=<%=i%>" style="width:120px; height:100px;" />
                  </div>
                  </div></td>
                <td  width="99" valign="middle" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style5">
                  <p>
                    <%out.println(title1);%>
                  </p>
                </div></td>
                <td  width="86" valign="middle" height="133" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style6">
                  <p>
                    <%out.println(category1);%>
                  </p>
                </div></td>
                <td  width="95"  valign="middle" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style7">
                  <p>
                    <%out.println(s5);%>
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
                   
                <td  width="85"  valign="middle" height="133" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style8">
                  <p>
                    <%out.println(decrypted_company12);%>
                  </p>
                </div></td>
                <td  width="71" valign="middle" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style9">
                  <p>
                    <%out.println(decrypted_model12);%>
                  </p>
                </div></td>
                <td  width="85" valign="middle" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style10">
                  <p>
                    <%out.println(decrypted_price12);%>
                    Rs/- </p>
                </div></td>
                <td  width="174" valign="middle" style="color: #2c83b0;">
                
                      <span class="style12">
                      <textarea name="textarea" cols="25" rows="8"> <%out.println(decryptedDesc1);%>
                      </textarea>
                      </span> </td>
                <td  width="104" valign="middle" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style13">
                  <p>
                    <%out.println(s4);%>
                  </p>
                </div></td>
				<td  width="104" valign="middle" style="color: #2c83b0;"><div align="center" class="style20 style37 style56 style63 style2 style14">
                  <p>
                    <%out.println(s6);%>
                  </p>
                </div></td>
              </tr>  
                        <%
				
					}	}
						
					
			}
				%>
    </table>
				
				<%
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
				<p>&nbsp;</p>
				