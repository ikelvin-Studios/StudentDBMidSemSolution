Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.ComponentModel
Public Class RegisterDetails
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LabelUsername.Text = Session("NEWUSER")
        TextBoxYear.Text = Session("YEAR")
    End Sub

    Protected Sub ButtonUpdateYear_Click(sender As Object, e As EventArgs) Handles ButtonUpdateYear.Click
        If TextBoxYear.Text Is Nothing Then
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Year Cant Be Empty')</script>")
        Else
            Dim newUser As String
            newUser = Session("NEWUSER")


            Dim constr As String = ConfigurationManager.ConnectionStrings("StudentDBConnectionString").ConnectionString
            Dim con As New SqlConnection(constr)
            Dim cmd As New SqlCommand("UPDATE STUDENTS YEAR = @year WHERE USERNAME = @newUser")

            cmd.Parameters.AddWithValue("@year", TextBoxYear.Text)
            cmd.Parameters.AddWithValue("@newUser", newUser)
            Dim sda As New SqlDataAdapter

            cmd.Connection = con
            con.Open()


            Dim rows As Integer
            rows = cmd.ExecuteNonQuery()


            If rows > 0 Then
                Session("NEWUSER") = newUser
                Session("YEAR") = TextBoxYear.Text
                Response.Redirect("RegisterDetails.aspx")
            Else
                ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Registration Failed')</script>")
            End If


        End If

    End Sub


    Protected Sub ButtonDeleteStudent_Click(sender As Object, e As EventArgs) Handles ButtonDeleteStudent.Click
        Dim newUser As String
        newUser = Session("NEWUSER")


        Dim constr As String = ConfigurationManager.ConnectionStrings("StudentDBConnectionString").ConnectionString
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand("DELETE FROM STUDENTS WHERE USERNAME = @newUser")

        cmd.Parameters.AddWithValue("@newUser", newUser)
        Dim sda As New SqlDataAdapter

        cmd.Connection = con
        con.Open()


        Dim rows As Integer
        rows = cmd.ExecuteNonQuery()


        If rows > 0 Then
            Response.Redirect("RegisterLists.aspx")
        Else
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Delete Failed')</script>")
        End If

    End Sub

End Class