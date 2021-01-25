<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SampleCRUD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Org Url:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="300px">https://dev-8964037.okta.com/</asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="API Key:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="300px">00yn69MxcOAGEwzWR_ZN7R0L9UJG8cSFLEt6mDapS5</asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Input(s)"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Body"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Feature"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Result"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server">First Name</asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server">Last Name</asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server">Email</asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="216px" TextMode="MultiLine" Width="335px">{
  &quot;profile&quot;: {
    &quot;firstName&quot;: &quot;{{firstname}}&quot;,
    &quot;lastName&quot;: &quot;{{lastname}}&quot;,
    &quot;email&quot;: &quot;{{email}}&quot;,
    &quot;login&quot;: &quot;{{email}}&quot;
  }
}</asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create User" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="600px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
