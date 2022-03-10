<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroEstudiantes.aspx.cs" Inherits="capaPresentacion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Estudiante" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="id_Estudiante" HeaderText="id_Estudiante" InsertVisible="False" ReadOnly="True" SortExpression="id_Estudiante" />
                    <asp:BoundField DataField="nombre_Estudiante" HeaderText="nombre_Estudiante" SortExpression="nombre_Estudiante" />
                    <asp:BoundField DataField="edad_Estudiante" HeaderText="edad_Estudiante" SortExpression="edad_Estudiante" />
                    <asp:BoundField DataField="identidad_Estudiante" HeaderText="identidad_Estudiante" SortExpression="identidad_Estudiante" />
                    <asp:BoundField DataField="carnet_Estudiante" HeaderText="carnet_Estudiante" SortExpression="carnet_Estudiante" />
                    <asp:BoundField DataField="carrera_Estudiante" HeaderText="carrera_Estudiante" SortExpression="carrera_Estudiante" />
                    <asp:BoundField DataField="direccion_Estudiantes" HeaderText="direccion_Estudiantes" SortExpression="direccion_Estudiantes" />
                </Columns>

            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myAppConnectionString %>" SelectCommand="SELECT * FROM [tbl_Estudiantes]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
