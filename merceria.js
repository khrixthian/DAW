$(document).ready(function(){
	var altura = $('.menu').offset().top;
	
	$(window).on('scroll', function(){
		if ( $(window).scrollTop() > altura ){
			$('.menu').addClass('menu-fixed');
		} else {
			$('.menu').removeClass('menu-fixed');
		}
	});
	cargarProd();
	crearDialogo0();

});

function cargarProd(){
	// alert('hola');
	// $('#cargarProductos').load('paracargarproductos.php');
	$('#ventTodo1Prod').click(function(){
		mostrardialogo1alumno();
	});
}

//para levantar todos los datos de un producto al clicar en la foto
function crearDialogo0(){
	//antes de empezar, estara vacio
	$('#ventTodo1Prod').dialog({
		autoOpen: false,
	show: {
        effect: "blind",
        duration: 1000
      },
    hide: {
        effect: "explode",
        duration: 1000
      },
	buttons:{
		"OK":function(){
			
			$('#ventTodo1Prod').dialog('close');
			console.log('aceptado');
		}
	}
	});
}

function mostrardialogo1alumno(){
	$('#ventTodo1Prod p').load('paracargarproductos.php');
	$('#ventTodo1Prod').dialog("open");
}
