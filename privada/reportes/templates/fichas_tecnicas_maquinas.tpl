<!DOCTYPE html>
<html lang="esp">
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta charset="utf-8">
    <script type="text/javascript" src="../../ajax.js"></script>
    <script type="text/javascript">
      function buscar(){
        var d1, d2, contenedor, ajax, url, param;
          contenedor = document.getElementById('maquinas1');
          d1 = document.formu.nombre.value;
          d2 = document.formu.tipo.value;
          ajax = nuevoAjax();
          url = "ajax_buscar_maquinas.php";
          param = "nombre="+d1+"&tipo="+d2;
          ajax.open("POST", url, true);
          ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');

          ajax.onreadystatechange = function(){
            if (ajax.readyState == 4) {
              contenedor.innerHTML = ajax.responseText;
            }
          }
          ajax.send(param);
        }
        function mostrar(id_maquina){
          var d1, ventanaCalendario;
          d1 = id_maquina;

            ventanaCalendario = window.open("fichas_tecnicas_maquinas1.php?id_maquina=" + d1 , "calendario", "width=600, height=550, left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
        } 
    </script>
  </head>
  <body>
    <center>
      <h1> FICHAS TECNICAS DE MAQUINAS</h1>
      <form action="#" method="post" name="formu">
        <table border="1" class="listado">
          <tr>
            <th>
              <b>nombre</b><br />
              <input type="text" name="nombre" value="" size="25" onkeyup="buscar()">
            </th>
               <th>
              <b>Tipo</b><br />
              <input type="text" name="tipo" value="" size="25" onkeyup="buscar()">
            </th>
          </tr>
        </table>
      </form>
    </center>
    <!------BUSCADOR----->
    <center>
      <div id="maquinas1">
      </div>
    </center>
  </body>
</html>