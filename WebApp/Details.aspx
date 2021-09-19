<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Details.aspx.vb" Inherits="WebApp.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formDetails" runat="server">
        <div>  
            <!-- #include file="navigation.html" -->
      
        
            <hr class="mt-4 mb-4"/>
            <hr class="mt-4 mb-4"/>
             <hr class="mt-4 mb-4"/>
        
        <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <h1 class="display-4">Welcome <asp:Label ID="LabelUsername" runat="server" Text=""></asp:Label></h1>
            <p class="lead">Here is your welcome message, Thanks for logging back in to StudentDB </p>
          </div>
        </div>
        </div>
    </form>
</body>
</html>
