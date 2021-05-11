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
                                    <asp:Literal ID="ltrBookName1" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName2" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName3" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton4" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName4" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton5" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName5" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton6" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName6" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton7" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName7" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton8" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName8" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton9" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName9" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton10" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName10" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton11" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName11" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton12" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName12" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton13" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName13" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton14" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName14" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton15" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <asp:Literal ID="ltrBookName15" runat="server"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton16" runat="server" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="ButtonFirst" runat="server" Height="36px" Text="<<" Width="31px" OnClick="ButtonFirst_Click"/>
&nbsp;<asp:Button ID="Button1" runat="server" Height="36px" Text="11" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="Button2" runat="server" Height="36px" Text="12" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="Button3" runat="server" Height="36px" Text="13" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="Button4" runat="server" Height="36px" Text="14" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="Button5" runat="server" Height="36px" Text="15" Width="31px" OnClick="PageButtons_Click"/>
&nbsp;<asp:Button ID="ButtonLast" runat="server" Height="36px" Text=">>" Width="31px" OnClick="ButtonLast_Click"/>
                    </td>
                </tr>
            </table>
        &nbsp;</div>
    </form>
</body>
</html>
