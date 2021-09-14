<!DOCTYPE html>
<html lang="esp">
  <head>
    <link rel="stylesheet" href="../{$direc_css}" type="text/css">
    <meta charset="utf-8">
    <script type="text/javascript" src="../../ajax.js"></script>
    <script type="text/javascript">
      function buscar(){
        var d1, d2, contenedor, ajax, url, param;
          contenedor = document.getElementById('productos1');
          d1 = document.formu.producto.value;
          d2 = document.formu.caracteristica.value;
          ajax = nuevoAjax();
          url = "ajax_buscar_productos.php";
          param = "producto="+d1+"&caracteristica="+d2;
          ajax.open("POST", url, true);
          ajax.setRequestHeader('Content-Type','application/x-www-form-urlencoded');

          ajax.onreadystatechange = function(){
            if (ajax.readyState == 4) {
              contenedor.innerHTML = ajax.responseText;
            }
          }
          ajax.send(param);
        }
        function mostrar(id_producto){
          var d1, ventanaCalendario;
          d1 = id_producto;

            ventanaCalendario = window.open("fichas_tecnicas_productos1.php?id_producto=" + d1 , "calendario", "width=600, height=550, left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status=NO, resizable=YES, location=NO")
        } 
    </script>
  </head>
  <body>
    <center>
      <h1> FICHAS TECNICAS DE PRODUCTOS</h1>
      <form action="#" method="post" name="formu">
        <table border="1" class="listado">
          <tr>
            <th>
              <b>Producto</b><br />
              <input type="text" name="producto" value="" size="25" onkeyup="buscar()">
            </th>
               <th>
              <b>Caracteristica</b><br />
              <input type="text" name="caracteristica" value="" size="50" onkeyup="buscar()">
            </th>
          </tr>
        </table>
      </form>
    </center>
    <!------BUSCADOR----->
    <center>
      <div id="productos1">
      </div>
    </center>
  </body>
</html>