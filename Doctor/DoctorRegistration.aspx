<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DoctorRegistration.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 600px;
            border:2px solid gray;
        }
        .auto-style2 {
            font-weight: bold;
            width: 137px;
        }
        .auto-style3 {
            width: 227px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td colspan="2">
                <center>
                    <b>Doctor Registration Form</b></center>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvName" runat="server" ErrorMessage=" Name is Required" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvAdd" runat="server" ErrorMessage="*Address Required" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style2">Email:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvEmail" runat="server" ErrorMessage="**Email Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RevEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">UserName:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="*Username Required" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ErrorMessage="*Password Required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CvPassword" runat="server" ErrorMessage="Password do not match" ForeColor="Red" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">NMCRegistration Number:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtNmcReg" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*NMC Registration number is Required" ControlToValidate="txtNmcReg" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style2">Charges:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtCharge" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCharge" runat="server" ErrorMessage="*Charge is required" ControlToValidate="txtCharge" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DdlGender" runat="server">
                    <asp:ListItem Text="Select Gender"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                    <asp:ListItem Text="female" Value="2"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RfvGender" runat="server" ErrorMessage="*Gender Required" ControlToValidate="DdlGender" ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td colspan="2">
                <center>
                    <br />
                    <br />
                    <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click"></asp:Button>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                    <br />
                    <asp:Label ID="Lbl1" runat="server" Text="Label"></asp:Label>
                </center>
            </td>
        </tr>
    </table>

</asp:Content>

