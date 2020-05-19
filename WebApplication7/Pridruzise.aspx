<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Pridruzise.aspx.cs" Inherits="WebApplication7.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Sadrzaj" runat="server">
    <div class="tkontakt">
        
    <table id="pridruzi">
        <tr>
            <td><b>Osnovni podaci</b></td>
        </tr>
        <tr>
            <td>Broj osobne iskaznice</td>
            <td>
                <asp:TextBox ID="txtosobna" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Broj osobne iskaznice je obavezan." ControlToValidate="txtosobna">*</asp:RequiredFieldValidator>
                
            </td>

        </tr>
        <tr>
            <td>Ime i prezime</td>
            <td>
                <asp:TextBox ID="txtimeprezime" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ime ne smije biti prazno" Text="*" ControlToValidate="txtimeprezime"></asp:RequiredFieldValidator></td>

        </tr>

        <tr>
            <td>E-mail adresa: </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Neispravan oblik adrese." ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Text="*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="E-mail adresa nužna." ControlToValidate="txtemail" Text="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><b>Lokacija</b></td>
            <td><asp:DropDownList ID="dllokacija" runat="server" AutoPostBack="True" AppendDataBoundItems="True">
                <asp:ListItem>Odaberi lokaciju</asp:ListItem>
        <asp:ListItem>Zagreb</asp:ListItem>
        <asp:ListItem>Split</asp:ListItem>
        <asp:ListItem>Metković</asp:ListItem>
        </asp:DropDownList></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dllokacija" ErrorMessage="Lokacija mora biti odabrana" InitialValue="Odaberi lokaciju">*</asp:RequiredFieldValidator>
            </td>
        </tr>
            <td>Članarina </tr>
            <td>Članarina</td>
            <td>
                <asp:DropDownList ID="dlclanarina" runat="server" AutoPostBack="True">
                    <asp:ListItem>Odaberi članarinu</asp:ListItem>
                    <asp:ListItem>Mjesečna</asp:ListItem>
                    <asp:ListItem>Godišnja</asp:ListItem>
                </asp:DropDownList></td>
            <td>
                <asp:CheckBox ID="cbregular" runat="server" Text="Regular članarina" Visible="False" AutoPostBack="True" /><br />
                <asp:CheckBox ID="cbstudent" runat="server" Text="Članarina- studenti" Visible="False" AutoPostBack="True" /><br />
                <asp:CheckBox ID="cbumirovljenici" runat="server" Text="Članarina- umirovljenici" Visible="False" AutoPostBack="True" /><br />
                <asp:CheckBox ID="cbnezaposleni" runat="server" Text="Članarina- nezaposleni" Visible="False" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>&nbsp;</td>
            <td>
                <asp:CheckBox ID="cbtrener" runat="server" Text="Osobni trener" Visible="False" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td>Ostale mogućnosti</td>
            <td>
                <asp:CheckBox ID="cbzumba" runat="server" Text="Zumba" AutoPostBack="True" />
            </td>
            <td>

                <asp:CheckBox ID="cbzregular" runat="server" Text="Regular članarina" Visible="False" AutoPostBack="True" /><br />
                <asp:CheckBox ID="cbzstudenti" runat="server" Text="Članarina- studenti" Visible="False" AutoPostBack="True" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnprijava" runat="server" Text="Prijavi se" OnClick="Button1_Click" CssClass="auto-style1" /></td>
        </tr>
    </table>
    </div>
    <asp:Label ID="lblupozorenje" runat="server"></asp:Label>
    
    
    

</asp:Content>
