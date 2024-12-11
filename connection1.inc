<%
set ConAct= server.createObject("ADODB.connection")
ConAct.Open "DRIVER=Microsoft Access Driver (*.mdb);DBQ=" & Server.MapPath("./") & "\Library1.mdb"
%>

