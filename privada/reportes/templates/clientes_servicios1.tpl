<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript">
      var ventanaCalendario=false
      function imprimir(){
        if (confirm(' Desea Imprimir el Reporte?')) {
          window.print();
        }
      }
    </script>
  </head>
  <body style='cursor: pointer;cursor: hand' onclick='imprimir();'>
    <table width="100%" border="0">
      <tr>
        <td><img src="../compania/logos/{$logo_compania}" width="95%"></td>
        
        <td align="center" width="85%"><h1>CLIENTES_SERVICIOS</h1></td>
       
      </tr>
    </table>
       <br>
    <center>
      <table border="1" cellspacing="0">
        <tr>
            <th>NRO</th><th>CLIENTE</th><th>DIRECCION</th><th>SERVICIO REALIZADO</th>
        </tr>
        {assign var="b" value="1"}
        {foreach item=r from=$clientes_servicios}
        <tr>
          <td align="center">{$b}</td>
          <td>{$r.nombre}</td>
          <td>{$r.direccion}</td>
          <td>{$r.descripcion}</td>
          {assign var="b" value="`$b+1`"}
          {/foreach}
        </tr>
      </table>
       <br><br>
       <b>Fecha: </b> {$fecha}
    </center>
  </body>
</html>