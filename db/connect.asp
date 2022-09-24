<%
  'NOVO
  Dim DbConn
  
  Set DbConn = Server.CreateObject("ADODB.Connection")
  DbConn.CommandTimeout = 120
  DbConn.Open "Provider=SQLOLEDB;Data Source=brasilrugby_cnru.sqlserver.dbaas.com.br;Initial Catalog=brasilrugby_cnru;User Id=brasilrugby_cnru;Password=cbru@2016"
%>