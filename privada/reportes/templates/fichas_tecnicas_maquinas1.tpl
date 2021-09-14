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
          <h1> FICHA TECNICA DE MAQUINA </h1>
        </td>
      </tr>
    </table>
       <br>
    <center>
      <table border="1" cellspacing="0">
        <tr>
         <td>
           <table border="0">
             {foreach item=r from=$maquina}
             <tr>
               <th align="right">Nombre</th><th>:</th>
                <td><input type="text" name="nombre" value="{$r.nombre}" disabled=""></td>
             </tr>
               <tr>
               <th align="right">Tipo</th><th>:</th>
                <td><input type="text" name="tipo" value="{$r.tipo}" disabled=""></td>
             </tr>
               <th align="right">Fecha de insercion</th><th>:</th>
                <td><input type="text" name="fecha_insercion" value="{$r.fec_insercion}" disabled=""></td>
             </tr>
             {/foreach}
           </table>
         </td>
        </tr>
      </table>
       <br><br>
          <b>Fecha: </b> {$fecha}
    </center>
  </body>
</html>