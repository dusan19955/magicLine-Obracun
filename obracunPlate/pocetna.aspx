<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pocetna.aspx.cs" Inherits="obracunPlate.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DOBRO DOSLI</title>
    <style>
        #form1{
    border: 2px solid black;
    width: 400px;
    background-image: linear-gradient(120deg, #89f7fe 0%, #66a6ff 100%);
    font-size: 20px;
    text-align: center;
    margin-left:40%;
    margin-top:100px;
}
        .input1 {
    text-align: right;
    margin-left: 110px;
    display: block;
    border: none;
    border-radius: 20px;
    padding: 5px 8px;
    color: #333;
    box-shadow: 
        inset 0 2px 0 rgba(0,0,0,.2), 
        0 0 4px rgba(0,0,0,0.1);
}
.input1:focus {
    outline: none;
    box-shadow: 
        inset 0 6px 0 rgba(0,0,0,.2), 
        0 0 8px rgba(0,0,0,0.1), 
        0 0 10px 5px #51CBEE;
}
body{
  background: url(slike/Finance-1.jpg);
    background-position: center center;
    background-attachment: scroll;
    background-size: cover;
    height: 150%;
    padding-top:291px;
   
}
#validacija{
    margin-left:40%;
    margin-right:39%;
    border: black solid 3px;
    margin-top:-50px;
    background: rgba(89, 171, 227, 0.5);
    text-align:center;
    font-weight:bold;
    font-size:25px;
    padding:5px;
}
#unos{
    background: rgba(89, 171, 227, 0.5);
    font-weight:bold;
     font-size:25px;
    padding:5px;
}
#unosParagraf{
    font-style:italic;
}
  .myButton {
	-moz-box-shadow:inset 0px 0px 15px 3px #23395e;
	-webkit-box-shadow:inset 0px 0px 15px 3px #23395e;
	box-shadow:inset 0px 0px 15px 3px #23395e;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #2e466e), color-stop(1, #415989));
	background:-moz-linear-gradient(top, #2e466e 5%, #415989 100%);
	background:-webkit-linear-gradient(top, #2e466e 5%, #415989 100%);
	background:-o-linear-gradient(top, #2e466e 5%, #415989 100%);
	background:-ms-linear-gradient(top, #2e466e 5%, #415989 100%);
	background:linear-gradient(to bottom, #2e466e 5%, #415989 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#2e466e', endColorstr='#415989',GradientType=0);
	background-color:#2e466e;
	-moz-border-radius:17px;
	-webkit-border-radius:17px;
	border-radius:17px;
	border:1px solid #1f2f47;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	padding:14px 47px;
	text-decoration:none;
	text-shadow:0px 1px 0px #263666;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #415989), color-stop(1, #2e466e));
	background:-moz-linear-gradient(top, #415989 5%, #2e466e 100%);
	background:-webkit-linear-gradient(top, #415989 5%, #2e466e 100%);
	background:-o-linear-gradient(top, #415989 5%, #2e466e 100%);
	background:-ms-linear-gradient(top, #415989 5%, #2e466e 100%);
	background:linear-gradient(to bottom, #415989 5%, #2e466e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#415989', endColorstr='#2e466e',GradientType=0);
	background-color:#415989;
}
.myButton:active {
	position:relative;
	top:1px;
}
   
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <p id="unos">
            Unos podataka:</p>
        <p id="unosParagraf">
            Ime:
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input1"></asp:TextBox>
        </p>
        <p id="unosParagraf">
            Prezime:
            <asp:TextBox ID="TextBox2" runat="server" CssClass="input1"></asp:TextBox>
        </p>
        <p id="unosParagraf">
            Adresa:
            <asp:TextBox ID="TextBox3" runat="server" CssClass="input1"></asp:TextBox>
        </p>
        <p id="unosParagraf">
            Neto iznos plate:
            <asp:TextBox ID="TextBox4" runat="server" CssClass="input1" ></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="IZRAČUNAJ"  class="myButton" />
        </p>
    </form>
</body>
</html>
