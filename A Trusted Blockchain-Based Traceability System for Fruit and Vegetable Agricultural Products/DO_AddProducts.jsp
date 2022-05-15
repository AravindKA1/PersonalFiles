<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adding Products..</title> 
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2033 Business
http://www.tooplate.com/view/2033-business
-->
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style11 {color: #FF00FF;
	font-weight: bold;
}
.style35 {color: #006600}
.style59 {
	font-size: 28px;
	color: #009900;
}
.style62 {color: #FF0000}
.style64 {color: #FF0000; font-weight: bold; }
.style67 {
	color: #FFFF00;
	font-weight: bold;
}
.style70 {font-size: 13px; font-weight: bold; color: #FFFF00; }
.style71 {font-size: 11px}
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
    
        <h2 class="style35">Adding Products.. </h2>
		  <%@page import ="java.util.*"%>
          <%@ include file="connect.jsp" %>
			<%     
			try 
			{
			
				ArrayList a1=new ArrayList();
			
				String query="select category FROM categories"; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				
				while ( rs.next() )
				{
					a1.add(rs.getString("category"));
			
				}%>    
        <form action="DO_AddProducts1.jsp" method="post" enctype="multipart/form-data">
          <table width="648" border="0" align="center">
            <tr>
              <td height="47"><span class="style64">(*) Required</span></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="47" bgcolor="#FF0000"><div align="justify" class="style67"><span class="style8 style4 style3">Select Product Category</span><span class="style71"> *</span></div></td>
              <td><label>
                <select id="s1" name="category">
                  <option>--Select--</option>
                  <% for(int i=0;i<a1.size();i++)
        	  {
        	  %>
                  <option><%= a1.get(i)%></option>
                  <%}%>
                </select>
              </label></td>
            </tr>
            <tr>
              <td height="46" bgcolor="#FF0000"><span class="style70">Product Title <span class="style71">*</span></span></td>
              <td><label> 
                    <input name="title" type="text" size="40" />
              </label></td>
            </tr>
            <tr>
              <td height="46" bgcolor="#FF0000"><span class="style70">Product Company <span class="style71">*</span></span></td>
              <td><label>
              
                <input name="company" type="text" size="40" />
</label></td>
            </tr>
            <tr>
              <td height="46" bgcolor="#FF0000"><span class="style70"> Quantity.<span class="style71">*</span></span></td>
              <td><label> 
                    <input name="model" type="text" size="40" />
              </label></td>
            </tr>
            <tr>
              <td height="46" bgcolor="#FF0000"><span class="style70"> Price<span class="style71"> *</span></span></td>
              <td><label> 
                    <input name="price" type="text" size="40" />
              </label></td>
            </tr>
            <tr>
              <td height="46" bgcolor="#FF0000"><span class="style70"> Product Code<span class="style71"> *</span></span></td>
              <td><label> 
                    <input name="p_code" type="text" size="40" />
					<p>eg: <span class="style62">200001,200002,etc..</span></p>
              </label></td>
            </tr>
            <tr>
              <td height="65" bgcolor="#FF0000"><span class="style70"> Dealer's Code<span class="style71"> *</span></span></td>
              <td><label> 
                    <input name="d_code" type="text" size="40" />
					<p>eg: <span class="style62">100001,100002,etc..</span></p>
              </label></td>
            </tr>
            <tr>
              <td width="186" height="46" bgcolor="#FF0000"><span class="style70"> Upload Date<span class="style71"> *</span></span></td>
              <td width="452"><label> 
                    <input name="date" type="text" size="40" placeholder="eg : 15/08/2014"/>
                   
              </label></td>
            </tr>
            <tr>
              <td height="46" bgcolor="#FF0000"><span class="style70">Product Image<span class="style71"> *</span></span></td>
              <td><input type="file" id="file" name="file" /></td>
            </tr>

            <tr>
              <td bgcolor="#FF0000"><span class="style70">Product Description<span class="style71"> *</span></span></td>
              <td><p>
                  <label>
                  <textarea name="textarea2" cols="50" rows="6"></textarea>
                  </label>
              </p></td>
            </tr>

            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="26"><label></label></td>
              <td><label>
                <input type="submit" name="Submit" value="Encrypt and Upload" />
                <input type="reset" name="Submit2" value="Reset" />
              </label></td>
            </tr>
          </table>
          <p align="right"><a href="DO_Main.jsp" class="style11"><a href="DO_Main.jsp" class="style11">Back</a></p>
        </form>
		 </form>
        <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        <div class="cleaner_h30"></div>
        
  </div>
    <div id="tooplate_sidebar">
        
            <h2>Sidebar Menu </h2>
            
            <ul class="tooplate_list">
              <li>
              <p><a href="DO_AddProducts.jsp">Home</a></p>
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