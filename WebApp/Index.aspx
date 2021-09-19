<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="WebApp.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formIndex" runat="server">
<!-- #include file="navigation.html" -->
        <hr class="mt-4 mb-4"/>
        <hr class="mt-4 mb-4"/>
        <div class="jumbotron mt-4">
          <h1 class="display-4">Hello, MidSem!</h1>
          <p class="lead">This is a StudentDB</p>
          <hr class="my-4">
          <p>Please Use the navigation to explore the forms</p>
          <a class="btn btn-primary btn-lg" href="StudentsList.aspx" role="button">Get Started</a>
        </div>
    </form>
</body>
</html>
