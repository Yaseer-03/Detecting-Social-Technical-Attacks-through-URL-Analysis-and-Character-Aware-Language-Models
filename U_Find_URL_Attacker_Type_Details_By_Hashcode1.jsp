<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Find_URL_Attacker_Type_Details_By_Hashcode</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style3 {font-size: 18px}
.style11 {color: #FFFFFF}
.style14 {font-size: 14px}
.style15 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1"><span class="style11">A URL Based Social Semantic Attacks Detection With Character-Aware Language Model</span><br />
        </a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
	
	 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
  <h2 class="style3" style="color:#FF0033">Find URL Attacker Type Details By Hashcode!!! </h2>
	
      <table width="926" height="129" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>Uid</strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>Url </strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>ranking </strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>activeDuration </strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>urlLen </strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>attacktype </strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>datatype </strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style15 style14"><strong>Attack Type Hashcode </strong></div></td>
          <td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style14 style15"><strong>Data Type Hashcode </strong></div></td>
        </tr>
        <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19;
int i=0,count=0;
try 
{

   String Type=request.getParameter("type");
  
  
    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Type));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
  
                     out.print(h1);
	String query="select * from datasets where AHashcode='"+h1+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
	
	i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
		s9=rs.getString(10);
		
			%>
        <tr>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4 style15">
              <%out.println(s1);%>
          </div></td>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4 style15"> <strong>
            <textarea name="textarea" cols="30" rows="8"><%out.println(s2);%>
      </textarea>
          </strong> </div></td>
          <td align="center"  valign="middle"><div align="center" class="style4 style15">
              <%out.println(s3);%>
          </div></td>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4 style15">
              <%out.println(s4);%>
          </div></td>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4 style15">
              <%out.println(s5);%>
          </div></td>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4 style15">
              <%out.println(s6);%>
          </div></td>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4 style15">
              <%out.println(s7);%>
          </div></td>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4">
              <textarea name="textarea2"><%out.println(s8);%>
      </textarea>
          </div></td>
          <td height="41" align="center"  valign="middle"><div align="center" class="style4">
              <textarea name="textarea2"><%out.println(s9);%>
      </textarea>
          </div></td>
        </tr>
        <%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
      <div class="mainbar">
        <div class="article">
         
          <div class="post_content">
		  <p>&nbsp;</p>
          
					
					
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages"><a href="U_Main.jsp">Back</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>