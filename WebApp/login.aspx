<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="WebApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="formLogin" runat="server">
         <div class="auto-style1">
         <!-- #include file="navigation.html" -->
        <hr class="mt-4 mb-4"/>
        <hr class="mt-4 mb-4"/>
        
         
         <asp:Panel ID="PanelLogin" runat="server">
        <hr class="mt-4 mb-4"/>
        <hr class="mt-4 mb-4"/>
             <hr class="mt-4 mb-4"/>
        
        <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <h1 class="display-4">Students Login</h1>
            <p class="lead">Takes the Student Username and Password and check them agains the database</p>
          </div>
        </div>
             <hr class="mt-4 mb-4"/>
          <div style="text-align: center"  class="mt-2">
             <asp:Label ID="LabelUsername" runat="server" Text="Username" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxUsername" runat="server" style="text-align: center" CssClass="input formcontrol"></asp:TextBox>
              <br />
         </div>

          <div style="text-align: center" class="mt-2">
             <asp:Label ID="LabelPassword" runat="server" Text="Password" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxPassword" runat="server" style="text-align: center" TextMode="Password"></asp:TextBox>
              <br />
         </div>
             <div class="mt-2" style="text-align: center">
                 <asp:Button ID="ButtonLogin" runat="server" Height="33px" Text="Login" Width="186px"  style="text-align: center"/>
             </div>
        
         </asp:Panel>
        
         
         
         </div>
        
         
         
    </form>
</body>
</html>
