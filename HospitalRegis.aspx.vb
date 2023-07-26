Imports System.Windows.Forms

Partial Class HospitalRegis
    Inherits System.Web.UI.Page
    Dim objDB As New adminClass.admin

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Try

            Dim status As Boolean = objDB.exeQuery("INSERT INTO [tblHospitalReg] ([Hospital],[Doctor],[Address],[EmailId],[MobileNo],[Disease]) VALUES ('" + txtHospital.Text + "','" + txtDoctor.Text + "','" + txtAddress.Text + "','" + txtMail.Text.Trim + "','" + txtPhone.Text.Trim + "','" + txtDisease.Text + "')")

            If (status = True) Then
                '  mail.Mail(txtMail.Text, txtDoctor.Text)
                lblStatus.Text = "Hospital Information Saved."

            Else
                lblStatus.Text = "The Registeration Process does not completed !"
            End If
            ResetAll()
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub
    Sub ResetAll()
        txtDoctor.Text = ""
        txtHospital.Text = ""
        txtAddress.Text = ""
        txtAddress.Text = ""
        txtMail.Text = ""
        txtPhone.Text = ""
        txtDisease.Text = ""
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        ResetAll()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            txtDoctor.Focus()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
