<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BookHomePage.BookHomePage" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>   
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="homePageStyle.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function autoCompleteEx_ItemSelected(sender, args) {
            __doPostBack(sender.get_element().name, "");
        }
    </script>
    <script type = "text/javascript">
        function searchRecommend() {

            var txt = document.getElementById("<%=SearchBar.ClientID%>").value;
            if (txt == "") {
                alert("Please be sure search bar is not empty.");
            }
            else {
                window.location = "allRecommendations.aspx?&pn=1&search=" + txt;
            }
        }
    </script>
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
.alignCenter
{
    margin: 0 auto;
}
.p1 {
  font-family: "Times New Roman", Times, serif;
}
        
        .auto-style1 {
            width: 100%;
            height: 319px;
        }
        .auto-style2 {
            height: 38px;
            width: 1378px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 100%;
            padding-right: 3%;
        }

    </style>
</head>
<body>
        <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">    
    
        </asp:ScriptManager> 
        <div>
            <table class="auto-style3">
                <tr>
                    <td align="center">
                        <asp:Image ID="imgLogo" runat="server" ImageUrl="~/pasha.png"    />
                    </td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"  align="center">
                        <asp:TextBox ID="SearchBar" runat="server" Width="75%" placeholder="Please Type the Book's Name..." OnTextChanged="SearchBar_TextChanged" Font-Size="18px"></asp:TextBox>
                        <asp:AutoCompleteExtender ServiceMethod="GetTitleList" MinimumPrefixLength="1"    
                                                  CompletionInterval="10" EnableCaching="false" CompletionSetCount="1" TargetControlID="SearchBar"    
                                                  ID="AutoCompleteExtender1" runat="server" FirstRowSelected="false" OnClientItemSelected="autoCompleteEx_ItemSelected">    
                        </asp:AutoCompleteExtender>  
&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="BtnSearch" class="button button5" runat="server" Text="Search" Width="15%" OnClick="BtnSearch_Click" OnClientClick="searchRecommend(); return false" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" align="center"> Recommendations:</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <table class="auto-style3">
                            <tr>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton1" class="button buttonShadow" runat="server" Height="220px" Width="150px" OnClick="ImageButton_Click" />
                                </td>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton2" class="button buttonShadow" runat="server" Height="220px" Width="150px" OnClick="ImageButton_Click" />
                                </td>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton3" class="button buttonShadow" runat="server" Height="220px" Width="150px" OnClick="ImageButton_Click"/>
                                </td>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton4" class="button buttonShadow" runat="server" Height="220px" Width="150px" OnClick="ImageButton_Click"/>
                                </td>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton5" class="button buttonShadow" runat="server" Height="220px" Width="150px" OnClick="ImageButton_Click"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="1" align="right" class="auto-style5">
                        <asp:Button ID="btnShowAll" class="button button5" runat="server" OnClick="btnShowAll_Click" Text="Show All Recommendations" Width="16%"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="1" class="auto-style4" align="center">
                        <br />
 Categories:</td>
                </tr>
                <tr>
                    <td colspan="1" align="center" class="auto-style4">
                        <asp:CheckBoxList ID="cbList" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="1288px" RepeatColumns="8">
                            <asp:ListItem Text="Fantasy" Value="1"></asp:ListItem>
                            <asp:ListItem>Classics</asp:ListItem>
                            <asp:ListItem>Young Adult</asp:ListItem>
                            <asp:ListItem>Fiction</asp:ListItem>
                            <asp:ListItem>Science Fiction</asp:ListItem>
                            <asp:ListItem>Romance</asp:ListItem>
                            <asp:ListItem>Contemporary</asp:ListItem>
                            <asp:ListItem>Childrens</asp:ListItem>
                            <asp:ListItem>Mystery</asp:ListItem>
                            <asp:ListItem>Thriller</asp:ListItem>
                            <asp:ListItem>Novels</asp:ListItem>
                            <asp:ListItem>Philosophy</asp:ListItem>
                            <asp:ListItem>Short Stories</asp:ListItem>
                            <asp:ListItem>Nonfiction</asp:ListItem>
                            <asp:ListItem>Biography</asp:ListItem>
                            <asp:ListItem>Horror</asp:ListItem>
                            <asp:ListItem>Christian</asp:ListItem>
                            <asp:ListItem>Poetry</asp:ListItem>
                            <asp:ListItem>Spirituality</asp:ListItem>
                            <asp:ListItem>Religion</asp:ListItem>
                            <asp:ListItem>Music</asp:ListItem>
                            <asp:ListItem>Self Help</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                            <asp:ListItem>Urban</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td colspan="1" align="right" class="auto-style5">
                        <asp:Button ID="Button1" class="button button5" runat="server" OnClick="Button1_Click" Text="Clear Choose" Width="16%" />
                    </td>
                </tr>
            </table>
        </div>
    </form>   
</body>
</html>
