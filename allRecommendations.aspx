<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="allRecommendations.aspx.cs" Inherits="BookHomePage.allRecommendations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="allRecommendationsStyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            /*padding: 16px 32px;*/
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration: 0.4s;
            cursor: pointer;
        }
        .button5 {
            background-color: white;
            color: black;
            border: 2px solid #555555;
        }

        .button5:hover {
            background-color: #555555;
            color: white;
        }
        .buttonShadow {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
        }

        .buttonShadow:hover {
            box-shadow: 0 28px 36px 0 rgba(0,0,0,0.24),0 34px 100px 0 rgba(0,0,0,0.5);
        }
        .auto-style1 {
            width: 100%;
        }
        .table-style {
            width: 20%;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server"  Height="80px" ImageUrl="~/home_icon.jpg" OnClick="ImageButton1_Click" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td align="center" class="table-style">
                                    <br />
                                    <asp:Literal ID="ltrBookName1" runat="server" Text="Book1"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center" class="table-style">
                                    <br />
                                    <asp:Literal ID="ltrBookName2" runat="server" Text="Book2"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton3" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center" class="table-style">
                                    <br />
                                    <asp:Literal ID="ltrBookName3" runat="server" Text="Book3"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton4" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center" class="table-style">
                                    <br />
                                    <asp:Literal ID="ltrBookName4" runat="server" Text="Book4" ></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton5" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center" class="table-style">
                                    <br />
                                    <asp:Literal ID="ltrBookName5" runat="server" Text="Book5" ></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton6" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" class="table-style">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName6" runat="server" Text="Book6"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton7" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName7" runat="server" Text="Book7"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton8" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName8" runat="server" Text="Book8"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton9" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName9" runat="server" Text="Book9"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton10" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName10" runat="server" Text="Book10"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton11" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName11" runat="server" Text="Book11"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton12" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName12" runat="server" Text="Book12"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton13" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName13" runat="server" Text="Book13"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton14" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName14" runat="server" Text="Book14"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton15" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                                <td align="center">
                                    <br />
                                    <br />
                                    <asp:Literal ID="ltrBookName15" runat="server" Text="Book15"></asp:Literal>
                                    <br />
                        <asp:ImageButton ID="ImageButton16" runat="server" class="button buttonShadow" Height="200px" Width="150px" OnClick="ImageButtons_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <br />
                        <asp:Button ID="ButtonFirst" class="button button5" runat="server" Height="36px" Text="<<" Width="50px" OnClick="ButtonFirst_Click"/>
                        <asp:Button ID="Button1" class="button button5" runat="server" Height="36px" Text="11" Width="50px" OnClick="PageButtons_Click"/>
                        <asp:Button ID="Button2" class="button button5" runat="server" Height="36px" Text="12" Width="50px" OnClick="PageButtons_Click"/>
                        <asp:Button ID="Button3" class="button button5" runat="server" Height="36px" Text="13" Width="50px" OnClick="PageButtons_Click"/>
                        <asp:Button ID="Button4" class="button button5" runat="server" Height="36px" Text="14" Width="50px" OnClick="PageButtons_Click"/>
                        <asp:Button ID="Button5" class="button button5" runat="server" Height="36px" Text="15" Width="50px" OnClick="PageButtons_Click"/>
                        <asp:Button ID="ButtonLast" class="button button5" runat="server" Height="36px" Text=">>" Width="50px" OnClick="ButtonLast_Click"/>
                    </td>
                </tr>
            </table>
        &nbsp;</div>
    </form>
    
    
</body>
</html>
