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
<%@ page import="java.security.*,java.security.DigestInputStream,java.math.BigInteger"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

  try{      
        

			String des = request.getParameter("des");
			String hash = request.getParameter("hash");
			int id = Integer.parseInt(request.getParameter("id"));			
		

							String strQuery1 = "update partition1 set hashcode='"+hash+"',des='"+des+"' where id='"+id+"'";
							Statement st1=connection.createStatement();
							int a=st1.executeUpdate(strQuery1);
						
							if(a>0)
							{
							
							out.print("<br>Resolved Successfully..");
							%><br/><br/><p><a href="DO_VerifyProducts.jsp">Back</a></p>
							<%
							}
						
						
					
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>

</body>
</html>