<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ScheduleControl.ascx.cs" Inherits="UserControl_ScheduleControl" %>


<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 196px;
        font-weight:bold;
    }
    .auto-style4 {
        height: 26px;
    }
    .auto-style5 {
        height: 53px;
    }
    .auto-style6 {
        height: 26px;
        width: 42px;
    }
</style>


<p>
    &nbsp;</p>
<fieldset style="width:400px">
    <legend><h3>Schedule</h3></legend>
    

  <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblHos" runat="server" Text="Hospital:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlHospital" runat="server" Height="16px" Width="171px" AppendDataBoundItems="true">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblspec" runat="server" Text="Service/Specialization:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlspec" runat="server" AppendDataBoundItems="true" Height="20px" Width="169px">
                    
                </asp:DropDownList>
            </td>
        </tr>
         </table>
    <table>
        <tr>
            <td colspan="8" class="auto-style5">
                <fieldset style="width:250px">
            
                <legend><b>Schedule Type</b></legend>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem Text="Daily" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Weekly" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Monthly" Value="3"></asp:ListItem>
                </asp:RadioButtonList>
            </fieldset>
                </td>
            
        </tr>
        <tr>
            <td colspan="8">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                    <fieldset style="width:600px">
    <legend><b>Select Day</b></legend>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                             <asp:ListItem Text="Sunday" Value="1"></asp:ListItem>
    <asp:ListItem Text="Monday" Value="2"></asp:ListItem>
    <asp:ListItem Text="Tuesday" Value="3"></asp:ListItem>
    <asp:ListItem Text="Wednesday" Value="4"></asp:ListItem>
    <asp:ListItem Text="Thursday" Value="5"></asp:ListItem>
    <asp:ListItem Text="Friday" Value="6"></asp:ListItem>
    <asp:ListItem Text="Saturday" Value="7"></asp:ListItem>
                        </asp:CheckBoxList>
                       <%-- <asp:CheckBox runat="server" ID="chkSunday" Text="Sunday" />
                        <asp:CheckBox runat="server" Text="Monday" ID="chkMonday" />
                        <asp:CheckBox runat="server" Text="Tuesday" ID="chkTuesday" />
                        <asp:CheckBox runat="server" Text="Wednesday" ID="chkWednesday" />
                         <asp:CheckBox runat="server" Text="Thursday" ID="chkThursday" />
                         <asp:CheckBox runat="server" Text="Friday" ID="chkFriday" />
                         <asp:CheckBox runat="server" Text="Saturday" ID="chkSaturday" />--%>

                        
    </fieldset>
                </asp:PlaceHolder>
                </td>
        </tr>
        <tr>
           
            <td colspan="8">
                <asp:Label ID="lblTime" runat="server" Text="Time:" Font-Bold="true"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>From:</b>
                
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlTime" runat="server" Height="16px" Width="40px">
                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                     <asp:ListItem Text="2" Value="2"></asp:ListItem>
                     <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlFrom" runat="server" Height="17px" Width="49px">
                    <asp:ListItem Text="AM" Value="1"></asp:ListItem>
                    <asp:ListItem Text="PM" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4"><b>To:</b></td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlTo" AutoPostBack="true" runat="server" Height="17px" Width="36px" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged1">
                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                     <asp:ListItem Text="2" Value="2"></asp:ListItem>
                     <asp:ListItem Text="3" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlToo" runat="server" Height="16px" Width="44px">
                    <asp:ListItem Text="AM" Value="1"></asp:ListItem>
                    <asp:ListItem Text="PM" Value="2"></asp:ListItem>
                </asp:DropDownList>
                
            </td>
            <td class="auto-style4">
                <b>Hours:</b>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtHours" runat="server" Height="16px" Width="34px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="5" align="center">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="62px" />
            </td>
         
        </tr>
    </table>
    

   







</fieldset>


