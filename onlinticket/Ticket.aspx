<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ticket.aspx.cs" Inherits="Ticket" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 135px;
        }
        .style3
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                Book&nbsp; Ticket</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lblcity" runat="server" Text=" City"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Ddlcity" runat="server" Height="20px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="135px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="kannur"></asp:ListItem>
                    <asp:ListItem Value="Kasargod"></asp:ListItem>
                    <asp:ListItem Value="Payyannur"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lbllanguage" runat="server" Text="Language"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Ddllanguage" runat="server" Height="25px" Width="134px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Malayalam"></asp:ListItem>
                    <asp:ListItem Value="Hindi"></asp:ListItem>
                    <asp:ListItem Value="English"></asp:ListItem>
                    <asp:ListItem Value="Tamil"></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lblmovie" runat="server" Text="Movie"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DdLmovie" runat="server" Height="18px" Width="133px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Lbltheater" runat="server" Text="Theater"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="Ddltheater" runat="server" Height="30px" Width="139px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="lblseat" runat="server" Text="No:of  Seats"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Txtbxseat" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Btnselect" runat="server" Text="Select your seat" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Panel ID="PnlSeat" runat="server" Height="159px" Visible="False" 
                    Width="278px">
                </asp:Panel>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
