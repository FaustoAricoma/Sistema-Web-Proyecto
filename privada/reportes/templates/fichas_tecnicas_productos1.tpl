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
          <h1> FICHA TECNICA DE PRODUCTO </h1>
        </td>
      </tr>
    </table>
       <br>
    <center>
      <table border="1" cellspacing="0">
        <tr>
         <td>
           <table border="0">
             {foreach item=r from=$producto}
             <tr>
               <th align="right">Producto</th><th>:</th>
                <td><input type="text" name="producto" value="{$r.producto}" disabled=""></td>
             </tr>
               <tr>
               <th align="right">Caracteristica</th><th>:</th>
                <td><input type="text" name="caracteristica" value="{$r.caracteristica}" disabled=""></td>
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