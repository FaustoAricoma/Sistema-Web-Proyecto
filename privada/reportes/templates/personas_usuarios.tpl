<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <script type="text/javascript">
      var ventanaCalendario=false
      function imprimir(){
        ventanaCalendario = window.open("personas_usuarios1.php", "calendario", "width=600, height=550, left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
      }
    </script>
  </head>
  <body>
    <div class="titulo_listado">
    <h1>PERSONAS_USUARIOS</h1>
    </div><br>
       <center>
      <table class="listado">
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