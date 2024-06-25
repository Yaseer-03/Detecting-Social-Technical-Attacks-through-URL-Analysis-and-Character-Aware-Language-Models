<style type="text/css">
<!--
.style1 {color: #FF0000}
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
            <%@ include file="connect.jsp" %>
            <%
					  
					  String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11;
						int i=0;
						try 
						{
						   	String query="select * from datasets"; 
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
								s8=rs.getString(9); // links
								s9=rs.getString(10);
							
								

								
								
					%>
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
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
         