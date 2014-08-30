<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Specialization.ascx.cs" Inherits="Specialization" %>
<style type="text/css">
    .auto-style1 {
        width: 101%;
    }
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
    }
    .auto-style5 {
    }
    .auto-style6 {
        width: 136px;
    }
    .auto-style7 {
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
    }
</style>
<fieldset style="width:65%"><legend><strong>Hospital Services</strong></legend>
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">Specification</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnSpec" runat="server" Text="Add" />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Rate (NRs.)</td>
                <td class="auto-style7" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="106px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="3"><strong>Schedule</strong></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:RadioButton ID="rbtndaily" runat="server" Text="Daily" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:RadioButton ID="rbtnweekly" runat="server" Text="Weekly" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:RadioButton ID="rbtnmonthly" runat="server" Text="Monthly" />
                </td>
            </tr>
        </table>
        
    </fieldset>

      
                   