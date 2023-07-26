Imports System.Data
Imports System.Data.OleDb
Imports System.Windows.Forms

Partial Class disease
    Inherits System.Web.UI.Page
    Dim objDB As New adminClass.admin
    Dim stringqry As String
    Sub ViewData()
        Try
            Dim dtLogin As New DataTable
            dtLogin = objDB.getDataTable("Select Distinct DiseaseName,Symptoms from tblDiseaseDB")
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

    Protected Sub btnUpload_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpload.Click

        btnRemove_Click(sender, e)
        Preprocessing()
        ViewData()
    End Sub

    Protected Sub btnRemove_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRemove.Click
        objDB.exeQuery("Truncate table tblDiseaseDB")
        ViewData()
        lblStatus1.Text = ""
    End Sub
    Sub Preprocessing()
        Try
            Dim i As Integer = 0
            Dim DtTbl As New DataTable
            Dim excelPath As String = Server.MapPath("dataset\Disease_DataSet.xls")

            ' Dim excelPath As String = System.IO.Path.GetFullPath("..\..\HeartDataset.xls")
            Dim excelConnectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & excelPath & ";Extended Properties=""Excel 8.0;HDR=YES;"""

            Dim excelConnection As New OleDbConnection()
            excelConnection = New OleDbConnection(excelConnectionString)
            excelConnection.Open()
            'Dim cmd As New OleDbCommand("Select [Disease],[symptoms] from [Sheet1$]", excelConnection)
            'Dim dReader As OleDbDataReader
            'dReader = cmd.ExecuteReader()
            Dim OleDBadp As New OleDbDataAdapter
            OleDBadp = New OleDbDataAdapter("Select [Disease],[symptoms] from [Sheet1$]", excelConnection)
            OleDBadp.Fill(DtTbl)
            'Dim sqlBulk As New SqlBulkCopy(strConnection)
            'sqlBulk.DestinationTableName = "tblExcelFile"
            ''sqlBulk.WriteToServer(dReader)

            For i = 0 To DtTbl.Rows.Count - 1
                Dim disease As String = DtTbl.Rows(i).Item(0).ToString.Trim
                Dim symptoms As String = DtTbl.Rows(i).Item(1).ToString.Trim

                If Len(symptoms) > 1 Then
                    Dim Sql As String = "insert into tblDiseaseDB values('" & disease & "','" & symptoms & "')"
                    objDB.exeQuery(Sql)
                End If
            Next
            excelConnection.Close()
            Dim qry As String = "SELECT * FROM tblDiseaseDB  order by  DiseaseId"
            stringqry = qry
            DtTbl = objDB.getDataTable(qry)
            gvDisease.DataSource = Nothing
            lblStatus.Text = "No Record Found"
            If (DtTbl.Rows.Count > 0) Then
                gvDisease.DataSource = DtTbl
                lblStatus.Text = DtTbl.Rows.Count & " Records Found"
            End If
            gvDisease.DataBind()

            lblStatus1.Text = "Disease Dataset Uploading Successfully"
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub


    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        If txtSearch.Text <> "" Then
            stringqry = "Select Distinct DiseaseName,Symptoms from tblDiseaseDB Where DiseaseName like '%" + txtSearch.Text.Trim + "%' "
            ViewData(stringqry)
        End If
    End Sub

    Protected Sub chkView_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkView.CheckedChanged
        If chkView.Checked = True Then
            txtSearch.Text = ""
            stringqry = "Select Distinct DiseaseName,Symptoms from tblDiseaseDB"
            ViewData(stringqry)
        End If
    End Sub
    Sub ViewData(ByVal strqry As String)
        Try

            If strqry = "" Then
                strqry = "Select Distinct DiseaseName,Symptoms from tblDiseaseDB"
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
        If txtSearch.Text = "" Then
            stringqry = "Select Distinct DiseaseName,Symptoms from tblDiseaseDB"
        Else
            stringqry = "Select Distinct DiseaseName,Symptoms from tblDiseaseDB Where DiseaseName like '%" + txtSearch.Text.Trim + "%' "
        End If
        ViewData(stringqry)

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
