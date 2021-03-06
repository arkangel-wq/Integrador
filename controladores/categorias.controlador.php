<?php

class ControladorCategorias{
 
	/*=============================================
	CREAR CATEGORIAS
	=============================================*/

	static public function ctrCrearCategoria(){
		if (isset($_POST['nuevaCategoria'])){
			if (preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST['nuevaCategoria'])){
				$tabla="categorias";
				$datos = $_POST["nuevaCategoria"];
				$respuesta = ModeloCategorias::mdlIngresarCategoria($tabla,$datos);
				if($respuesta=="ok"){
					echo"<script>
					 Swal.fire({
					  title: 'Success!',
					  text: '¡Se ha registrado una nueva categoria correctamente!',
					  icon: 'success',
					  confirmButtonText:'Ok'
					  }).then((result)=>{
					   if(result.value){
						window.location = 'categorias';
					   }
					  })
					</script>";
				   }
			}else{
				echo ("<script>

					Swal.fire({
							  title: 'Error!',
							  text: '¡La categoria no puede ir  vacia!',
							  icon: 'error',
							  confirmButtonText: 'Ok'
						
							});

				</script>");
			}

		}
		

	}

	/*=============================================
	MOSTRAR CATEGORIAS
	=============================================*/

	static public function ctrMostrarCategorias($item, $valor){

		$tabla = "categorias";

		$respuesta = ModeloCategorias::mdlMostrarCategorias($tabla, $item, $valor);

		return $respuesta;
	
	}

	/*================ =============================
	EDITAR CATEGORIA
	=============================================*/

	static public function ctrEditarCategoria(){

		if (isset($_POST['editarCategoria'])){
			if (preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST['editarCategoria'])){
				$tabla="categorias";
				$datos = array('categoria' =>$_POST["editarCategoria"] , "id"=>$_POST["idCategoria"]);
				$respuesta = ModeloCategorias::mdlEditarCategoria($tabla,$datos);
				if($respuesta=="ok"){
					echo"<script>
					 Swal.fire({
					  title: 'Success!',
					  text: '¡La categoria se ha actualizaddo correctamente!',
					  icon: 'success', 
					  confirmButtonText:'Ok'
					  }).then((result)=>{
					   if(result.value){
						window.location = 'categorias';
					   }
					  })
					</script>";
				   }
			}else{
				echo ("<script>

					Swal.fire({
							  title: 'Error!',
							  text: '¡La categoria no puede ir vacia!',
							  icon: 'error',
							  confirmButtonText: 'Ok'
						
							});

				</script>");
			}

		}
		

	}

	/*=============================================
	BORRAR CATEGORIA
	=============================================*/

	static public function ctrBorrarCategoria(){

		if(isset($_GET["idCategoria"])){

			$tabla ="Categorias";
			$datos = $_GET["idCategoria"];

			$respuesta = ModeloCategorias::mdlBorrarCategoria($tabla, $datos);

			if($respuesta == "ok"){

			echo"<script>
					 Swal.fire({
					  title: 'Success!',
					  text: '¡La categoria se ha eliminado Correctamente !',
					  icon: 'success', 
					  confirmButtonText:'Ok'
					  }).then((result)=>{
					   if(result.value){
						window.location = 'categorias';
					   }
					  })
					</script>";
			}
		}
		
	}
}
