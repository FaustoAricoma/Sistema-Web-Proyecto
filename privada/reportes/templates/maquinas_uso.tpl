<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript">
      var ventanaCalendario=false
      function imprimir(){
        ventanaCalendario = window.open("maquinas_uso1.php", "calendario", "width=600, height=550, left=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
      }
    </script>
  </head>
  <body>
        <br>   
       <h1 align="center">MAQUINAS DISPONIBLES</h1>
      
       <br>
    <center>
      <table class="listado">
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
       <h2>
         <input type="radio" name="seleccionar" onclick="javascript:imprimir()">Imprimir</td>
       </h2>
    </center>
  </body>
</html>