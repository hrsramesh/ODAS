<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DoctorMasterPage.master" AutoEventWireup="true" CodeFile="DocProfile.aspx.cs" Inherits="Doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:PlaceHolder ID="PhPersonalDetail" runat="server"></asp:PlaceHolder>
    
         <asp:Repeater ID="Repeater1" runat="server">
             
             <ItemTemplate>
                 <table border="0">
                     <tr>
                         <td style="width:200px">
                             <asp:Image ID="imgDoctor" ImageUrl='<%# Eval("Doc_Image") %>' runat="server" AlternateText="Couldn't upload"/>

                         </td>
                         <td style="width:200px">
                             <table>
                                 <tr>
                                     <td>
                                        <b> Id:</b>
                                        
                                     </td>
                                     <td>
                                         <asp:Label ID="lblId" runat="server" Text='<%# Eval("Doc_Id") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <b>FirstName:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblFname" runat="server" Text='<%# Eval("Doc_Fname") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                        <b>LastName:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblLname" runat="server" Text='<%# Eval("Doc_Lname") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                        <b>Address:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblAddress" runat="server" Text='<%# Eval("Doc_Address") %>'></asp:Label>
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                        <b>Email:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Doc_Email") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <b>Gender:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Doc_Gender") %>'></asp:Label>
                                     </td>
                                 </tr>
                                  <tr>
                                     <td>
                                     <b>Date of Birth:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblDob" runat="server" Text='<%# Eval("Doc_Dob") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <b>NMC Registration No:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblNmc" runat="server" Text='<%# Eval(" Doc_NMC_Reg") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <b>Charges:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblCharge" runat="server" Text='<%# Eval(" Doc_Charges") %>'></asp:Label>
                                     </td>
                                 </tr>
                                 <td>
                                         <b>User Name:</b>
                                     </td>
                                     <td>
                                         <asp:Label ID="lblUname" runat="server" Text='<%# Eval(" U_Name") %>'></asp:Label>
                                     </td>
                                 </tr>
                                
                             </table>
                             </td>
                     </tr>
                 </table>
             </ItemTemplate>
    </asp:Repeater>


   
    <br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <asp:Button ID="Button2" runat="server" Text="Add Another Professional Details" OnClick="Button2_Click" />
</asp:Content>

