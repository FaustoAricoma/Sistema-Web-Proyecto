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
        
        <td align="center" width="85%"><h1>MAQUINAS DISPONIBLES</h1></td>
       
      </tr>
    </table>
       <br>
    <center>
      <table border="1" cellspacing="0">
         <tr>
          <th>NRO</th><th>NOMBRE</th><th>TIPO</th>
        </tr>
        {assign var="b" value="1"}
        {foreach item=r from=$maquinas}
        <tr>
          <td align="center">{$b}</td>
          <td>{$r.nombre}</td>
           <td>{$r.tipo}</td>
          {assign var="b" value="`$b+1`"}
        </tr>
         {/foreach}
      </table>
       <br><br>
       <b>Fecha: </b> {$fecha}
    </center>
  </body>
</html>