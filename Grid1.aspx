
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grid1.aspx.cs" Inherits="GridView.Grid1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>s
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns ="true" 
            RowStyle-BackColor="#FF9966" HeaderStyle-BackColor="Blue" 
            HeaderStyle-ForeColor="Red" CellPadding="3" ForeColor="Black" 
            GridLines="Vertical" BackColor="White" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="1px" Height="235px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
      
        <asp:BoundField ItemStyle-Width="151px" DataField ="First_Name"  
                HeaderText = "First_Name" ItemStyle-ForeColor="Black" >
<ItemStyle ForeColor="Black" Width="150px"></ItemStyle>
            </asp:BoundField>
        <asp:BoundField ItemStyle-Width="150px" DataField ="Email_ID" 
                HeaderText ="Email_ID" ItemStyle-ForeColor="Black" >
<ItemStyle ForeColor="Black" Width="150px"></ItemStyle>
            </asp:BoundField>
        <asp:BoundField ItemStyle-Width="150px" DataField ="Password" 
                HeaderText ="Password" ItemStyle-ForeColor="Black" > 
<ItemStyle ForeColor="Black" Width="150px"></ItemStyle>
            </asp:BoundField>
        </Columns> 
            <FooterStyle BackColor="#CCCCCC" />

<HeaderStyle BackColor="Black" ForeColor="White" Font-Bold="True"></HeaderStyle>

            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
         <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns ="true" 
            RowStyle-BackColor="#FF9966" HeaderStyle-BackColor="Blue" 
            HeaderStyle-ForeColor="Red" BackColor="White" BorderColor="#E7E7FF" 
            BorderWidth="1px" CellPadding="3" GridLines="Horizontal" 
            Height="256px" style="margin-top: 27px" BorderStyle="None">
             <AlternatingRowStyle BackColor="#F7F7F7" />
             <Columns>
                 <asp:BoundField ItemStyle-Width="150px" DataField ="Branch"  
                     HeaderText = "Branch" >
<ItemStyle Width="150px"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField ItemStyle-Width="150px" DataField ="Student ID" 
                     HeaderText ="[Student ID]" >
<ItemStyle Width="150px"></ItemStyle>
                 </asp:BoundField>
                 <asp:BoundField ItemStyle-Width="150px" DataField ="Student Name" 
                     HeaderText ="[Student Name]" >
<ItemStyle Width="150px"></ItemStyle>
                 </asp:BoundField>		
             </Columns>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />

<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

             <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" 
                 HorizontalAlign="Right" />

<RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>

             <SelectedRowStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
             <SortedAscendingCellStyle BackColor="#F4F4FD" />
             <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
             <SortedDescendingCellStyle BackColor="#D8D8F0" />
             <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 46px" 
            Width="195px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
            Text="GET" />
        <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Height="290px" style="margin-top: 71px" Width="465px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>

         <br />
        <br />
        <asp:GridView ID="GridView4" runat="server" BackColor="White" 
            BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            Height="237px" Width="465px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <br />
        <asp:GridView ID="GridView5" runat="server" BackColor="White" 
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" GridLines="None" Height="248px" Width="468px">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>

         </div>
   
    </asp:Timer>
    </form>
</body>
</html>
