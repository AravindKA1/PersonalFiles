<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Account Creation Status..</title> 
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
.style2 {
	font-size: 28px;
	color: #009900;
}
.style3 {color: #FF00FF}
.style11 {color: #3366FF;
	font-weight: bold;
}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style43 {
	color: #FF0000;
	font-weight: bold;
}
.style12 {color: #0000FF}
.style44 {color: #006600; font-weight: bold; }
.style45 {font-size: 14px; color: #FF0000; font-weight: bold; }
.style46 {font-size: 14px; color: #FF00FF; font-weight: bold; }
.style48 {color: #FF00FF; font-size: 12px; font-weight: bold; }
-->
</style>
</head>
<body> 

<div id="tooplate_header_wrapper">

  <div id="tooplate_header">
    
    <div class="style1" id="site_title">
      <table width="951" border="0" cellspacing="2" cellpadding="2">
        <tr>
          <td width="943"><div class="style1" id="div">
            <h1 align="left" class="style2"><br />
              A Trusted Blockchain-Based Traceability System for Fruit and Vegetable Agricultural Products</h1>
            </div></td>
        </tr>
      </table>
    </div> 
      <!-- end of site_title -->
      <div class="cleaner_h10"></div>
        
      <div id="tooplate_menu">
        	
  <div id="home_menu"><a href="#"></a></div>
                
          <ul>
              <li><a href="index.html">Home</a></li>
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
    
        <h2><span class="style3">Account Creation Status..</span></h2>
                   
                  
        <h2 class="style12">&nbsp;</h2>
        <p>
          <%@ include file="connect.jsp" %>
          <%@ page import="java.io.*" %>
          <%@ page import="java.util.*" %>
          <%@ page import="com.oreilly.servlet.*" %>
          <%
			       
					String uname=(String)application.getAttribute("uname");
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,branch=null,email=null,addr=null ,accno=null,mno=null,amount=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("accno"))
							{
								accno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("branch"))
							{
								branch=multi.getParameter(paramname);
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
							if(paramname.equalsIgnoreCase("amount"))
							{
								amount=multi.getParameter(paramname);
							}
							
						
							
						}
									
								String query121="select * from account  where user='"+uname+"' "; 
								Statement st121=connection.createStatement();
								ResultSet rs121=st121.executeQuery(query121);
									
								if ( rs121.next() )
							   {
							   
												   %>
        </p>
        <p class="style43">You Have an Account Already, Make Use of It.. </p>
        <br/>
        <p> <a href="useraccount.jsp" class="style48">Back</a></p>
        <%
							   }
							   else{
				
						
									String query1="select * from account  where account_no='"+accno+"' "; 
									Statement st1=connection.createStatement();
									ResultSet rs1=st1.executeQuery(query1);
									
										
								if ( rs1.next() )
								   {
										%>
        </p>
        </p>
        <p>&nbsp;</p>
        <p class="style45"> Account Number Already Exist.. </p>
        <p> </p>
        <p> <a href="createnewaccount.jsp" class="style46">Back</a>
            <%
							
								   }
								   else
								   {
								   
								
			PreparedStatement ps=connection.prepareStatement("insert into account(account_no,user,address,email,mobile,branch,amount) values(?,?,?,?,?,?,?)");
									ps.setString(1,accno);
									ps.setString(2,uname);
									ps.setString(3,addr);
									ps.setString(4,email);	
									ps.setString(5,mno);
									ps.setString(6,branch);
									ps.setString(7,amount);
								
									
								   
									
														
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
        </p>
        <p class="style44">Account Created Successfully.. </p>
        <p>
          <%	
										
						%>
        </p>
        <p align="left"><a href="useraccount.jsp" class="style48">Back</a></p>
        <%
						
								}}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
        </p>
<p>&nbsp;</p>
        
        <p align="right"><a href="useraccount.jsp" class="style10"></a><a href="UserMain.jsp" class="style11"></a></p>
  </div>
    <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
      <ul class="tooplate_list">
        <li>
          <p><a href="#">Home</a></p>
        </li>
        <li>
          <p><a href="index.html">Log Out </a></p>
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