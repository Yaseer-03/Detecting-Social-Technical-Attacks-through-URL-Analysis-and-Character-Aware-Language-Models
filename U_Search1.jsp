<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Fresh Fruits</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style15 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style17 {
	font-size: 16px;
	color: #FFFFFF;
}
.style19 {color: #F0F0F0}
.style20 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style17">A URL Based Social Semantic Attacks Detection With Character-Aware Language Model</a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>A URL Based Social Semantic Attacks Detection With Character-Aware Language Model</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>A URL Based Social Semantic Attacks Detection With Character-Aware Language Model</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>A URL Based Social Semantic Attacks Detection With Character-Aware Language Model</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <p class="style15">View Dataset Details !!! </p>
      <p class="style15">&nbsp;</p>
      <p class="style15"><a href="U_Main.jsp">Back</a></p>
      <table width="650" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
            <tr>

 <td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>Ui<span class="style19">d</span></strong><span class="style19"></strong></span></div></td> 	 
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>Url </strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>ranking	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>activeDuration 	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>urlLen 	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>attacktype 	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>datatype </strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>Attack Type Hashcode </strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11"><strong>Data Type Hashcode </strong></strong></div></td>
            </tr>
			
			 
			 <%
            

		    String uid=request.getParameter("uid");
		  
           String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21;
	       int i=0,k=0,rank1=0;
  try 
	{	
  String str="select * from datasets where Uid='"+uid+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9); // links
								s9=rs.getString(10);
								

%>
          </p>
          
				 				<tr >
								    
								  	 <td height="41" align="center"  valign="middle"><div align="center" class="style4 style20">
               <%out.println(s1);%>
              </div></td>
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style4 style20">
                <strong><textarea cols="30" rows="8"><%out.println(s2);%></textarea></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style4 style20">
                <%out.println(s3);%>
              </div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style4 style20">
                <%out.println(s4);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4 style20">
                <%out.println(s5);%>
              </div></td> 
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4 style20">
                <%out.println(s6);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4 style20">
               <%out.println(s7);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <textarea><%out.println(s8);%></textarea>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <textarea><%out.println(s9);%></textarea>
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
      <div class="clr">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><a href="U_Main.jsp"></a></p>
      </div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
</body>
</html>
