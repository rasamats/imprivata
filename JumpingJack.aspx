<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JumpingJack.aspx.cs" Inherits="JumpingJack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Jumping Jack</title>
    <link href="../Styles/Site.css" rel="Stylesheet" type="text/css" />
    <base target="_self" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <link href="../Styles/Site.css" rel="Stylesheet" type="text/css" />
    <base target="_self" />
    <script language="javascript" type="text/javascript" src="../javascript/popup.js"></script>
    <script language="javascript" type="text/javascript" src="../javascript/jquery-1.11.3.js"></script>
    <script language="Javascript" type="text/javascript">

        function validate() {
            var inputK = parseInt(document.getElementById("txtK").value);
            var inputN = parseInt(document.getElementById("txtN").value);
            
            if((isNaN(inputK))||(isNaN(inputN))){
                alert('Both Input values have to be a numbers.');
                return false;
            }
            
            if ((inputN < 1) || (inputN > 2000))
            {
                alert('N has to be between 1 and 2000 inclusive');
                return false;
            }
            
            if ((inputK < 1) || (inputK > 4000000)) {
                alert('K has to be between 1 and 4000000 inclusive');
                return false;
            }
            return true;
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 104px">
        <div id="divMain" style="display: block; width: 900px; height: 43px;">
            <div class="jumbotron">
                <asp:HyperLink id="hyperlink1" NavigateUrl="../Default" Text="Back to First Page" runat="server"/>
            </div>
        </div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Total Number of actions (N):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtN" runat="server" TabIndex="1" Width="100px" Height="16px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblK" runat="server" Text="Broken Step number (K)"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtK" runat="server" TabIndex="1" Width="100px" Height="16px"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <button type="submit" onclick="return validate();" style="width: 85px">Jump</button>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
