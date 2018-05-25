<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex02FutureValue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 2: Future Value</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 226px;
        }
    </style>
</head>
<body>
    <img src="Images/MurachLogo.jpg" alt="Murach Logo" />
    <h1>401k Future Value Calculator</h1>
    <form id="form1" runat="server">
    <div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Monthly investment</td>
                <td>
                    <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" Width="148px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Annual interest rate</td>
                <td>
                    <asp:TextBox ID="txtInterestRate" runat="server" Height="21px" Width="104px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInterestRate" Display="Dynamic" ErrorMessage="Interest rate is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtInterestRate" Display="Dynamic" ErrorMessage="Interest rate must range from 1 to 20." MinimumValue="1" MaximumValue="20" Type="Double" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Number of years</td>
                <td>
                    <asp:TextBox ID="txtNumberOfYears" runat="server" Width="104px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNumberOfYears" Display="Dynamic" ErrorMessage="Number of years is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtNumberOfYears" Display="Dynamic" ErrorMessage="Years must range from 1 to 45." MinimumValue="1" MaximumValue="45" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Future value</td>
                <td>
                    <asp:Label ID="lblFutureValue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" Width="124px" OnClick="btnCalculate_Click" />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" CausesValidation="False" Text="Clear" Width="121px" OnClick="btnClear_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
