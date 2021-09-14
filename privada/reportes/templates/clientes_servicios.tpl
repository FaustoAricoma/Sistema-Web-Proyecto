<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript">
      var ventanaCalendario=false
      function imprimir(){
        ventanaCalendario = window.open("clientes_servicios1.php", "calendario", "width=600, height=550, left=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
      }
    </script>
  </head>
  <body>
    
       <br>
        <h1 align="center">CLIENTES_SERVICIOS</h1>
     
       <br>
    <center>
      <table class="listado">
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
        </tr>
         {/foreach}
      </table>
       <br><br>
       <h2>
         <input type="radio" name="seleccionar" onclick="javascript:imprimir()">Imprimir</td>
       </h2>
    </center>
  </body>
</html>