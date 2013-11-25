<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%
    var a = (string) ViewData["Param1"];
    var b = (string) ViewData["Param2"];
    
%>

<h1>Vy 3</h1>
<p><%:Html.Label(a) %></p>
<p><%:Html.Label(b) %></p>
