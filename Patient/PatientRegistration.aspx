<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="PatientRegistration.aspx.cs" Inherits="Patient_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table class="auto-style1">
        <tr>
            <td colspan="2"><center><b>Patient Registration Form</b></center></td>
            
        </tr>
        <tr>
            <td class="auto-style2">First Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvFirstName" runat="server" ErrorMessage="* First Name is Required" ControlToValidate="txtFname" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Last Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RfvLName" runat="server" ErrorMessage="**Last Name Required" ControlToValidate="txtLname" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style2">Address:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage="*Address Required" ControlToValidate="txtLname" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <asp:TextBox ID="txtUserName" runat="server" OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="*User Name Required" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <td class="auto-style2">Age:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDob" runat="server" ErrorMessage="*DOB required" ControlToValidate="txtAge" ForeColor="Red"></asp:RequiredFieldValidator>
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

