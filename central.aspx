<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="central.aspx.cs" Inherits="WebApplication1.central" %>

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
            <asp:Label ID="Label1" runat="server" Text="CENTRAL FORM" style="font-weight: 700; font-size: x-large"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <div>

        </div>
        

    
    <table class="auto-style1">
        <tr align="center">
            <td><asp:Button ID="btnexam" runat="server" Text="Take Exam" OnClick="btnexam_Click" style="font-weight: 700; font-size: medium" /></td>
            <td><asp:Button ID="btnscore" runat="server" Text="View Score" style="font-weight: 700; font-size: medium" OnClick="btnscore_Click" /></td>
            <td><asp:Button ID="btnout" runat="server" Text="Logout" style="font-weight: 700; font-size: medium" OnClick="btnout_Click" /></td>
        </tr>
    </table>
        </form>
</body>
</html>
