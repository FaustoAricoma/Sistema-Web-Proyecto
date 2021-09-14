<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript">
      var ventanaCalendario=false
      function imprimir(){
        ventanaCalendario = window.open("empleados_disponibles1.php", "calendario", "width=600, height=550, left=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
      }
    </script>
  </head>
  <body>
    
       <br>
        <h1 align="center">EMPLEADOS DISPONIBLES</h1>
     
       <br>
    <center>
      <table class="listado">
        <tr>
          <th>NRO</th><th>NOMBRES Y APELLIDOS</th><th>CI</th><th>PROFESION</th><th>DIRECCION</th>
        </tr>
        {assign var="b" value="1"}
        {foreach item=r from=$empleados}
        <tr>
          <td align="center">{$b}</td>
          <td>{$r.nombres}{$r.apellidos}</td>
          <td>{$r.ci}</td>
          <td>{$r.profesion}</td>
           <td>{$r.direccion}</td>
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