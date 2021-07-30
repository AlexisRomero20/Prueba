<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Presentacion.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txbNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Nombre" ControlToValidate="txbNombre"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Apellido Paterno"></asp:Label>
            <asp:TextBox ID="txbApp" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_App" ControlToValidate="txbApp"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Apellido Materno"></asp:Label>
            <asp:TextBox ID="txbApM" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_ApM" ControlToValidate="txbApM"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Celular"></asp:Label>
            <asp:TextBox ID="txbCelular" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Celular" ControlToValidate="txbCelular"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="txbCorreo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Correo" ControlToValidate="txbCorreo"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Colonia"></asp:Label>
            <asp:TextBox ID="txbColonia" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Colonia" ControlToValidate="txbColonia"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Calle y Numero"></asp:Label>
            <asp:TextBox ID="txbCalle" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Calle" ControlToValidate="txbCalle"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Municipio"></asp:Label>
            <asp:TextBox ID="txbMunicipio" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Municipio" ControlToValidate="txbMunicipio"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Ciudad"></asp:Label>
            <asp:TextBox ID="txbCiudad" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Ciudad" ControlToValidate="txbMunicipio"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Referencia"></asp:Label>
            <asp:TextBox ID="txbReferencia" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Referencia" ControlToValidate="txbReferencia"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Caracteristica"></asp:Label>
            <asp:TextBox ID="txbCaracteristica" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_Caracteristica" ControlToValidate="txbCaracteristica"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label12" runat="server" Text="CP"></asp:Label>
            <asp:TextBox ID="txbCP" runat="server" OnTextChanged="txbCP_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator_CP" ControlToValidate="txbCP"
            ErrorMessage="*requerido" ForeColor="Red" ValidationGroup="form_ejm"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbRespuesta" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnInsert" runat="server" Text="Insertar Nuevo Cliente" OnClick="btnInsert_Click" ValidationGroup="form_ejm" />
            <br />
        </div>
    </form>
</body>
</html>
