Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.ComponentModel
Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonRegister_Click(sender As Object, e As EventArgs) Handles ButtonRegister.Click
        If TextBoxIndexNumber.Text = Nothing & TextBoxName.Text = Nothing & TextBoxGender.Text = Nothing & TextBoxUsername.Text = Nothing & TextBoxPassword.Text = Nothing & TextBoxAge.Text = Nothing & TextBoxEmail.Text = Nothing & TextBoxCourse.Text = Nothing & TextBoxYear.Text = Nothing Then
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('All fiels are Required')</script>")

        Else

            If TextBoxPassword.Text = TextBoxConfirmPassword.Text Then

                If TextBoxAge.Text >= 21 & TextBoxAge.Text <= 40 Then

                    Dim constr As String = ConfigurationManager.ConnectionStrings("StudentDBConnectionString").ConnectionString
                    Dim con As New SqlConnection(constr)
                    Dim cmd As New SqlCommand("INSERT INTO STUDENTS (INDEXNUMBER, NAME, GENDER, USERNAME, PASSWORD, AGE, EMAIL_ID, COURSE, YEAR)
VALUES (@indexNumber, @name, @gender, @username, @password, @age, @email, @course, @year)")
                    cmd.Parameters.AddWithValue("@indexNumber", TextBoxIndexNumber.Text)
                    cmd.Parameters.AddWithValue("@name", TextBoxName.Text)
                    cmd.Parameters.AddWithValue("@gender", TextBoxGender.Text)
                    cmd.Parameters.AddWithValue("@username", TextBoxUsername.Text)
                    cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text)
                    cmd.Parameters.AddWithValue("@age", TextBoxAge.Text)
                    cmd.Parameters.AddWithValue("@email", TextBoxEmail.Text)
                    cmd.Parameters.AddWithValue("@Course", TextBoxCourse.Text)
                    cmd.Parameters.AddWithValue("@year", TextBoxYear.Text)
                    Dim sda As New SqlDataAdapter

                    cmd.Connection = con
                    con.Open()


                    Dim rows As Integer
                    rows = cmd.ExecuteNonQuery()


                    If rows > 0 Then
                        Session("NEWUSER") = TextBoxUsername.Text
                        Session("YEAR") = TextBoxYear.Text
                        Response.Redirect("RegisterDetails.aspx")
                    Else
                        ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Registration Failed')</script>")
                    End If

                Else
                    ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Not In Age Range')</script>")
                End If

            Else
                ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Password does not match')</script>")
            End If

        End If
    End Sub
End Class