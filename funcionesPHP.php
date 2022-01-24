<?php   
define('SERVIDOR',"localhost");   
define('USUARIO','root');         
define('CLAVE','');               
define('BBDD',"merceria");   

function cargarProd(){
    @$conexion=mysqli_connect(SERVIDOR,USUARIO,CLAVE,BBDD) or die("<p>Error de Conexión ".mysqli_connect_errno().": ".mysqli_connect_error()."</p>\n");
    
    mysqli_set_charset ( $conexion , 'utf8' );
    
    $sql = "SELECT * FROM `productos`"; 
    
    $resultado=mysqli_query($conexion,$sql) or
    die("<p>Error: ".mysqli_errno($conexion).": ".mysqli_error($conexion)."</p>");

    print"<article>
    <div id='galeria'>
            <div id='contenedor_imagenes'>
                <h2 class='col-12 display-2'>Novedades</h2>
                <h2 class='col-12 display-4'>Adornos</h2>";
   
    while($fila=mysqli_fetch_assoc($resultado)){
        if($fila['ID'] == 1){
            print "<div class='imagen'>
            <a href='#'>
            <img src='$fila['imagen']' height='300' width='350'>
            </a><br>
            <h3>$fila['nombre']</h3><br>
            <p>$fila['descripcion']</p>
            <p>Precio: $fila['precio']</p>
            <p>Stock: $fila['stock']</p>
        </div>";
        }
    }  
    
    print "</div></div></article>";
   
    mysqli_free_result($resultado);
    mysqli_close($conexion);

}


?>