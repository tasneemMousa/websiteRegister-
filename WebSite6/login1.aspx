<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
           <div>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="من فضلك ادخل اسم المستخدم" ForeColor="Red"></asp:RequiredFieldValidator>
                
                    <asp:TextBox ID="TextBox1" runat="server" Width="327px" style="text-align: right"></asp:TextBox>
              
                    <asp:Label ID="Label1" runat="server" Text="اسم المستخدم"></asp:Label>
      <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="من فضلك ادخل الرقم السري " ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="TextBox2" runat="server" Width="326px" style="text-align: right"></asp:TextBox>
               
                    <asp:Label ID="Label2" runat="server" Text="الرقم السري"></asp:Label>
      <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center; height: 26px" Text="تسجيل الدخول" Width="319px" />
     

           </div>
    </asp:Content>