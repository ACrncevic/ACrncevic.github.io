<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Kontakt.aspx.cs" Inherits="WebApplication7.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 25px;
            width: 142px;
        }
        .auto-style4 {
            height: 23px;
            width: 142px;
        }
        .auto-style5 {
            width: 142px;
        }
        .auto-style9 {
            height: 25px;
            width: 27px;
        }
        .auto-style10 {
            height: 23px;
            width: 27px;
        }
        .auto-style11 {
            width: 27px;
        }
        .auto-style12 {
            height: 25px;
            width: 192px;
        }
        .auto-style13 {
            height: 23px;
            width: 192px;
        }
        .auto-style14 {
            width: 192px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Sadrzaj" runat="server">
    <br />
    <br />Naše osoblje će rado odgovoriti na vaša pitanja. Također, za sva vaša pitanja možete nam se ovdje javiti.
    <br />
    <br />
    <div class="tkontakt">
        <table>
        <tr>
            <td class="auto-style3"><asp:Label ID="Label1" runat="server" Text="Ime i prezime:" Font-Bold="False"></asp:Label></td>
            <td class="auto-style12"><asp:TextBox ID="txtime" runat="server"></asp:TextBox></td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtime" ErrorMessage="Ime ne smije biti prazno">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><asp:Label ID="Label3" runat="server" Text="E-mail adresa:" Font-Bold="False"></asp:Label></td>
            <td class="auto-style13"><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            <td class="auto-style10"> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Neispravna e-mail adresa" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:Label ID="Label2" runat="server" Text="Naslov poruke:" Font-Bold="False"></asp:Label></td>
            <td class="auto-style14"><asp:TextBox ID="txtnaslov" runat="server"></asp:TextBox></td>
            <td class="auto-style11"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Poruka mora sadržavati naslov" ControlToValidate="txtnaslov">*</asp:RequiredFieldValidator>
</td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:Label ID="Label4" runat="server" Text="Sadržaj poruke:" Font-Bold="False"></asp:Label></td>
            <td class="auto-style14"><asp:TextBox ID="txtporuka" runat="server" Height="99px" TextMode="MultiLine" Width="215px"></asp:TextBox></td>
            <td class="auto-style11"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Sadržaj poruke ne smije biti prazan" ControlToValidate="txtporuka">*</asp:RequiredFieldValidator></td>
        </tr>
            <tr>
                <td class="auto-style5"><asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" /></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style14"><br /><br /><asp:Button ID="Button1" runat="server" Text="Pošalji" Height="28px" Width="154px" Font-Names="KacstBook" OnClick="Button1_Click" /></td>
            </tr>
            </table>

    
    
    </div>
    
    <asp:Label ID="lblsubmit" runat="server" ></asp:Label>
    
    <br />
    <br />
</asp:Content>
