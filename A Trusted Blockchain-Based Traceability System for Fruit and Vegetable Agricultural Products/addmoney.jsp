<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adding Money To Account..</title> 
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style43 {
	color: #FF0000;
	font-weight: bold;
}
.style12 {color: #0000FF}
.style49 {color: #00FF00}
.style50 {color: #00FF00; font-weight: bold; }
.style48 {color: #FF0000}
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
            <h1 align="center" class="style2">&nbsp;</h1>
            <h1 align="center" class="style2">&nbsp;</h1>
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
    
        <h2><span class="style3">Adding Money To Account..</span></h2>
                   
                  
        <form action="addmoneyAuthentication.jsp" method="post" >
          <span class="style43">
          <label for="name"><span class="style49">
          <%
		  	String user=(String)application.getAttribute("uname");
			String account="";
		    String sql="SELECT account_no FROM account where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					account=rs.getString(1);
					
			}
		  
		  
		  
		  %>
          <br />
          <span class="style48">Account Number(required)</span></span></label>
          </span>
          <p class="style43">
            <input type="text"  name="accno" value="<%=account%>" readonly="readonly"/>
          </p>
          <span class="style43">
          <label for="amount">Amount (required)</label>
          </span>
          <p class="style50">
            <input type="text"  name="amount" class="text" />
          </p>
          <span class="style50">
          <label for="email"></label>
          </span>
          <p class="style43"><br />
              <input name="submit" type="submit" value="Update Account" />
          </p>
          <p class="style43">&nbsp;</p>
          <p align="left"><a href="useraccount.jsp" class="style10">Back</a></p>
      </form>
        <div class="cleaner_h30"></div>
        
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
            <blockquote>&nbsp;</blockquote>
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