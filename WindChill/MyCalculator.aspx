<%@ Page Title="" Language="C#" MasterPageFile="~/WindChill/Site.Master" AutoEventWireup="true" CodeBehind="MyCalculator.aspx.cs" Inherits="WindChill.WindChill.MyCalculator" %>
<asp:Content ID="MyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>Temperature:</td>
            <td width="10" >&nbsp;</td>
            <td><asp:TextBox ID="txtTemperature" Columns="5" MaxLength="3" runat="server"></asp:TextBox></td>
            <td width="10" >&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="valTempRequired" runat="server" ControlToValidate="txtTemperature" CssClass="red" ErrorMessage="Please provide a temperature"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Wind Speed:</td>
            <td width="10" >&nbsp;</td>
            <td><asp:TextBox ID="txtSpeed" Columns="5" MaxLength="3" runat="server"></asp:TextBox></td>
            <td width="10" >&nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="valSpeedRequired" runat="server" ControlToValidate="txtSpeed" CssClass="red" ErrorMessage="Please provide a wind speed"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>

    <p><asp:Button ID="cmdCalculate" runat="server" Text="CALCULATE" OnClick="cmdCalculate_Click" /></p>
    <h2 align="center">WindChill: <asp:Label ID="lblResults" runat="server" Text=""></asp:Label></h2>


</asp:Content>

