Imports System.Data
Imports System.Windows.Forms

Partial Class patientLogin
    Inherits System.Web.UI.Page
    Dim objDB As New adminClass.admin
    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate

        Try
            Dim dtLogin As New DataTable
            Dim UserName As String
            dtLogin = objDB.getDataTable("Select * from tblUserReg Where (EmailId='" + Login1.UserName + "' or MobileNo='" + Login1.UserName + "')  and PasWord='" + Login1.Password + "'")
            If (dtLogin.Rows.Count > 0) Then
                UserName = dtLogin.Rows(0).Item("UsrName")
                Session("plog") = UserName
                Session("pmlog") = Login1.UserName
                Response.Redirect("search.aspx")
            End If
        Catch ex As Exception
            ' MessageBox.Show(ex.Message)
        End Try

    End Sub
End Class
