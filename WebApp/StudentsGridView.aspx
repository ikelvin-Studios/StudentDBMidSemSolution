<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentsGridView.aspx.vb" Inherits="WebApp.StudentsGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="StudentGridView" runat="server">
        <div><h2>Students List</h2>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="217px" Width="1132px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="INDEXNUMBER" HeaderText="INDEXNUMBER" SortExpression="INDEXNUMBER" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                <asp:BoundField DataField="AGE" HeaderText="AGE" SortExpression="AGE" />
                <asp:BoundField DataField="EMAIL_ID" HeaderText="EMAIL_ID" SortExpression="EMAIL_ID" />
                <asp:BoundField DataField="COURSE" HeaderText="COURSE" SortExpression="COURSE" />
                <asp:BoundField DataField="YEAR" HeaderText="YEAR" SortExpression="YEAR" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentDBConnectionString %>" DeleteCommand="DELETE FROM [STUDENTS] WHERE [ID] = @ID" InsertCommand="INSERT INTO [STUDENTS] ([INDEXNUMBER], [NAME], [GENDER], [USERNAME], [PASSWORD], [AGE], [EMAIL_ID], [COURSE], [YEAR]) VALUES (@INDEXNUMBER, @NAME, @GENDER, @USERNAME, @PASSWORD, @AGE, @EMAIL_ID, @COURSE, @YEAR)" ProviderName="<%$ ConnectionStrings:StudentDBConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [INDEXNUMBER], [NAME], [GENDER], [USERNAME], [PASSWORD], [AGE], [EMAIL_ID], [COURSE], [YEAR] FROM [STUDENTS]" UpdateCommand="UPDATE [STUDENTS] SET [INDEXNUMBER] = @INDEXNUMBER, [NAME] = @NAME, [GENDER] = @GENDER, [USERNAME] = @USERNAME, [PASSWORD] = @PASSWORD, [AGE] = @AGE, [EMAIL_ID] = @EMAIL_ID, [COURSE] = @COURSE, [YEAR] = @YEAR WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="INDEXNUMBER" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="AGE" Type="Decimal" />
                <asp:Parameter Name="EMAIL_ID" Type="String" />
                <asp:Parameter Name="COURSE" Type="String" />
                <asp:Parameter Name="YEAR" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="INDEXNUMBER" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="USERNAME" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="AGE" Type="Decimal" />
                <asp:Parameter Name="EMAIL_ID" Type="String" />
                <asp:Parameter Name="COURSE" Type="String" />
                <asp:Parameter Name="YEAR" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </form>
</body>
</html>
