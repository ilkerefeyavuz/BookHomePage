﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookPage.aspx.cs" Inherits="BookHomePage.BookPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            height: 26px;
            width: 1517px;
        }
        .auto-style5 {
            width: 101px;
            height: 26px;
        }
        .auto-style6 {
            height: 39px;
        }
        .auto-style7 {
            width: 101px;
            height: 39px;
        }
        .auto-style8 {
            height: 38px;
            width: 1517px;
        }
        .auto-style9 {
            width: 101px;
            height: 38px;
        }
        .auto-style10 {
            height: 38px;
            width: 190px;
        }
        .auto-style11 {
            width: 100%;
            height: 187px;
        }
        .auto-style12 {
            height: 39px;
            width: 1517px;
        }
        .auto-style13 {
            width: 1517px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style2">
            <tr>
                <td class="auto-style10" rowspan="5">
                    <table class="auto-style2">
                        <tr>
                            <td>
                                <asp:Literal ID="ltrTitle" runat="server" Text="Title"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Literal ID="ltrRate" runat="server" Text="Rate"></asp:Literal>
                                (<asp:Literal ID="ltrRateCount" runat="server" Text="Count"></asp:Literal>
                                )</td>
                        </tr>
                    </table>
                    <table class="auto-style11">
                        <tr>
                            <td>
                                <asp:Image ID="imgBook" runat="server" Height="230px" ImageUrl="https://images.gr-assets.com/books/1255614970l/2.jpg" Width="184px" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style9">Author:</td>
                <td class="auto-style8">
                    <asp:Literal ID="ltrAuthor" runat="server" Text="Author"></asp:Literal>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style9">Genress:</td>
                <td class="auto-style8">
                    <asp:Literal ID="ltrGenre" runat="server" Text="Genre"></asp:Literal>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style5">Description:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDesc" runat="server" Height="70px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style7">Pages:</td>
                <td class="auto-style12">
                    <asp:Literal ID="ltrPage" runat="server" Text="Page"></asp:Literal>
                </td>
            </tr>
            <tr>

                
                <td class="auto-style6">
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>--Points--</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Button ID="btnRating" runat="server" OnClick="btnRating_Click" Text="Rating" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnHomepage" runat="server" OnClick="btnHomepage_Click" Text="Home Page" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
