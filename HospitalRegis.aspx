<%@ Page Title="" Language="VB" MasterPageFile="~/AdminMaster.master" AutoEventWireup="false" CodeFile="HospitalRegis.aspx.vb" Inherits="HospitalRegis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <p>
     <center>
    <asp:Label ID="Label19" runat="server" Text="Hospital Registration Details"  Font-Bold="True" Font-Size="Large"></asp:Label>
    </center>       
    <br /><br />
          <table border="2" cellpadding="2" cellspacing="2" 
               
               
               style="padding: inherit; margin: auto; border-style: double; height: 336px; width: 708px;">

                                        <tr>
                                            <td align="right" class="style3">
                                            </td>
                                            <td align="center" class="style4">  
                                            </td>
                                            <td class="style5">
                                               <blink> <asp:Label ID="lblStatus" runat="server" Font-Size="Small" ForeColor="#006600" 
                                                    Font-Bold="True"></asp:Label>
                                                    </blink>
                                            </td>
                                        </tr> 
                                        

                                        <tr>
                                            <td align="right" style="width:30%">
                                                Doctor
                                                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="txtDoctor" runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDoctor"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator> &nbsp;
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtDoctor" ValidationExpression="[a-zA-Z ]*$" ErrorMessage="*Valid characters: Alphabets and space." />
                                            </td>
                                        </tr> 
                                        

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label20" runat="server" Text="Hospital Name"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="txtHospital" runat="server" Width="357px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
                                                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHospital" 
                                                    ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator>
                                                                                    </td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%">
                                                <asp:TextBox ID="txtAddress" runat="server" Width="357px" 
                                                    Height="70px" TextMode="MultiLine"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
                                                    ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" 
                                                    ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator>
                                                                                    </td>
                                        </tr>

                                                                                <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label6" runat="server" Text="E~Mail"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%"><asp:TextBox ID="txtMail" runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtMail"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator> &nbsp;
                                                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtMail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                             </td>
                                        </tr>

<tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label7" runat="server" Text="Mobile No"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%; margin-left: 120px;"><asp:TextBox ID="txtPhone"  runat="server" Width="357px"></asp:TextBox>&nbsp;
                                                <asp:RequiredFieldValidator  ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone"  ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator> &nbsp;
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"   ControlToValidate="txtPhone" ErrorMessage="10 digits only accepted"   ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                            </td>
</tr>


                                        <tr>
                                            <td align="right" style="width:30%">
                                                <asp:Label ID="Label10" runat="server" Text="Handling Diseases (Comma Separated)"></asp:Label>
                                            </td>
                                            <td align="center" class="style2"> : 
                                            </td>
                                            <td style="width:60%; margin-left: 120px;"><asp:TextBox ID="txtDisease" 
                                                    runat="server" Width="357px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator 
                                                    ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDisease" 
                                                    ErrorMessage="*" ValidationGroup="plog"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                                                                                                        <tr>
                                            <td align="right" style="width:30%">
                                                
                                            </td>
                                            <td align="center" class="style2"> 
                                            </td>
                                            <td style="width:60%">
                                                <asp:Button ID="btnSave" runat="server" Text="Save" Width="66px" 
                                                    ValidationGroup="plog" />
                                                <asp:Button ID="btnClear"
                                                    runat="server" Text="Clear" style="margin-left: 39px" Width="60px" /></td>
                                        </tr>


                                  
                                    </table>
    

    </p>

</asp:Content>

