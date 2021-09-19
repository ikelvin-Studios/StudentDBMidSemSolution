<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegisterDetails.aspx.vb" Inherits="WebApp.RegisterDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formRegisterDetails" runat="server">
        <div>  
            <!-- #include file="navigation.html" -->
      
        
            <hr class="mt-4 mb-4"/>
            <hr class="mt-4 mb-4"/>
             <hr class="mt-4 mb-4"/>
        
        <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <h1 class="display-4">Welcome <asp:Label ID="LabelUsername" runat="server" Text=""></asp:Label></h1>
            <p class="lead">Here is your welcome message, You were just added to StudentDB </p>
          </div>
             <asp:Panel ID="PanelActions" runat="server">
       
             <hr class="mt-4 mb-4"/>
          <div style="text-align: center"  class="mt-2">
             <asp:Label ID="LabelYear" runat="server" Text="Year" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxYear" runat="server" style="text-align: center" CssClass="input formcontrol"></asp:TextBox>
              <br />
         </div>

             <div class="mt-2" style="text-align: center">
                 <asp:Button ID="ButtonUpdateYear" runat="server" Height="33px" Text="Update Year" Width="186px"  style="text-align: center"/>
             </div>

             <div class="mt-2" style="text-align: center">
                 <asp:Button ID="ButtonDeleteStudent" runat="server" Height="33px" Text="Delete Account" Width="186px"  style="text-align: center"/>
             </div>
        
         </asp:Panel>
        </div>
        </div>
    </form>
</body>
</html>
