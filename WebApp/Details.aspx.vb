Public Class Details
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LabelUsername.Text = Session("USERNAME")
    End Sub

End Class