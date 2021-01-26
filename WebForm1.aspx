<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SampleCRUD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        table, th, td {
          border: 1px solid black;
        }
        .auto-style2 {
            width: 400px;
        }
        .auto-style3 {
            width: 420px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Org Base Url:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="400px">https://dev-8964037.okta.com</asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="API Key:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="400px">00yn69MxcOAGEwzWR_ZN7R0L9UJG8cSFLEt6mDapS5</asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Input(s)"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Body"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Feature"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Result"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server">First Name</asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server">Last Name</asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server">Email</asp:TextBox>
                    </td>
                    <td class="auto-style3">
                                    <asp:TextBox ID="TextBox29" runat="server" Width="400px">/api/v1/users?activate=true</asp:TextBox>
                                <br />
                        <asp:TextBox ID="TextBox4" runat="server" Height="200px" TextMode="MultiLine" Width="400px">{
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
                        <asp:TextBox ID="TextBox5" runat="server" Width="300px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="https://developer.okta.com/docs/reference/api/users/#create-user-without-credentials"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                                    <asp:TextBox ID="TextBox8" runat="server">Username</asp:TextBox>
                                </td>
                    <td class="auto-style3">
                                    <asp:TextBox ID="TextBox11" runat="server" Width="400px">/api/v1/users/{userId}/lifecycle/reset_password?sendEmail=true</asp:TextBox>
                                </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset Password" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" Width="300px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="https://developer.okta.com/docs/reference/api/users/#reset-password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                                    <asp:TextBox ID="TextBox16" runat="server">Username</asp:TextBox>
                                    </td>
                    <td class="auto-style3">
                        <br />
                                    <asp:TextBox ID="TextBox15" runat="server" Width="400px">/api/v1/users/{userId}/credentials/forgot_password</asp:TextBox>
                                </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Forgot Password" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" Width="300px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="https://developer.okta.com/docs/reference/api/users/#forgot-password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                                    <asp:TextBox ID="TextBox19" runat="server">Username</asp:TextBox>
                                    <asp:TextBox ID="TextBox20" runat="server">oldPassword</asp:TextBox>
                                    <asp:TextBox ID="TextBox21" runat="server">newPassword</asp:TextBox>
                                    </td>
                    <td class="auto-style3">
                        <br />
                                    <asp:TextBox ID="TextBox18" runat="server" Width="400px">/api/v1/users/{userId}/credentials/change_password</asp:TextBox>
                                <br />
                        <asp:TextBox ID="TextBox28" runat="server" Height="200px" TextMode="MultiLine" Width="400px">{
  &quot;oldPassword&quot;: { &quot;value&quot;: &quot;{{oldPwd}}&quot; },
  &quot;newPassword&quot;: { &quot;value&quot;: &quot;{{newPwd}}&quot; }
}</asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Change Password" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox22" runat="server" Width="300px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="https://developer.okta.com/docs/reference/api/users/#change-password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                                    <asp:TextBox ID="TextBox24" runat="server">Username</asp:TextBox>
                                    <asp:TextBox ID="TextBox25" runat="server">newPassword</asp:TextBox>
                                    </td>
                    <td class="auto-style3">
                                    <asp:TextBox ID="TextBox27" runat="server" Width="400px">/api/v1/users/{userId}</asp:TextBox>
                                <br />
                        <asp:TextBox ID="TextBox30" runat="server" Height="200px" TextMode="MultiLine" Width="400px">{
  &quot;credentials&quot;: {
    &quot;password&quot; : { &quot;value&quot;: &quot;{{newPwd}}&quot; }
  }
}</asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Set Password" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox23" runat="server" Width="300px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="https://developer.okta.com/docs/reference/api/users/#set-password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                                    <asp:TextBox ID="TextBox31" runat="server">Username</asp:TextBox>
                                    </td>
                    <td class="auto-style3">
                                    <asp:TextBox ID="TextBox32" runat="server" Width="400px">/api/v1/users/{{userId}}?sendEmail=true</asp:TextBox>
                                </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Delete User" />
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox33" runat="server" Width="300px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="https://developer.okta.com/docs/reference/api/users/#delete-user-synchronously"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
