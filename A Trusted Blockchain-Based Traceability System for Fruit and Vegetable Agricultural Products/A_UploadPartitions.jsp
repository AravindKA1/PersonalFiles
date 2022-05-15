<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="connect.jsp"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


  try{      
	
					
					
							ArrayList al1=new ArrayList();
							String title3="",category3="";
							int i3=0,j3=1,k4=0,l5=0;
								
							String sql="delete from partition1";
							Statement st123=connection.createStatement();
							st123.executeUpdate(sql);
							
							String sql6="delete from partition2";
							Statement st6=connection.createStatement();
							st6.executeUpdate(sql6);
							
							String query3="select * from owner_products order by RAND()"; 
							Statement st3=connection.createStatement();
							ResultSet rs3=st3.executeQuery(query3);
							while ( rs3.next()==true)
							{
								i3=rs3.getInt(1);
								al1.add(i3);
							}
							
							
									
							
							for(int x1=0;x1<al1.size();x1++)
							{
	
													String query121="select * from owner_products where id="+al1.get(x1)+""; 
													Statement st121=connection.createStatement();
													ResultSet rs121=st121.executeQuery(query121);
													if ( rs121.next()==true)
													{
														int ss3=rs121.getInt(1);
														title3=rs121.getString(2);
														category3=rs121.getString(3);
														String owner3=rs121.getString(4);
														String company3 = rs121.getString(6);
														int rank3 = rs121.getInt(14);
														String price3= rs121.getString(8);
														String model3= rs121.getString(7);
														String p_code3= rs121.getString(9);
														String d_code3= rs121.getString(10);
														String sk3= rs121.getString(5);
														String des3= rs121.getString(11);
														String date3= rs121.getString(13);
														String hash3= rs121.getString(16);
			
	
	
	
	/*
			String decrypted_owner1 = new String(Base64.decode(owner1.getBytes()));
			String decrypted_price1 = new String(Base64.decode(price1.getBytes()));
			String decrypted_company1= new String(Base64.decode(company1.getBytes()));
			String decrypted_model1 = new String(Base64.decode(model1.getBytes()));
			String decrypted_product_code1= new String(Base64.decode(p_code1.getBytes()));
			String decrypted_dealer_code1= new String(Base64.decode(d_code1.getBytes()));
			String decryptedDesc1 = new String(Base64.decode(des1.getBytes()));
			String decrypted_date1= new String(Base64.decode(date1.getBytes()));
			String decrypted_sk1= new String(Base64.decode(sk1.getBytes()));
			String decrypted_hash1= new String(Base64.decode(hash1.getBytes()));					*/				
								
				
					
					
					
					String sql4="insert into partition1 (id,title,category,owner,des,sk,rank,hashcode)values('"+ss3+"','"+title3+"','"+category3+"','"+owner3+"','"+des3+"','"+sk3+"','"+rank3+"','"+hash3+"')";
					Statement st4=connection.createStatement();
					 k4=st4.executeUpdate(sql4);
					
					String sql5="insert into partition2 (id,company,model,price,product_code,dealer_code,date)values('"+ss3+"','"+company3+"','"+model3+"','"+price3+"','"+p_code3+"','"+d_code3+"','"+date3+"')";
					Statement st5=connection.createStatement();
					l5=st5.executeUpdate(sql5);
					
					
					}
				}
					if(k4>0 && l5>0)
					{
					
								%><br/>
			<p class="style64">Products Uploaded Successfully..</p><br/>
			<a href="A_MakePartitions.jsp">Back</a>
			<%
					
						
					}
					
		
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>

</body>
</html>