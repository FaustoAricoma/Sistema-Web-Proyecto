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
    <table width="95%" border="0">
      <tr>
        <td><img src="../compania/logos/{$logo_compania}" width="100%"></td>
        <td align="center" width="85%"><h1>PERSONAS_USUARIOS</h1></td>
      </tr>
    </table>
       <br>
    <center>
      <table border="1" cellspacing="0">
        <tr>
          <th>NRO</th><th>PERSONAS</th><th>NOMBRE DE USUARIO</th>
        </tr>
        {assign var="b" value="1"}
      
        {foreach item=r from=$personas_usuarios}
        <tr>
          <td align="center">{$b}</td>
          <td>{$r.nombres} {$r.ap} {$r.am}</td>
          <td>{$r.usuarioo}</td>
          {assign var="b" value="`$b+1`"}
          {/foreach}
        </tr>
      </table>
       <br><br>
       <b>Fecha: </b> {$fecha}
    </center>
  </body>
</html>