<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookPage.aspx.cs" Inherits="BookHomePage.BookPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="bookPageStyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .button {
  background-color: #4CAF50;
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
        .auto-style14 {
            height: 26px;
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
                            <td align="center" class="auto-style14">
                                <asp:Literal ID="ltrTitle" runat="server" Text="Title"></asp:Literal>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:Literal ID="ltrRate" runat="server" Text="Rate"></asp:Literal>
                                (<asp:Literal ID="ltrRateCount" runat="server" Text="Count"></asp:Literal>
                                )</td>
                        </tr>
                    </table>
                    <table class="auto-style11">
                        <tr>
                            <td align="center">
                                <asp:Image ID="imgBook" runat="server" Height="300px" ImageUrl="https://images.gr-assets.com/books/1255614970l/2.jpg" Width="180px" />
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
                
                <td class="auto-style9">Genres:</td>
                <td class="auto-style8">
                    <asp:Literal ID="ltrGenre" runat="server" Text="Genre"></asp:Literal>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style5">Description:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDesc" runat="server" Height="120px" TextMode="MultiLine" Width="481px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style7">Page:</td>
                <td class="auto-style12">
                    <asp:Literal ID="ltrPage" runat="server" Text="Page"></asp:Literal>
                    </td>
            </tr>
            <tr>

                
                <td class="auto-style6">
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownRate" runat="server">
                        <asp:ListItem Value="0">--Points--</asp:ListItem>
                        <asp:ListItem Value="1">1</asp:ListItem>
                        <asp:ListItem Value="2">2</asp:ListItem>
                        <asp:ListItem Value="3">3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem Value="5">5</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                    <asp:Button ID="btnRating" class="button button5" runat="server" OnClick="btnRating_Click" Text="Rating" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnHomepage" class="button button5" runat="server" OnClick="btnHomepage_Click" Text="Home Page" />
                </td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td>
                    <br />
                    <br />
                    Readers also enjoyed;</td>
            </tr>
        </table>
        <table class="auto-style2">
            <tr>
                <td align="center">
                    <asp:ImageButton ID="RecBook1" class="button buttonShadow" runat="server" Height="250px" Width="150px" OnClick="ImageButton_Click"/>
                </td>
                <td align="center">
                    <asp:ImageButton ID="RecBook2" class="button buttonShadow" runat="server" Height="250px" Width="150px" OnClick="ImageButton_Click"/>
                </td>
                <td align="center">
                    <asp:ImageButton ID="RecBook3" class="button buttonShadow"  runat="server" Height="250px" Width="150px" OnClick="ImageButton_Click"/>
                </td>
                <td align="center">
                    <asp:ImageButton ID="RecBook4" class="button buttonShadow" runat="server" Height="250px" Width="150px" OnClick="ImageButton_Click"/>
                </td>
                <td align="center">
                    <asp:ImageButton ID="RecBook5" class="button buttonShadow" runat="server" Height="250px" Width="150px" OnClick="ImageButton_Click"/>
                </td>
            </tr>
        </table>
    </form>
   
    
    </body>
</html>
