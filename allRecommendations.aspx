<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allRecommendations.aspx.cs" Inherits="BookHomePage.allRecommendations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/hpLOGO.png" OnClick="ImageButton1_Click" Width="40px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton6" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton7" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton8" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton9" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton10" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton11" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton12" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton13" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton14" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton15" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                        <asp:ImageButton ID="ImageButton16" runat="server" Height="150px" Width="100px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="36px" Text="11" Width="31px" OnClick="PageButtons_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Height="36px" Text="12" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="Button3" runat="server" Height="36px" Text="13" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="Button4" runat="server" Height="36px" Text="14" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="Button5" runat="server" Height="36px" Text="15" Width="31px" OnClick="PageButtons_Click"/>
                    </td>
                </tr>
            </table>
        &nbsp;</div>
    </form>
</body>
</html>
