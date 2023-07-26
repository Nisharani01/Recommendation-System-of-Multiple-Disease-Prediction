Imports System.Windows.Forms

Partial Class patientRegis
    Inherits System.Web.UI.Page
    Dim objDB As New adminClass.admin
     Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Try

            Dim rnd As New Random

            Dim Password As String = rnd.Next(10000, 99999)

            Dim status As Boolean = objDB.exeQuery("INSERT INTO [tblUserReg] ([UsrName],[Sex],[Age],[PasWord],[EmailId],[MobileNo],[CityName]) VALUES ('" + ttxName.Text + "','" + ddlSex.SelectedItem.ToString + "'," + txtAge.Text + ",'" + Password + "','" + txtMail.Text.Trim + "','" + txtMobile.Text + "','" + txtCity.Text + "')")

            If (status = True) Then
                '  mail.Mail(txtMail.Text, ttxName.Text, Password)
                lblStatus.Text = "Patient Information Saved." + Environment.NewLine + "Your Password : " & Password

            Else
                lblStatus.Text = "The Registeration Process does not completed !"
            End If
            ResetAll()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        ResetAll()
        lblStatus.Text = ""
    End Sub

    Sub ResetAll()
        ttxName.Text = ""
        txtAge.Text = ""
        txtAddress.Text = ""
        txtCity.Text = ""
        txtMail.Text = ""
        txtMobile.Text = ""
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            ttxName.Focus()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
