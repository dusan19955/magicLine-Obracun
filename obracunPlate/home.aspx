<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="obracunPlate.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Podaci o korisnicima</title>
    <style type="text/css">
    .gridview {
        font-family:"arial";
        background-color:#7AC142;
        width: 100%;
        font-size: small;
        
        
}
    .gridview th {
        background: #7AC142;
        padding: 2px;
        font-size:small;
          text-align: center;
          border-left:dashed black 2px;
          border-bottom:solid black 2px;
          border-top:solid black 2px;
          min-width:20px;
          height:50px;
          font-size:20px;
}
    .gridview th a{
        color: #003300;
        text-decoration: none;
}
    .gridview th a:hover{
        color: #003300;
        text-decoration: underline;
}
        .gridview td {
            background: #D9EDC9;
            color: #333333;
            font: small "arial";
            padding: 4px;
            text-align: center;
            height:30px;
        }
        .gridview tr.even td {
            background: #FFFFFF;
        }
        .gridview td a {
            color: #003300;
            font: bold small "arial";
            padding: 2px;
            text-decoration: none;
        }
        .gridview td a:hover {
            color: red;
            font-weight: bold;
            text-decoration: underline;
        } 
        body{
            background-image:url(slike/pic11.jpg);
            background-size:cover;
            height:100%;

        }
       
            
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:obracunPlatedb %>" SelectCommand="SELECT * FROM [userinfo]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="gridview" AlternatingRowStyle-CssClass="even" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="1" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="ime" HeaderText="Ime" SortExpression="ime" />
                <asp:BoundField DataField="prezime" HeaderText="Prezime" SortExpression="prezime" />
                <asp:BoundField DataField="adresa" HeaderText="Adresa" SortExpression="adresa" />
                <asp:BoundField DataField="netoiznos" HeaderText="Neto iznos" SortExpression="netoiznos" />
                <asp:BoundField DataField="poreznazarade" HeaderText="Porez na zarade" SortExpression="poreznazarade" />
                <asp:BoundField DataField="piozaposleni" HeaderText="Doprinosi za PIO" SortExpression="piozaposleni" />
                <asp:BoundField DataField="zdravstvenozaposleni" HeaderText="Zdravstveno osiguranje" SortExpression="zdravstvenozaposleni" />
                <asp:BoundField DataField="doprinosizaposleni" HeaderText="Doprinosi za slucaj nezaposlenosti" SortExpression="doprinosizaposleni" />
                <asp:BoundField DataField="bruto" HeaderText="Bruto" SortExpression="Bruto" />
                <asp:BoundField DataField="pioposlodavac" HeaderText="Doprinosi za PIO(poslodavac)" SortExpression="pioposlodavac" />
                <asp:BoundField DataField="zdravstvenoposlodavac" HeaderText="Zdravstveno osiguranje (poslodavac)" SortExpression="zdravstvenoposlodavac" />
                <asp:BoundField DataField="doprinosiposlodavac" HeaderText="Doprinosi za slucaj nezaposlenosti (poslodavac)" SortExpression="doprinosiposlodavac" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
    </form>
</body>
</html>
