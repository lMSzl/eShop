Public Class Login
    Inherits System.Web.UI.Page



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("Login") = False

        If GridView3.Rows.Count = 1 Then
            Session("login") = True

            Response.Redirect("Catalogue.aspx")
        End If


    End Sub
End Class