﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Ex03FutureValue.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 3: Future Value</title>
 <link runat="server" href="~/site.css" 
                              rel="stylesheet" type="text/css" /></head>
<body>
    <header>
        <img id="logo" alt="Murach Logo" src="Images/MurachLogo.jpg" />
    </header>
    <main>
        <h1>401K Future Value Calculator</h1>
        <form id="form1" runat="server">
            <label for="ddlMonthlyInvestment">Monthly Investment:</label>
            <asp:DropDownList ID="ddlMonthlyInvestment" runat="server" CssClass="entry"></asp:DropDownList ><br />
            <label for="txtInterestRate">Annual interest rate:</label>
            <asp:TextBox ID="txtInterestRate" runat="server" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                    runat="server" 
					ErrorMessage="Interest rate is required." 
                    ControlToValidate="txtInterestRate" 
                    Display="Dynamic"
                    CssClass="validator">
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtInterestRate" Display="Dynamic" 
                    ErrorMessage="Interest rate must range from 1 to 20." 
                    CssClass="validator"
                    MinimumValue="1" MaximumValue="20" Type="Double">
                </asp:RangeValidator><br />
            <label for="txtYears">Number of years:</label>
            <asp:TextBox ID="txtYears" runat="server" CssClass="entry"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                    runat="server" 
					ControlToValidate="txtYears" Display="Dynamic" 
                    ErrorMessage="Number of years is required."
                    CssClass="validator">
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                    ControlToValidate="txtYears" 
                    Display="Dynamic" 
                    ErrorMessage="Years must range from 1 to 45." 
                    MinimumValue="1" MaximumValue="45" Type="Integer"
                    CssClass="validator">
                </asp:RangeValidator><br />
            <label for="lblFutureValue">Future Value:</label>
            <asp:Label ID="lblFutureValue" runat="server"></asp:Label><br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" 
                onclick="btnCalculate_Click" CssClass="button"/>
            <asp:Button ID="btnClear" runat="server" Text="Clear" 
                onclick="btnClear_Click" CssClass="button"
                CausesValidation="False" />
        </form>
    </main>
</body>
</html>
