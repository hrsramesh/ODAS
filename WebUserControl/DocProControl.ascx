<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DocProControl.ascx.cs" Inherits="UserControl_DocProControl" %>
<style type="text/css">
    .auto-style1 {
        width: 99%;
    }
    .auto-style2 {
        width: 294px;
        font-weight:bold;
    }
    .auto-style3 {
        width: 550px;
    }
    .auto-style5 {
        width: 550px;
        height: 26px;
    }
    .auto-style6 {
        width: 294px;
        font-weight: bold;
        height: 26px;
    }
</style>

                 <fieldset style="width:600px">
        <legend><h3>Professional Details</h3></legend>

<p>
    
<table class="auto-style1">
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblSpec" runat="server" Text="Specialization:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:DropDownList ID="ddlSpec" runat="server" Height="24px" Width="147px" AppendDataBoundItems="true" AutoPostBack="true">
                <asp:ListItem Value="-1" Text="--Select Specialization--"></asp:ListItem>
             
            </asp:DropDownList>
            <asp:Button ID="btnAddNew" runat="server" Text="Add New"/>
                                 
                                 <asp:TextBox ID="txtSpec" runat="server" ToolTip="Add New Specialization" OnTextChanged="txtSpec_TextChanged" AutoPostBack="true"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblDegree" runat="server" Text="Degree:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtDegree" runat="server" Width="151px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblUni" runat="server" Text="University/Board:"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:TextBox ID="txtUniversity" runat="server" Width="149px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblCharge" runat="server" Text="Charge:"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtCharge" runat="server" Width="149px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <center>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Width="71px" />
                </center>
        </td>
        
    </tr>
</table>
         </fieldset>

