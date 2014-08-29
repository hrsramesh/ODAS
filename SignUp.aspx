<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Presentation_SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width:100%;
        }
        .auto-style3 {
            width: 284px;         
            font-family: "Segoe UI";
            font-size: large;
            color: #FFFFFF;
            height: 54px;
        }
        .auto-style5 {
            width: 284px;
            color: #6699FF;
            height: 54px;
        }
        .newStyle1 {
            font-family: "Segoe UI";
            font-size: large;
        }
        .newStyle2 {
            color: #FFFFFF;
            font-family: "Segoe UI";
        }
        .newStyle3 {
            font-size: large;
        }
        .newStyle4 {
            font-family: "Segoe UI";
            font-size: large;
        }
        .newStyle5 {
            font-family: "Segoe UI";
            color: #FFFFFF;
            font-size: large;
        }
        .newStyle6 {
            font-family: "Segoe UI";
            color: #000000;
        }
        .auto-style6 {
            width: 374px;
            height: 54px;
        }
        .auto-style7 {
            width: 284px;
            height: 54px;
        }
    </style>
    
</asp:Content>



<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
         <asp:Label ID="Label1" runat="server" Text="
              Sign Up. It's free.
             &lt;br /&gt;" Font-Size="XX-Large"></asp:Label> <br /><br />
         <asp:Label ID="Label2" runat="server" Text="
                 Experience for better." Font-Size="X-Large"> </asp:Label>
    </center>
   
</asp:Content>
<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <fieldset style="border-color:rgba(222, 209, 209, 0.95); border-style: groove; width:350px; font-size: large; font-weight: normal; height:auto;">
        <legend class="newStyle3">
          <b><h3>Sign up form</h3>
        </legend>
        
        <table class="auto-style1" style="width: 524px">
            <tr class="newStyle3">
                <td class="auto-style5"><span class="newStyle2">User Name</span></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtUserName" runat="server"  AutoPostBack="true" Height="27px" Width="187px" OnTextChanged="txtUserName_TextChanged" ></asp:TextBox>
                    <asp:Label ID="lblUser" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="27px" Width="187px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"><span class="newStyle5">Confirm Password</span></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password" Height="27px" Width="187px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
        </table><br /><br />
       <center> <fieldset style="border-style: solid; width:250px">
            <legend><b class="newStyle6" style="color:#3B5564">Sign Up As</b></legend>           
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="18px" RepeatDirection="Horizontal" Width="216px" Font-Names="Segoe UI Symbol" ForeColor="White">
                <asp:ListItem Text="Patient" Value="1"></asp:ListItem>
                <asp:ListItem Text="Doctor" Value="2"></asp:ListItem>
                <asp:ListItem Text="Hospital" Value="3"></asp:ListItem>
            </asp:RadioButtonList>
           
        </fieldset></center>

        <br />
        <center>
        <asp:Button ID="btnSubmit" runat="server" Text="Sign Up" Height="40px" Width="112px" OnClick="btnSubmit_Click" BackColor="#006699" Font-Bold="True" Font-Names="Segoe UI" Font-Overline="False" ForeColor="White" />
            <br />
            </center>
    
        </br>
        </b>
    </fieldset>
</asp:Content>

 

