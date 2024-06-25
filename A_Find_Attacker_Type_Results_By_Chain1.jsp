
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FF0000}
-->
            </style>
		      




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(AHashcode) from datasets ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from datasets  where AHashcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(7);
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
		  <table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>


<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Uid</strong></strong></div></td> 	 
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Url </strong></strong></div></td>	
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>ranking	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>activeDuration 	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>urlLen 	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>attacktype 	</strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>datatype </strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Attack Type Hashcode </strong></strong></div></td>
<td  width="72" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11"><strong>Data Type Hashcode </strong></strong></div></td>
            </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">URL Attacker Type Chain--->::</span> <%=s111%><br>
			    <span class="style1">URL Attacker Type Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
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
	      </div>  
			 <tr>
               <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(s1);%>
              </div></td>
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <strong><textarea cols="30" rows="8"><%out.println(s2);%></textarea></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s3);%>
              </div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s4);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s5);%>
              </div></td> <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s6);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
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
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        