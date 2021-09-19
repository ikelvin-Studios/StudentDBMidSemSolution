Public Class StudentsList
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        BindGrid()
    End Sub
    Protected Sub BindGrid()
        Dim service As New WebService
        StudentsGridView.DataSource = service.GetDetails()
        StudentsGridView.DataBind()
    End Sub


End Class