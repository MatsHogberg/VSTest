<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <script src="../../Scripts/jquery-1.7.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            SetupEventHandlers();
        });
        function SetupEventHandlers() {
            alert("Handlers");
            $('#b1').click(function() {
                LoadPartial();
            });
        }
        function LoadPartial() {
            alert("Load");
            $.ajax({
                url: "<%:Url.Action("p1")%>",
                type: 'POST',
                data:{s1: "param 1", s2: "param 2"},
                cache: false,
                success: function (result) {
                    $("#modal").html(result);
                },
                error: function() {
                    alert("Error");
                }
            });
        }
    </script>
    <title>View1</title>
</head>
<body>
    <h1>Vy 1</h1>
    <input type="button" id="b1" value="Klick" />
    
    <div id="modal"></div>
</body>
</html>
