<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentsList.aspx.vb" Inherits="WebApp.StudentsList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formStudentsList" runat="server">
        <!-- #include file="navigation.html" -->
        <hr class="mt-4 mb-4"/>
        <hr class="mt-4 mb-4"/>
        <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <h1 class="display-4">Students List</h1>
            <p class="lead">The GridView displays all the the details of student from the database using a webservice with data bound to the GridView</p>
          </div>
        </div>
        <div>
        </div>
        <asp:GridView ID="StudentsGridView" class="table table-responsive" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
