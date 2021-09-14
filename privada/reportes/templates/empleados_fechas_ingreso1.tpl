<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript">
      var ventanaCalendario=false
      function imprimir(){
        if (confirm(' Desea Imprimir ?')) {
          window.print();
        }
      }
    </script>
  </head>
  <body style='cursor: pointer;cursor: hand' onclick='imprimir();'>
    <table width="100%" border="0">
      <tr>
        <td><img src="../compania/logos/{$logo_compania}" width="70%"></td>
        <td align="center" width="80%">
          <h1>EMPLEADOS CON FECHAS DE INGRESO</h1>
        </td>
      </tr>
    </table>
       <br>
    <center>
      <table border="1" cellspacing="0">
        <tr>
          <th>NRO</th><th>EMPLEADOS</th><th>PROFESION</th><th>FECHA DE INGRESO</th>
        </tr>
        {assign var="b" value="1"}
      
        {foreach item=r from=$empleados_fechas_ingreso1}
        <tr>
          <td align="center">{$b}</td>
          <td>{$r.nombres} {$r.apellidos}</td>
          <td>{$r.profesion}</td>
          <td align="center">{$r.fech_ingreso}</td>
          {assign var="b" value="`$b+1`"}
          {/foreach}
        </tr>
      </table>
       <br><br>
    </center>
    <b>DEL : </b> {$fecha1} <b>A :</b> {$fecha2}
  </body>
</html>