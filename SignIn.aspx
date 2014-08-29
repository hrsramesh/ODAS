<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Users_SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            color: #FFFFFF;
            font-family: "Segoe UI";
            height: 53px;
        }
        .auto-style4 {
            color: #FFFFFF;
            font-family: "Segoe UI";
            height: 53px;
            width: 108px;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-family: "Segoe UI";
            height: 54px;
            width: 108px;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-family: "Segoe UI";
            height: 54px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>  
     <fieldset style="border-color:rgba(222, 209, 209, 0.95); border-style: groove; width:350px; font-size: large; font-weight: normal; height:auto;">

        <legend><h3>Log In</h3></legend>
        <table class="auto-style1">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-weight: bold">User Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUser" runat="server" Height="27px" Width="187px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: bold">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Height="27px" Width="187px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <br />
                    <asp:Button ID="btnSignIn" runat="server" Text="Log In" OnClick="btnSignIn_Click" Height="40px" Width="112px" BackColor="#006699" Font-Bold="True" Font-Names="Segoe UI" Font-Overline="False" ForeColor="White" />
                </td>
            </tr>
        </table>
    </fieldset></center>

    <br />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><br /><br />
<asp:Label ID="Label2" runat="server" Text="
              Log In with us.
             &lt;br /&gt;" Font-Size="XX-Large"></asp:Label>
       <br /><br /> <asp:Label ID="Label3" runat="server" Text="
                 Don't have account ODAS account?" Font-Size="X-Large"> </asp:Label>
          <br /><br />
        <a href="SignUp.aspx" style="font-size: large; color: #3B5564;">Sign Up</a>
        <asp:Label ID="Label4" runat="server" Text="
                  now" Font-Size="Large"> </asp:Label>
    </center> 
    

    </asp:Content>