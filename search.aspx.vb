Imports System.Data
Imports System.Windows.Forms
Imports System.Net.Mail

Partial Class search
    Inherits System.Web.UI.Page
    Dim objDB As New adminClass.admin
    Dim qry As String = ""
    Dim dTbl As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If (Session("plog").ToString.Length > 0) Then
                lblUser.Text = Session("plog").ToString()
                If IsPostBack = False Then
                    SymptomList()
                    resetControl()
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

    Sub SymptomList()
        Try

            Dim dtDisease As New DataTable
            dtDisease = objDB.getDataTable("Select Distinct Symptoms from tblDiseaseDB")

            ddlSymptom.DataSource = dtDisease
            ddlSymptom.DataTextField = "Symptoms"
            ddlSymptom.DataBind()

        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub


    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Try
            If ddlSymptom.SelectedIndex > -1 And ddlSymptom.Items.Count > 0 Then
                lstSymptom.Items.Add(ddlSymptom.SelectedItem.ToString)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub

 
     

    Sub resetControl()

        lblDisease.Text = "" 
        gvHospital.DataSource = Nothing
        gvHospital.DataBind()

        gvDisease.DataSource = Nothing
        gvDisease.DataBind()

    End Sub
 

    Sub viewHospital()
        Try
            Dim dtDisease As New DataTable
            Dim dTbl As New DataTable
            Dim dTbl2 As New DataTable
            Dim frCnt As Integer = 0
            Dim qry As String = "select Distinct [Hospital],[Address],[MobileNo] , Emailid  from tblHospitalReg where Disease like '%" + lblDisease.Text + "%'"
            dtDisease = objDB.getDataTable(qry)


            gvHospital.DataSource = dtDisease
            gvHospital.DataBind()


        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub

    Protected Sub gvHospital_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gvHospital.PageIndexChanging
        gvHospital.PageIndex = e.NewPageIndex
        viewHospital()
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gvDisease.PageIndexChanging
        gvDisease.PageIndex = e.NewPageIndex

    End Sub


    Protected Sub btnPredict_Click(sender As Object, e As EventArgs) Handles btnPredict.Click
        Try

            If lstSymptom.Items.Count > 0 Then

        

        resetControl()
        Dim dtDisease As New DataTable
        Dim strqry As String = ""

        For i As Integer = 0 To lstSymptom.Items.Count - 1
            strqry &= "'" + lstSymptom.Items(i).ToString() + "',"
        Next

            strqry = Mid(strqry, 1, Len(strqry) - 1)

            qry = "drop table Report2"
            objDB.exeQuery(qry)

            qry = "Select  DiseaseName, count(DiseaseName) as [Matching], (convert(float,convert(float,(count(DiseaseName))/convert(float,(select count(DiseaseName) as [priority] from tblDiseaseDB where DiseaseName=d.DiseaseName group by DiseaseName))))*100) as priority into Report2  from tblDiseaseDB d where symptoms in (" + strqry + "'') group by DiseaseName order by Matching desc,priority desc"
            objDB.exeQuery(qry)

            qry = "truncate table Report2"
            objDB.exeQuery(qry)


            objDB.exeQuery("drop table tblResult1")
            qry = ""
            qry = "Select  DiseaseName, Count(DiseaseName) as Matching, (convert(float,convert(float,(count(DiseaseName))/convert(float,(select count(DiseaseName)  from tblDiseaseDB where DiseaseName= d.DiseaseName group by DiseaseName))))) as Priority into tblResult1 from tblDiseaseDB d where symptoms in (" & strqry & ") group by DiseaseName order by Matching desc, Priority desc"
            objDB.exeQuery(qry)

            qry = "Select * from tblResult1"
            dtDisease = objDB.getDataTable(qry)

            Dim frCnt As Integer = 0
            Dim prob As Decimal = 0
            If dtDisease.Rows.Count > 0 Then

                For frCnt = 0 To dtDisease.Rows.Count - 1
                    qry = ""
                    dTbl = New DataTable
                    qry = "Select  count(*) from tblDiseaseDB where DiseaseName = '" & dtDisease.Rows(frCnt).Item(0).ToString.Trim & "'"
                    dTbl = objDB.getDataTable(qry)

                    If dTbl.Rows.Count > 0 Then
                        prob = 0
                        prob = (CDec(dtDisease.Rows(frCnt).Item(2).ToString.Trim) * CInt(dtDisease.Rows(frCnt).Item(1).ToString.Trim)) / dTbl.Rows(0).Item(0).ToString.Trim
                        prob *= 100
                        qry = "insert into Report2 values ('" & dtDisease.Rows(frCnt).Item(0).ToString.Trim & "' , " & dtDisease.Rows(frCnt).Item(1).ToString.Trim & " , " & prob & ")"
                        objDB.exeQuery(qry)
                    End If
                Next
            End If


            qry = "Select DiseaseName, Matching from Report2 order by Priority desc"
            dtDisease = objDB.getDataTable(qry)


            If dtDisease.Rows.Count > 0 Then
                gvDisease.DataSource = dtDisease
                gvDisease.DataBind()

                lblDisease.Text = dtDisease.Rows(0).Item(0).ToString()
            End If

                viewHospital()
            Else
                Response.Write("<script>alert('Input Not found...')</script>")
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub

    Protected Sub btnRemoveSymp_Click(sender As Object, e As EventArgs) Handles btnRemoveSymp.Click
        Try
            If (lstSymptom.Items.Count > 0) And lstSymptom.SelectedIndex > -1 Then
                lstSymptom.Items.RemoveAt(lstSymptom.SelectedIndex)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message)
        End Try
    End Sub
End Class
