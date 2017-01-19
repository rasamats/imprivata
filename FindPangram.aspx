<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FindPangram.aspx.cs" Inherits="FindPangram" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Find Pangram</title>
    <base target="_self" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <base target="_self" />
    <script language="javascript" type="text/javascript" src="../javascript/popup.js"></script>
    <script language="javascript" type="text/javascript" src="../javascript/jquery-1.11.3.js"></script>
    <script language="Javascript" type="text/javascript">

        function validate() {
            var inputString = document.getElementById("txtInput");
            if (inputString.toString().length > 103)
            {
                alert('Your string is greater than 103 characters.');
                return false;
            }
            var alpha = /^[a-zA-Z\s]+$/;
            if (inputString.value == "") {
                alert('String maximum 103 characters long');
                return false;
            }
            else if (!inputString.value.match(alpha)) {
                alert('String should only contain letters and spaces');
                return false;
            }
            else {
                return true;
            }
        }

    </script>
</head>

<body>
    <form id="form1" runat="server">
    <div style="height: 104px">
        <div id="divMain" style="display: block; width: 900px; height: 43px;">
            <div>
                <asp:HyperLink id="hyperlink1" NavigateUrl="../Default" Text="Back to First Page" runat="server"/>
            </div>
        </div>
        <table>
            <tr>
                <td valign="middle" class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Enter your String:" Width="161px" Height="16px"></asp:Label>
                </td>
                <td valign="middle" class="auto-style1">
                    <asp:TextBox ID="txtInput" runat="server" TabIndex="1" Width="618px" Height="16px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                </td>
                <td align="right">
                    <button type="submit" onclick="return validate();" style="width: 85px">Submit</button>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
