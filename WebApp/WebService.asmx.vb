Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.ComponentModel

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)>
<ToolboxItem(False)>
Public Class WebService
    Inherits System.Web.Services.WebService

    <WebMethod()>
    Public Function GetDetails() As DataTable
        Dim constr As String = ConfigurationManager.ConnectionStrings("StudentDBConnectionString").ConnectionString
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand("select * from STUDENTS")
        Dim sda As New SqlDataAdapter

        cmd.Connection = con
        sda.SelectCommand = cmd
        Dim dt As New DataTable
        dt.TableName = "Student_Details"
        sda.Fill(dt)
        Return dt

    End Function

End Class