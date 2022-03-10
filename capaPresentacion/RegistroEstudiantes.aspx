<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroEstudiantes.aspx.cs" Inherits="capaPresentacion.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-sm ">
                                    <asp:GridView ID="GridView1" style="margin-left:0px; margin-top:50px; text-align:left; text-decoration-line: none;" runat="server" AutoGenerateColumns="False" DataKeyNames="id_Estudiante" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowSorting="True" CellPadding="4" ForeColor="#333333"  GridLines="Horizontal"  CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="rowUpdatingEvents" >
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="id_Estudiante" HeaderText="id_Estudiante" InsertVisible="False" ReadOnly="True" SortExpression="id_Estudiante" />
                                            <asp:BoundField DataField="nombre_Estudiante" HeaderText="nombre_Estudiante" SortExpression="nombre_Estudiante" />
                                            <asp:BoundField DataField="edad_Estudiante" HeaderText="edad_Estudiante" SortExpression="edad_Estudiante" />
                                            <asp:BoundField DataField="identidad_Estudiante" HeaderText="identidad_Estudiante" SortExpression="identidad_Estudiante" />
                                            <asp:BoundField DataField="carnet_Estudiante" HeaderText="carnet_Estudiante" SortExpression="carnet_Estudiante" />
                                            <asp:BoundField DataField="carrera_Estudiante" HeaderText="carrera_Estudiante" SortExpression="carrera_Estudiante" />
                                            <asp:BoundField DataField="direccion_Estudiantes" HeaderText="direccion_Estudiantes" SortExpression="direccion_Estudiantes" />

                                            <asp:CommandField ButtonType="Link" ShowEditButton="true" />

                                        </Columns>

                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />


                                    </asp:GridView>

                            </table>
                    </div>
                </div>
            </div>


       <div class="container" style="margin-top:20px; text-align:center;" >
           <div class="row">
               <div class="col-lg-6" style="margin-top:0px;">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
                      Registrar Estudiante</button>
               </div>
               <div class="col-lg-6" style="margin-top:0px;">
                   <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#myModal2">
                      Eliminar Estudiante
                    </button>
               </div>
           </div>
       </div>

            <!--Modal para agregar-->
        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
              <div class="modal-content">

                <!--Header del modal -->
                <div class="modal-header">
                  <h4 class="modal-title">Registrar estudiante</h4>
                  <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Body -->
                  <div class="modal-body">
                      <div class="mb-3">
                          <label for="" class="col-form-label">Nombre:</label>
                          <asp:TextBox class="form-control" ID="Nombre_Estudiante" runat="server" placeholder=""></asp:TextBox>
                      </div>
                      <div class="mb-3">
                          <label for="" class="col-form-label">Edad:</label>
                          <asp:TextBox class="form-control" ID="Edad_Estudiante" runat="server" placeholder=""></asp:TextBox>
                      </div>
                      <div class="mb-3">
                          <label for="" class="col-form-label">Carnet:</label>
                          <asp:TextBox class="form-control" ID="Carnet_Estudiante" runat="server" placeholder=""></asp:TextBox>
                      </div>
                      <div class="mb-3">
                          <label for="" class="col-form-label">DUI:</label>
                          <asp:TextBox class="form-control" ID="Identidad_Estudiante" runat="server" placeholder=""></asp:TextBox>
                      </div>
                      <div class="mb-3">
                          <label for="" class="col-form-label">Carrera:</label>
                          <asp:TextBox class="form-control" ID="Carrera_Estudiante" runat="server" placeholder=""></asp:TextBox>
                      </div>
                      <div class="mb-3">
                          <label for="" class="col-form-label">Direccion:</label>
                          <asp:TextBox class="form-control" ID="Direccion_Estudiante" runat="server"></asp:TextBox>
                      </div>
                      <asp:Button class="btn btn-primary" ID="btnEnviar" OnClick="btnEnviar_Click" runat="server" Text="Enviar datos" />
                  </div>


                <!-- footer -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>

              </div>
            </div>
        </div>



            <!--Modal para eliminar-->
        <div class="modal fade" id="myModal2">
            <div class="modal-dialog">
              <div class="modal-content">

                <!--Header del modal -->
                <div class="modal-header">
                  <h4 class="modal-title">Registrar estudiante</h4>
                  <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <!-- Body -->

                  <div class="modal-body">
                      <div class="mb-3">
                          <label for="" class="col-form-label">Ingrese ID del estudiante:</label>
                          <asp:TextBox class="form-control" ID="txtElimID" runat="server" placeholder=""></asp:TextBox>
                      </div> 
                      <asp:Button type="submit" ID="btnEliminar" OnClick="btnEliminar_Click" runat="server" Text="Eliminar" />
                  </div>
              </div>
            </div>
        </div>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myAppConnectionString %>" SelectCommand="SELECT * FROM [tbl_Estudiantes]"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
