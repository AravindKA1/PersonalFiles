<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Data Owner Registration Status..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style40 {color: #FF00FF; font-size: 28px;}
.style16 {color: #FF0000}
.style18 {font-size: 16px;
	color: #0099FF;
}
.style19 {font-size: 16px; color: #33CC00; }
.style30 {color: #FF00FF}
.style42 {font-size: 16px; color: #00FF00; }
.style43 {
	color: #009900;
	font-weight: bold;
}
.style5 {color: #FF00FF;
	font-size: 14px;
	font-weight: bold;
}
.style44 {
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
            <h1 align="left" class="style2 style37 style44"><br />
              A Trusted Blockchain-Based Traceability System for Fruit and Vegetable Agricultural Products</h1>
            <h1 align="center" class="style2 style37 style44">&nbsp;</h1>
            <h1 align="center" class="style2 style37 style44">&nbsp;</h1>
          </div></td>
        </tr>
      </table>
        
        </div> <!-- end of site_title -->
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu">
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="UserLogin.jsp" class="style19">User</a></li>
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
    
        <h2 class="style40">Data Owner  Registration Status..</h2>
                   
                  
        <div>
          <label for="name">
          <%@ include file="connect.jsp" %>
          <%@ page import="java.io.*" %>
          <%@ page import="java.util.*" %>
          <%@ page import="com.oreilly.servlet.*" %>
          <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,uname=null,pass=null,email=null,mno=null,addr=null,dob=null,gender=null,pincode=null,location=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
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
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from data_owner  where ownername='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
          </p>
          </label>
          <p>&nbsp;</p>
          <p class="style18 style24 style43">Owner Name Already Exist..</p>
          <p class="style18 style24">&nbsp;</p>
          <p align="left"><a href="DO_Register.jsp" class="style5 style16 style35">Back</a></p>
          <p>
            <%
				
					   }
					   else
					   {
					   
					  String status = "Waiting";
PreparedStatement ps=connection.prepareStatement("insert into data_owner(ownername,password,email,mobile,address,dob,gender,status,image) values(?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,status);
				
						ps.setBinaryStream(9, (InputStream)fs, (int)(file1.length()));	
				       
						
						if(f == 0)
							ps.setObject(9,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(9,fs1,fs1.available());
						}	
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
          </p>
          <p>&nbsp;</p>
          <p class="style42 style43">Registration Successfull..</p>
          <p class="style19">&nbsp;</p>
          <p><a href="index.html" class="style5">Back</a></p>
          <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          </p>
          <p align="left" class="style30">&nbsp;</p>
      </div>
        <div class="cleaner_h30"></div>
        
  </div>
    <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
            <ul class="tooplate_list">
              <li>
              <p><a href="#">Home</a></p>
              </li>
            <li>
              <p><a href="DO_Login.jsp">Owner  Login </a></p>
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