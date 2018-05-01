<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication1.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    

    <div id="contactus">
    <form id="form1" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="lbEmail" runat="server" Text="Email"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="regEmail" runat="server" ErrorMessage="Email is mandatory" ForeColor="Red" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject cannot be empty!" ControlToValidate="txtSubject" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill in the body" ControlToValidate="txtBody" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
    </p>
    <p>
    </p>
    <p>
        <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
    </form>
    </div>
        
        <div id="map">
        <script src="map.js"></script>
          <script> var map;
          function initMap() {
                  map = new google.maps.Map(document.getElementById('map'),
                  { center: { lat: 4.887916, lng: 114.949184, }, zoom: 12 });
          }
          </script>
        
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfVCHp_QlDdRdDvXQFafa-aNeO2Lccp7Q&callback=initMap"></script>
        </div>
    




</asp:Content>
