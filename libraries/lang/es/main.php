<?php
/*
<NPT, a web development framework.>
Copyright (C) <2009>  <NPT>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
if (!defined('XFS')) exit;

$lang = array(
	// Pages
	'US' => 'Qui&eacute;nes somos',
	'HOME' => 'Inicio',
	'ARTISTS' => 'Artistas',
	'EVENTS' => 'Eventos',
	'NEWS' => 'Noticias',
	'BLOG' => 'Blog',
	'RSS' => 'RSS',
	
	'SERVER_UPTIME' => 'Server Uptime: %s day(s) %s hour(s) %s minute(s)',
	'SERVER_LOAD' => 'Average Load: %s',
	
	// Sign
	'USERNAME' => 'Usuario',
	'PASSWORD' => 'Contrase&ntilde;a',
	
	'EMPTY_ADDRESS' => 'Debes completar tu correo electr&oacute;nico.',
	'EMPTY_PASSWORD' => 'Debes completar tu contrase&ntilde;a.',
	'BAD_ADDRESS' => 'Tu correo electr&oacute;nico es inv&aacute;lido.',
	'BAD_ALIAS' => 'Tu nombre o apellido son inv&aacute;lidos.',
	'RECORD_ALIAS' => 'El identificador de usuario ya existe.',
	'RECORD_ADDRESS' => 'El correo electr&oacute;nico ya esta registrado en la comunidad.',
	'BAD_COUNTRY' => 'La selecci&ocute;n de pa&iacute;s es inv&aacute;lida.',
	'BAD_BIRTH' => 'El formato de cumplea&ntilde;os es inv&aacute;lido.',
	
	
	'SIGNIN' => 'Entrar',
	'SIGNOUT' => 'Cerrar Sesi&oacute;n',
	'SIGN_EXIT' => 'Ha cerrado su sesi&oacute;n del sistema correctamente.',
	'SIGN_ERROR' => 'La informaci&oacute;n de usuario es incorrecta.',
	'SIGN_BLOCK' => 'La cuenta ha sido bloqueada por exceder el l&iacute;mite de intentos para ingresar.<br />Por favor revise su cuenta de email para saber como reactivarla.',
	'SIGN_POST' => 'Para publicar mensajes debes ser miembro registrado.<br /><br />Por favor <a class="italic" href="#top">inicia sesi&oacute;n</a> &oacute; <a class="bold" href="/my/register/">Crea tu cuenta de usuario aqui.</a>',
	
	// Search
	'SEARCH' => 'Consultar',
	
	// Admin Control Panel
	'ACP' => 'Panel de control',
	
	// User Control Panel
	'UCP' => 'Preferencias',
	
	// Board
	'BOARD' => 'Foro de discusi&oacute;n',
	'BOARD_CREATE_TOPIC' => 'Crear tema de discusi&oacute;n',
	
	// User misc
	'USERS' => 'Usuarios',
	'SEARCH_CONTACT' => 'Buscar usuario',
	'REGISTER' => 'Crea tu cuenta de usuario',
	'LOGIN' => 'Continuar',
	'CONFIRM' => 'Confirmar registro',
	
	// Groups
	'GROUPS' => 'Grupos',
	
	// Misc
	'ERROR' => 'Error',
	'INFORMATION' => 'Informaci&oacute;n',
	'OPTIONS' => 'Opciones',
	'EDIT' => 'Editar',
	'REMOVE' => 'Eliminar',
	'AGO' => 'hace ',
	'AGO_LESS_MIN' => 'menos de 1 minuto',
	'SAVED' => 'La informaci&oacute;n fue guardada.',
	'LOCATION' => 'Ubicaci&oacute;n',
	'LOADING' => 'Cargando...',
	'PUBLIC' => 'P&uacute;blico',
	'PRIVATE' => 'Privado',
	'REFRESH' => 'Actualizar',
	'GO' => 'Ir',
	'EMAIL' => 'Email',
	'POSTED_BY' => 'Publicado por',
	'VIEW_ALL' => 'Ver todos',
	
	'TV' => 'Televisi&oacute;n',
	
	'PAGE' => 'P&aacute;gina: ',
	'PAGES_ON' => 'P&aacute;gina <strong>%d</strong> de <strong>%d</strong>',
	'PAGES_PREV' => '&lt;&lt; <strong>Anteriores %d</strong>',
	'PAGES_NEXT' => '<strong>Siguientes %d</strong> &gt;&gt;',
	'TOPIC_PAGES_PREV' => '&lt;&lt; <strong>Anteriores %d mensajes</strong>',
	'TOPIC_PAGES_NEXT' => '<strong>Siguientes %d mensajes</strong> &gt;&gt;',
	'TOPICS_PAGES_PREV' => '&lt;&lt; <strong>Anteriores %d temas</strong>',
	'TOPICS_PAGES_NEXT' => '<strong>Siguientes %d temas</strong> &gt;&gt;',
	'PAGES_ON' => 'P&aacute;gina <strong>%d</strong> de <strong>%d</strong>',
	
	// Messages
	'REPLY' => 'Respuesta',
	'SEND_POST' => 'Env&iacute;a tu comentario',
	'POST' => 'Mensaje',
	'POSTS' => 'Mensajes',
	'EMOTICONS' => 'Emoticons',
	'VIEWS' => 'visitas',
	'REPLIES' => 'respuestas',
	'SAID' => 'dijo',
	'REPORT' => 'reporta',
	'SUBMIT' => 'Enviar',
	
	// Browser upgrade
	'BROWSER_UPGRADE_TITLE' => 'Actualiza tu navegador de internet',
	'BROWSER_UPGRADE_NOTICE' => 'Hemos verificado que usas un navegador que no est&aacute; actualizado.',
	'BROWSER_UPGRADE_LIST' => 'Te recomendamos utilizar la versi&oacute;n m&aacute;s reciente de <br /><a href="http://www.getfirefox.com/">Firefox</a>, <a href="http://www.opera.com/">Opera</a>, <a href="http://www.google.com/chrome">Chrome</a>, <a href="http://www.microsoft.com/windows/products/winfamily/ie/default.mspx">Internet Explorer</a>, <a href="http://www.apple.com/safari/">Safari</a> u <a href="http://en.wikipedia.org/wiki/List_of_web_browsers">otros</a>.',
	
	/* Display */
	'Smart_dates_ago' => 'Hace %s',
	'Smart_dates_at' => '@ %s',
	'Smart_dates_yesterday'	=> 'Ayer',
	/* Time strings */
	'Smart_dates_second' => 'segundo',
	'Smart_dates_seconds' => 'segundos',
	'Smart_dates_minute' => 'minuto',
	'Smart_dates_minutes' => 'minutos',
	'Smart_dates_hour' => 'hora',
	'Hours' => 'horas',
	
	// Misc
	'ENCODING' => 'utf-8',
	'DATE_FORMAT' => 'd M Y',
	'DATE_FORMAT_FULL' => 'd F Y',
	'YES' => 'Si',
	'NO' => 'No',
	
	'datetime_chars' => array('%d a&ntilde;o', '%d mes', '%d d&iacute;a', '%d hora', '%d minuto'),
	
	'datetime' => array(
		'Sunday'	=> 'Domingo',
		'Monday'	=> 'Lunes',
		'Tuesday'	=> 'Martes',
		'Wednesday'	=> 'Mi&eacute;rcoles',
		'Thursday'	=> 'Jueves',
		'Friday'	=> 'Viernes',
		'Saturday'	=> 'Sabado',
		
		'days' => array(
			'Domingo', 'Lunes', 'Martes', 'Mi&eacute;rcoles', 'Jueves', 'Viernes', 'Sabado'
		),

		'Sun'		=> 'Dom',
		'Mon'		=> 'Lun',
		'Tue'		=> 'Mar',
		'Wed'		=> 'Mie',
		'Thu'		=> 'Jue',
		'Fri'		=> 'Vie',
		'Sat'		=> 'Sab',

		'January'	=> 'Enero',
		'February'	=> 'Febrero',
		'March'		=> 'Marzo',
		'April'		=> 'Abril',
		'May'		=> 'Mayo',
		'June'		=> 'Junio',
		'July'		=> 'Julio',
		'August'	=> 'Agosto',
		'September' => 'Septiembre',
		'October'	=> 'Octubre',
		'November'	=> 'Noviembre',
		'December'	=> 'Diciembre',

		'Jan'		=> 'Ene',
		'Feb'		=> 'Feb',
		'Mar'		=> 'Mar',
		'Apr'		=> 'Abr',
		'Jun'		=> 'Jun',
		'Jul'		=> 'Jul',
		'Aug'		=> 'Ago',
		'Sep'		=> 'Sep',
		'Oct'		=> 'Oct',
		'Nov'		=> 'Nov',
		'Dec'		=> 'Dic',
		
		'May_short' => 'May',
		'TODAY'		=> 'Hoy',
		'YESTERDAY'	=> 'Ayer',
	)
);

?>