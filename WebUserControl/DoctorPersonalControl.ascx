<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DoctorPersonalControl.ascx.cs" Inherits="UserControl_DoctorPersonalControl" %>
<fieldset style="width:500px">
        <legend><h3>Personal Details</h3></legend>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblFname" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblLname" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Email required" ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
           
            
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server" Height="16px" Width="122px">
                        <asp:ListItem Text="Select Gender" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="Male" Value="1">
                        </asp:ListItem>
                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ControlToValidate="ddlGender" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
                 <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbldob" runat="server" Text="Date of Birth:"></asp:Label>
                     </td>
                <td>
                    <asp:DropDownList ID="ddlYear" runat="server" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged"></asp:DropDownList>
                    <asp:DropDownList ID="ddlMonth" runat="server" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged"></asp:DropDownList>
                    <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblNmc" runat="server" Text="NMC Registration No:"></asp:Label>
            </td>
                <td>
                    <asp:TextBox ID="txtNmcReg" runat="server"></asp:TextBox>
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblCharge" runat="server" Text="Charge:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtCharge" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lblImage" runat="server" Text="Image:"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    
                </td>
            </tr>
            
        </table>