Imports System.Data
Imports System.Windows.Forms

Partial Class admin
    Inherits System.Web.UI.Page
    Dim objDB As New adminClass.admin
    Private stringqry As String = ""
    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        If txtSearch.Text <> "" Then
            stringqry = "Select Distinct [Hospital],[Doctor],[Address],[EmailId],[MobileNo],[Disease]  from tblHospitalReg  Where Hospital like '%" + txtSearch.Text.Trim + "%' "
            ViewData(stringqry)
        End If
    End Sub

    Protected Sub chkView_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkView.CheckedChanged
        If chkView.Checked = True Then
            stringqry = "Select Distinct [Hospital],[Doctor],[Address],[EmailId],[MobileNo],[Disease] from [tblHospitalReg]"
            ViewData(stringqry)
        End If
    End Sub

    Sub ViewData(ByVal strqry As String)

        Try
            If strqry = "" Then
                strqry = "Select Distinct [Hospital],[Doctor],[Address],[EmailId],[MobileNo],[Disease] from [tblHospitalReg]"
            End If
            Dim dtLogin As New DataTable
            dtLogin = objDB.getDataTable(strqry)
            lblStatus.Text = "No Records Found"
            gvDisease.DataSource = Nothing
            If dtLogin.Rows.Count > 0 Then

                gvDisease.DataSource = dtLogin
                lblStatus.Text = dtLogin.Rows.Count & " Records Found"
            End If
            gvDisease.DataBind()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub

    Protected Sub gvDisease_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gvDisease.PageIndexChanging
        gvDisease.PageIndex = e.NewPageIndex
        ViewData(stringqry)
    End Sub
End Class
