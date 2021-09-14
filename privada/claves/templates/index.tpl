<!DOCTYPE html>
<head>
	<link rel="stylesheet" type="text/css" href="../../css/colores1.css">
	<!--<link rel="stylesheet" type="text/css" href="../{$direc_css}">-->

	<script type="text/javascript">
		function refrescar() {
			var p = window.parent;
			p.location.href='../';
		}
	</script>

</head>
<body ONLOAD="self.setTimeout('refrescar()',2000);">
	<center>
		<h1 class="let">{$mensage}</h1>
		<br>
		<h1 class="let">{$mensage1}</h1>
	</center>
</body>
</html>