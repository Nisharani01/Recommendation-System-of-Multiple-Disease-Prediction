Imports System.Data

Partial Class Profile
    Inherits System.Web.UI.Page
    Dim objDB As New adminClass.admin
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If (Session("plog").ToString.Length > 0) Then
                lblUser.Text = Session("plog").ToString()
                If IsPostBack = False Then
                    Dim dtDisease As New DataTable
                    dtDisease = objDB.getDataTable("SELECT [UsrName],[Sex],[Age],[EmailId],[MobileNo],[CityName]  FROM [tblUserReg] Where [UsrName]='" + Session("plog").ToString + "' and ([MobileNo]='" + Session("pmlog").ToString + "' or [EmailId]='" + Session("pmlog").ToString + "')")

                    dvProfile.DataSource = dtDisease
                    dvProfile.DataBind()
                End If
            Else
                Response.Redirect("patientLogin.aspx")
            End If
        Catch ex As Exception
            Response.Redirect("patientLogin.aspx")
        End Try

       
    End Sub

    Protected Sub btnLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Session.Abandon()
        Session.Clear()
        Response.Redirect("patientLogin.aspx")
    End Sub
End Class
