<%@ Page Title="" Language="C#" MasterPageFile="~/Hospital/hosptial.master" AutoEventWireup="true" CodeFile="HospitalInformation.aspx.cs" Inherits="Hospital_Default2" %>

<%@ Register src="../WebUserControl/Specialization.ascx" tagname="Specialization" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 166px;
        }
    .auto-style3 {
        width: 122px;
    }
    .auto-style4 {
        width: 122px;
        height: 23px;
    }
    .auto-style5 {
        height: 23px;
    }
    .auto-style6 {
        height: 23px;
        width: 284px;
    }
    .auto-style7 {
        width: 284px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="width:65%"><legend><strong>Hospital Details</strong></legend>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Hospital Name</td>
                <td>
                    <asp:TextBox ID="txtHospitalName" runat="server" Width="441px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Location</td>
                <td>
                    <asp:TextBox ID="txtHospitalLocation" runat="server" Width="441px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Registration Number</td>
                <td>
                    <asp:TextBox ID="txtHospitalRegNo" runat="server" Width="441px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone no</td>
                <td>
                    <asp:TextBox ID="txtHospitalPhone" runat="server" Width="441px"></asp:TextBox>
                </td>
           
        </table>    </fieldset>
         </tr>

      
                    <br />

      
                    <br />
    <uc1:Specialization ID="Specialization1" runat="server" />
    <br />
    <br />
    <br />
   
       

      
                    <asp:Button ID="btnSaveHospDetails" runat="server" Text="Save" OnClick="btnSaveHospDetails_Click" /></td>
             

    
</asp:Content>

