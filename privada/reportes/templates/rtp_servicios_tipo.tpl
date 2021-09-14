<!DOCTYPE html>
<html lang="esp">
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta charset="utf-8">
    {literal}
    <script type="text/javascript">
      function validar(){
        tipo = document.formu.tipo.value;
        if (document.formu.tipo.value == ""){
          alert("Por favor seleccione el tipo de Servicio");
          document.formu.tipo.focus();
          return;
        }
        ventanaCalendario = window.open("rtp_servicios_tipo1.php?id_servicio=" + tipo , "calendario", "width=600, height=550, left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
      }
    </script>
    {/literal}
  </head>
  <body>
    <div class="formu_ingreso_datos">
      <h2>RTP DE SERVICIOS POR TIPO</h2>
      <form method="post" name="formu">
        <p>
          <b>Seleccione Tipo</b>
          <select name="tipo">
            <option value="">--Seleccione--</option>
            <option value="T">Todos</option>
            <option value="1">Industrial</option>
            <option value="2">Domiciliario</option>
            <option value="3">Abastecimiento</option>
            <option value="4">Empresarial</option>
            <option value="5">Hospitalario</option>
            <option value="6">Institucional</option>
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