Public Class Catalogue
    Inherits System.Web.UI.Page



    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim rownum As Integer
        rownum = GridView1.SelectedIndex
        Session("ProductID") = GridView1.Rows(rownum).Cells(1).Text
        Session("Model") = GridView1.Rows(rownum).Cells(2).Text

        SqlDataSource2.Insert()


    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("login") = False Then
            Response.Redirect("login.aspx")

        End If

    End Sub
End Class