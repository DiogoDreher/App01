<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <%
        if(HttpContext.Current.Request.Form["btnRegistar"] == null) {
            Response.Write("Tens a manie que és ácaro...<br>");
    %>
        <a href="/index.aspx">Regressa a Casa</a>
    <%
        } else {
            string nome = HttpContext.Current.Request.Form["txtNome"];
            string nif = HttpContext.Current.Request.Form["txtNIF"];
            //Response.Write("Tú és o " + nome + " e tens o NIF " + nif + "<br>");
    %>
        <table style="width:100%">
            <tr>
                <td>Nome:</td>
                <td><%=nome %></td>
            </tr>
            <tr>
                <td>Nif:</td>
                <td><%=nif %></td>
            </tr>
        </table>
    <%
        }
    %>
    <h3>Este texto vai direto para o cliente</h3>
</body>
</html>