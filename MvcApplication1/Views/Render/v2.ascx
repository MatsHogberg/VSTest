<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<h1>Vy 2</h1>
<%
    var a = (string) ViewData["Param1"];
    var b = (string) ViewData["Param2"];

    Html.RenderAction("p2", new{alpha = a, beta = b });
%>