<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exam.aspx.cs" Inherits="WebApplication1.exam" %>

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
        <asp:Label ID="Label1" runat="server" Text="EXAM FORM" style="font-weight: 700; font-size: x-large"></asp:Label>
        <br />
        <br />
        <br />
        </div>
        <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>1.Which forms there will be postbackurl occur</strong></td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton GroupName="que1" ID="RadioButton1" runat="server" Text="Web Forms" OnCheckedChanged="RadioButton1_CheckedChanged" /><br />
                    <asp:RadioButton GroupName="que1" ID="RadioButton2" runat="server" Text="HTML Forms" /><br />
                    <asp:RadioButton GroupName="que1" ID="RadioButton3" runat="server" Text="Win Forms"/><br />
                    <asp:RadioButton GroupNmae="que1" ID="RadioButton4" runat="server" Text="Jsp Forms"/>

                    <br />

                    <br />

                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>2.File Extension used for ASP.NET files</strong></td>
            </tr>
            <tr>
                <td><asp:RadioButton GroupName="que2" ID="RadioButton5" runat="server" Text="Web " /><br />
                    <asp:RadioButton GroupName="que2" ID="RadioButton6" runat="server" Text="Asp" OnCheckedChanged="RadioButton6_CheckedChanged" /><br />
                    <asp:RadioButton GroupName="que2" ID="RadioButton7" runat="server" Text="Aspx"/><br />
                    <asp:RadioButton GroupNmae="que2" ID="RadioButton8" runat="server" Text="Aspx.cs"/>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>3.Which DLL will translate XML to SQL in IIS</strong></td>
            </tr>
            <tr>
                <td><asp:RadioButton GroupName="que3" ID="RadioButton9" runat="server" Text="LISXML.dll" /><br />
                    <asp:RadioButton GroupName="que3" ID="RadioButton10" runat="server" Text="SQLXML.dll" /><br />
                    <asp:RadioButton GroupName="que3" ID="RadioButton11" runat="server" Text="SQLISAPI.dll" OnCheckedChanged="RadioButton11_CheckedChanged"/><br />
                    <asp:RadioButton GroupNmae="que3" ID="RadioButton12" runat="server" Text="SQLIIS.dll"/>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
       
        </table>
            <div><asp:Button ID="btnback" runat="server" Text="Back" OnClick="btnback_Click" style="font-weight: 700; font-size: medium" />
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" style="margin-left: 180px; font-weight: 700; font-size: medium;" />
            </div>
            
    </div>
    </form>
</body>
</html>
