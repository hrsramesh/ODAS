<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="PatientProfile.aspx.cs" Inherits="Patient_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 260px;
        }
        </style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
   






<center>
<fieldset style="width:65%"><legend><span style="font-family: 'Estrangelo Edessa'; font-size: x-large; color: #FFFFFF;">Search by</span></legend>
     <table class="auto-style1">
         <tr>
             <td class="auto-style2">
                 <asp:Button ID="btnByName" runat="server" BackColor="#99CCFF" BorderColor="#99CCFF" BorderStyle="Groove" Font-Names="Engravers MT" Font-Size="Large" ForeColor="White" Height="38px" Text="Doctor" Width="214px" />
             </td>
             <td rowspan="2">
                 <asp:DropDownList ID="ddlSearchbyDoctor" runat="server" Height="40px" Width="200px" BackColor="#CCFFCC" ForeColor="Blue" AppendDataBoundItems="true">
                     <asp:ListItem Text="--Select a Doctor--"></asp:ListItem>
                    
                 </asp:DropDownList>
                 <br />
                 <br />
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                 <asp:Button ID="btnSearchDocName" runat="server" Text="Search" BackColor="#66CCFF" BorderStyle="Outset" Font-Names="Estrangelo Edessa" Font-Size="Large" ForeColor="White" Height="35px" style="margin-top: 0px" Width="107px" OnClick="btnSearchDocName_Click" />
                 <br />
             </td>
         </tr>
         <tr>
             <td class="auto-style2">
                 <br />
                 <asp:Button ID="btnByHospital" runat="server" BackColor="#99CCFF" BorderColor="#99CCFF" BorderStyle="Groove" Font-Names="Engravers MT" Font-Size="Large" ForeColor="White" Height="38px" Text="Hospital" Width="214px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style2">
                 <br />
                 <asp:Button ID="btnBySpeciality" runat="server" BackColor="#99CCFF" BorderColor="#99CCFF" BorderStyle="Groove" Font-Names="Engravers MT" Font-Size="Large" ForeColor="White" Height="38px" Text="Speciality" Width="214px" />
             </td>
             <td>
                 <br />
             </td>
         </tr>
    </table>

     </fieldset> </center>
    
     
</asp:Content>
    

