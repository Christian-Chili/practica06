<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MantenimientoBD.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            
            <table style="width:100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>MANTENIMIENTO DEL CLIENTE</td>
                    
                </tr>
                <tr>
                    <td>CODIGO:</td>
                    <td>
            <asp:TextBox ID="txtcodigo" runat="server" Height="16px" Width="102px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="#FF3300" ControlToValidate="txtcodigo" ErrorMessage="Debes ingresar el codigo del cliente"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td>NOMBRES:</td>
                    <td>
            <asp:TextBox ID="txtnombres" runat="server" Height="17px" Width="107px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BackColor="#FF3300" ControlToValidate="txtnombres" ErrorMessage="Debes Ingresar el nombre y apellido del cliente"></asp:RequiredFieldValidator>
                    </td>
                   
                </tr>
                <tr>
                    <td>DIRECCION:</td>
                    <td>
                        <asp:TextBox ID="txtdireccion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#FF3300" ControlToValidate="txtdireccion" ErrorMessage="Debes Ingresar la direccion del cliente"></asp:RequiredFieldValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td>TELEFONO:</td>
                    <td>
                        <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td>E-MAIL:</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="#FF3300" ControlToValidate="txtemail" ErrorMessage="el correo electronico ingresado no es valido" ValidationExpression="\S+@\S+\.\S+" Display="None"></asp:RegularExpressionValidator>
                    </td>
                   
                </tr>
                  <tr>
                    <td>EDAD:</td>
                    <td>
                        <asp:TextBox ID="txtedad" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" BackColor="#FF3300" ControlToValidate="txtedad" ErrorMessage="La edad ingresada debe estar en un rango de 18 a 100" MaximumValue="100" MinimumValue="18" Type="Integer" Display="None"></asp:RangeValidator>
                      </td>
                    
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Button ID="btngrabar" runat="server" Text="Grabar" OnClick="btngrabar_Click" />
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style1">
            <asp:Label ID="lblresul" runat="server" Text="lblresult"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                    
                </tr>
            </table>
          
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="Mostrar todos los clientes" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        
    </form>
   
</body>
</html>
