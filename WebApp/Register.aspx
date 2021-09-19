<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="WebApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formRegister" runat="server">
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
            <h1 class="display-4">Register Student</h1>
            <p class="lead">Takes the Student Details and add to the database</p>
          </div>
        </div>
             <hr class="mt-4 mb-4"/>

          <div style="text-align: center"  class="mt-2">
             <asp:Label ID="LabelIndexNumber" runat="server" Text="Index Number" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxIndexNumber" runat="server" style="text-align: center" CssClass="input formcontrol"></asp:TextBox>
              <br />
         </div>

          <div style="text-align: center" class="mt-2">
             <asp:Label ID="LabelName" runat="server" Text="Name" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxName" runat="server" style="text-align: center"></asp:TextBox>
              <br />
         </div>
             <div style="text-align: center"  class="mt-2">
             <asp:Label ID="Gender" runat="server" Text="Gender" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxGender" runat="server" style="text-align: center" CssClass="input formcontrol"></asp:TextBox>
              <br />
         </div>
             
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

             <div style="text-align: center" class="mt-2">
             <asp:Label ID="LabelConfirmPassword" runat="server" Text="Confirm Password" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxConfirmPassword" runat="server" style="text-align: center" TextMode="Password"></asp:TextBox>
              <br />
         </div>


             <div style="text-align: center"  class="mt-2">
             <asp:Label ID="LabelAge" runat="server" Text="Age" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxAge" runat="server" style="text-align: center" CssClass="input formcontrol" TextMode="Number"></asp:TextBox>
              <br />
         </div>

          <div style="text-align: center" class="mt-2">
             <asp:Label ID="LabelEmail" runat="server" Text="Email" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxEmail" runat="server" style="text-align: center" TextMode="Email"></asp:TextBox>
              <br />
         </div>
           <div style="text-align: center"  class="mt-2">
             <asp:Label ID="LabelCuorse" runat="server" Text="Course" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxCourse" runat="server" style="text-align: center" CssClass="input formcontrol"></asp:TextBox>
              <br />
         </div>
           <div style="text-align: center"  class="mt-2">
             <asp:Label ID="LabelYear" runat="server" Text="Year" style="text-align: center"></asp:Label>
             <asp:TextBox ID="TextBoxYear" runat="server" style="text-align: center" CssClass="input formcontrol"></asp:TextBox>
              <br />
         </div>
             <div class="mt-2" style="text-align: center">
                 <asp:Button ID="ButtonRegister" runat="server" Height="33px" Text="Register" Width="186px"  style="text-align: center"/>
             </div>
        
         </asp:Panel>
        
         
         
         </div>
        
         
         
    </form>
</body>
</html>
