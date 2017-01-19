<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArrayManager.aspx.cs" Inherits="ArrayManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Arrays</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 104px">
        <div id="divMain" style="display: block; width: 900px">
            <div>
                <asp:HyperLink id="hyperlink1" NavigateUrl="../Default" Text="Back to First Page" runat="server"/>
            </div>
        </div>
        <table>
            <tr style="height: 40px">
                <td style="text-align: right">
                    <asp:Label ID="lblArraySize" runat="server" Text="Enter number of items: "></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtArrayASizeID" runat="server"
                                        Width="100px" CssClass="textbox" TabIndex="1"></asp:TextBox>
                    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
                        ControlToValidate="txtArrayASizeID" ErrorMessage="Value must be a whole number" 
                        ForeColor="Red" SetFocusOnError="true" Display="Dynamic" EnableClientScript="true"/>
                </td>
                <td></td>
            </tr>
            <tr style="height: 40px">
                <td style="height: 30px" colspan="3"> 
                    <asp:Button ID="cmdOk" runat="server" CssClass="btnctrl" Text="Ok" AccessKey="C"
                                Width="120px" Height="25px" TabIndex="2"/>
                </td>
            </tr>
            <tr>
                <td>                   
                    <asp:Label ID="lblArray1LBL" runat="server" Text="Array1: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblArray1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>         
                    <asp:Label ID="lblArray2LBL" runat="server" Text="Array2: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblArray2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblArray2SortedLBL" runat="server" Text="Array2 Sorted: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblSortedArray2" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        </div>
            
        <div>

        </div>
   
   </form>
</body>
</html>
