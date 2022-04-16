<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yesscore.aspx.cs" Inherits="WebApplication1.yesscore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Label ID="Label4" runat="server" Text="SCORE TABLE" style="font-weight: 700; font-size: x-large"></asp:Label>
    
        <br />
        <br />
    
        <table align="center" style="height: 118px; width: 246px">
            <tr align="center">
                <td class="auto-style2"><strong>ID</strong></td>
                <td class="auto-style2"><strong>NAME</strong></td>
                <td class="auto-style2"><strong>SCORE</strong></td>
            </tr>
            <tr align="center">
                <td>
                    <asp:Label ID="id" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="score" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Logout" PostBackUrl="~/login.aspx" Width="112px"  style="margin-left: 146px; font-weight: 700; font-size: medium;" OnClick="Button1_Click"/>
    
    </div>
    </form>
</body>
</html>
