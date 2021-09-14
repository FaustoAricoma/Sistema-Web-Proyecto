<!DOCTYPE html>
<html lang="esp">
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta charset="utf-8">
    {literal}
    <script type="text/javascript">
      function validar(){
        profesion = document.formu.profesion.value;
        if (document.formu.profesion.value == ""){
          alert("Por favor seleccione la profesion");
          document.formu.profesion.focus();
          return;
        }
        ventanaCalendario = window.open("rtp_emp_profesion1.php?profesion=" + profesion , "calendario", "width=600, height=550, left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
      }
    </script>
    {/literal}
  </head>
  <body>
    <div class="formu_ingreso_datos">
      <h2>RTP DE EMPLEADOS POR PROFESION</h2>
      <form method="post" name="formu">
        <p>
          <b>Seleccione Profesion</b>
          <select name="profesion">
            <option value="">--Seleccione--</option>
            <option value="Todos">Todos</option>
            <option value="ama de casa">Amas de casa</option>
            <option value="supervisora">Supervisores</option>
            <option value="operador">Operadores de Maquinas</option>
            <option value="chofer"> Choferes</option>
          </select>
        </p>
        <p>
          <input type="hidden" name="accion" value="">
          <input type="button" value="Aceptar" onclick="validar();" class="boton">
        </p>
      </form>
    </div>
  </body>
</html>