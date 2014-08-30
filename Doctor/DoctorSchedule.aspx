<%@ Page Title="" Language="C#" MasterPageFile="DoctorMasterPage.master" AutoEventWireup="true" CodeFile="DoctorSchedule.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <br />
    <asp:Button ID="btnSchedule" runat="server" Text="Add New Schedule" OnClick="btnSchedule_Click" />
</asp:Content>

