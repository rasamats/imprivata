<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vaccination.aspx.cs" Inherits="Vaccination" %>
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
            var cities = parseInt(document.getElementById("txtN").value);
            var clinics = parseInt(document.getElementById("txtB").value);

            if (clinics < cities)
            {
                alert('Number of clinics can not be smaller than number of cities');
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
                    <asp:Label ID="Label1" runat="server" Text="Total Number of cities (N):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtN" runat="server" TabIndex="1" Width="100px" Height="16px"/>
                    <asp:RangeValidator ID="vCityNumberValidator" runat="server" ControlToValidate="txtN"
                            ErrorMessage="<div>Number must be an integer between 1 and 500000.</div>"
                            ForeColor="Red" MaximumValue="500000" MinimumValue="1" SetFocusOnError="true" Display="Dynamic"
                            Type="Integer" ValidationGroup="RequiredFields"></asp:RangeValidator>

                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Comma separated population numbers in each city:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCityPopulation" runat="server" TabIndex="1" Width="100px" Height="16px"/>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="txtCityPopulation" ErrorMessage="City Population must be numbers separated by comma." 
            ValidationExpression="[0-9]+(,[0-9]+)*" ForeColor="Red"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblB" runat="server" Text="Total number of clinics (B)"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtB" runat="server" TabIndex="1" Width="100px" Height="16px"/>
                    <asp:RangeValidator ID="vclinicNumberValidator" runat="server" ControlToValidate="txtB"
                            ErrorMessage="<div>Number must be an integer between 1 and 2000000.</div>"
                            ForeColor="Red" MaximumValue="2000000" MinimumValue="1" SetFocusOnError="true" Display="Dynamic"
                            Type="Integer" ValidationGroup="RequiredFields"></asp:RangeValidator>
                </td>
                <td></td>
                <td></td>
                </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <button type="submit" style="width: 85px" onclick="return validate();">Calculate</button>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
