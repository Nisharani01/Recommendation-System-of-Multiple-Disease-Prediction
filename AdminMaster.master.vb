
Partial Class AdminMaster
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("admin").ToString.Length = 0 Then
                Response.Redirect("adminLogin.aspx")
            End If
        Catch ex As Exception
            Response.Redirect("adminLogin.aspx")
        End Try

    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Try
            Session.Clear()

            Response.Redirect("Default.aspx")

        Catch ex As Exception

        End Try
    End Sub
End Class

