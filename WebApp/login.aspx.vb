Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.ComponentModel

Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonLogin_Click(sender As Object, e As EventArgs) Handles ButtonLogin.Click


        Dim constr As String = ConfigurationManager.ConnectionStrings("StudentDBConnectionString").ConnectionString
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand("select * from STUDENTS where username =@username and password=@password")
        cmd.Parameters.AddWithValue("@username", TextBoxUsername.Text)
        cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text)
        Dim sda As New SqlDataAdapter

        cmd.Connection = con
        sda.SelectCommand = cmd
        Dim dt As New DataTable
        dt.TableName = "Student_Details"
        sda.Fill(dt)

        If dt.Rows.Count > 0 Then
            Session("USERNAME") = TextBoxUsername.Text
            Response.Redirect("Details.aspx")
        Else
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>")
        End If

    End Sub
End Class