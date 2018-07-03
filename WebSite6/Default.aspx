<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
       <div>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="من فضلك ادخل اسم المستخدم " ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox1" runat="server" Width="283px"></asp:TextBox>

    <asp:Label ID="Label1" runat="server" Style="text-align: left" Text="اسم المستخدم"></asp:Label>
    <br />


    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="من فضلك ادخل الرقم السري " ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox2" runat="server" Width="282px"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="الرقم السري"></asp:Label>
    <br />

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="من فضلك قم بتاكيد الرقم السري" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox3" runat="server" Width="282px"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="تاكيد الرقم السري"></asp:Label>
    <br />
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="الرقم السري غير متماثل" ForeColor="Red"></asp:CompareValidator>


    <br />


    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="من فضلك ادخل الكود الخاص بك" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox4" runat="server" Width="282px"></asp:TextBox>

    <asp:Label ID="Label4" runat="server" Text="الكود"></asp:Label>
    <br />
      <asp:Label ID="Label5" runat="server"></asp:Label>
      <br />
    <asp:Button ID="Button1" runat="server" Text="تسجيل" Width="238px" OnClick="Button1_Click" />
</div>

    
    </asp:Content>
