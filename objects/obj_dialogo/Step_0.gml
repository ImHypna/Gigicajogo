if inicializar == false{
	scr_dialogos();
	inicializar = true;
}

if mouse_check_button(mb_left){
	if pagina < array_length(texto) - 1{
		pagina++
	}else
		global.dialogo = false;
		instance_destroy();
	}

