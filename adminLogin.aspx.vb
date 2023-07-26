
Partial Class adminLogin
    Inherits System.Web.UI.Page

    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        If Login1.UserName = "admin" And Login1.Password = "admin" Then
            Session("admin") = "Admin"
            Response.Redirect("admin.aspx")
        End If
    End Sub
End Class
