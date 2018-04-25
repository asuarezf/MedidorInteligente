/*
	Versión 1.0
*/
/* ELEMENTOS COMUNES */
// Quitar el &nbsp; de inputs tipo texto, password y textareas.
$(document).ready( function(){
	// Quitar el &nbsp; de inputs tipo texto, password y textareas.
	$("input[type='text'], input[type='password'], textarea").focus( function() {
		if (($(this).attr("value")) && ($(this).attr("value").charCodeAt(0) == 32 || $(this).attr("value").charCodeAt(0) == 160) && ($(this).attr("value").length == 1)) {
			this.value = "";
			return false;
		}
	});
});

// Resaltar input(text-password)/textarea seleccionado
$(document).ready(function(){
	$("input[type='text'], input[type='password'], textarea").focus( function() {
		if ($(this).attr("readonly")) {
			// Nada
		} else {
			$(this).addClass("enfocado");
		}
		return false;
	});
	$("input[type='text'], input[type='password'], textarea").blur( function() {
		$(this).removeClass("enfocado");
	});
	$("input[type='text'], input[type='password'], textarea").each( function() {
		if ($(this).attr("readonly")) {
			$(this).addClass("solo_lectura");
		}
	});
});

// Enviar formulario
$(document).ready(function(){
	$("a.enviar_formulario").click(function(){
		$(this).parents("form:first").submit();
		return false;
	});
});

// Banner ST en Analytics
$(document).ready(function(){
	$("a.bannerST").click(function(){
		_gaq.push(['_trackEvent', 'BannerST', 'Click', division]);
	});
});

// Imprimir página
$(document).ready(function(){
	$("a.imprimir").click( function() {
		window.print();
		return false;
	});
});

//Menú horizontal multicapa
$(document).ready(function(){
	$("#menu_ppal li.item5 > ul > li > a").addClass("divisiones");
	$("#menu_ppal li.item5 ul").css("display","block");
	
	//Span para simular el borde superior de ul ul
	$("#menu_ppal > ul > li > ul").prepend("<span class='borde'><\/span>");
	$("#menu_ppal > ul > li > ul span.borde").each(function(){
		var anchoUL = $(this).parent().width()-8;
		var anchoA	= $(this).parent().prev().width();
		$(this).width(anchoUL - anchoA );													 
	});
	// Creamos dinamicamente "enlace_anterior" y "enlace_posterior"
	$("#menu_ppal > ul").before('<a href="#" id="enlace_anterior">x</a>');
	$("#menu_ppal > ul").after('<a href="#" id="enlace_posterior">x</a>');
	// Comportamiento para el ratón
	$("#menu_ppal > ul > li.parent").mouseover( function() {
		$(this).find("ul").css("left","0px");
	});
	$("#menu_ppal > ul > li.parent").mouseout( function() {
		$(this).find("ul").css("left","-10000px");
	});

	// Eliminamos todos los parent de segundo nivel
	// Producian que no funcionase el click
	$("#menu_ppal > ul li.parent li.parent").each( function() {
		$(this).removeClass("parent");
	});

	// Comportamiento para el teclado
	$("#menu_ppal > ul li a").focus( function() {
		$("#menu_ppal > ul li.parent ul").css("left","-10000px");
	});
	$("#menu_ppal > ul li.parent a").focus( function() {
		$(this).parents("li.parent:first").find("ul").css("left","0px");
	});
	$("#menu_ppal > ul li.parent li a").focus( function() {
		$(this).parents("li.parent:first").find("ul").css("left","0px");
	});
	$("#enlace_anterior, #enlace_posterior").focus( function() {
		$("#menu_ppal > ul li.parent ul").css("left","-10000px");
	});
	$("#menu_ppal > ul > li").hover(
		function(){
			$(this).children("a").addClass("representarHover");
		},
		function(){
			$(this).children("a").removeClass("representarHover");
		}
	);

	// Pone todas las Divisiones y UNEs en un falso select
	$('#menu_unes_select .selectBox').after($('#menu_ppal ul.menu li.item5>ul').clone().hide().addClass("menu"));
	$('#menu_unes_select ul.menu span.borde').remove();
	$('#menu_unes_select ul.menu ul ul').remove();
	$('#menu_unes_select ul.menu *').removeAttr('style');
	$('#menu_unes_select').click(function () {
		$(this).find('ul.menu').slideToggle('medium');
		$(this).find('.selectBox').toggleClass('active');
	});
});
$(document).ready(function(){
	//Hacer clicable todo Modulo de Presupuesto en Servicios Tecnológicos
	$(".modPresupuesto").click(function() {
		location.href=$(this).find("a:last").attr("href");
	});
});
$(document).ready(function(){
	//Hacer clicable todo Modulo de Contacto en Servicios Tecnológicos
	if($(".modContactoLab a").get().length==1) {
		$(".modContactoLab").click(function() {
			location.href=$(this).find("a:last").attr("href");
		});
		$(".modContactoLab").hover( function () {
			$(this).addClass("hover");
			},
			function () {
			$(this).removeClass("hover");
		});
	}
});
$(document).ready(function(){
	//Galería de fotos a 2 columnas con colAux e imágenes rectangulares. Se usa en servicios tecnológicos 
	$("div.colCont .fotoGaleria:not(.notasPrensa) img:odd").css("margin-right",0);
	$("#articulo>div.colCont .fotoGaleria.cols3 a:nth-child(3n) img").css("margin-right",0);
	$("#articulo>div.colCont .fotoGaleria.notasPrensa a:nth-child(3n) img").css("margin-right",0);
	$("#articulo>div:not(.colCont) .fotoGaleria.notasPrensa a img").css("margin-right",24);
	$("#articulo>div:not(.colCont) .fotoGaleria.notasPrensa a:nth-child(4n) img").css("margin-right",0);
	$("#articulo .fotoGaleria.cols3 .imgPieCentro:nth-child(3n)").css("margin-right",0);
	$("#articulo .fotoGaleria.cols3 .imgPieCentro .tdBorde img").css("width",230);
	$("#articulo .fotoGaleria.cols3 .imgPieCentro:nth-child(3n+1)").css("clear","left");
});
$(document).ready(function(){
	//Redistribuir en acordeon las Industrias del Buscador Servicios Tecnológicos
	$(".serviciosIndustria").addClass("conJS");
	$(".serviciosIndustria:even").addClass("even");

	$(".serviciosIndustria h3").click(function () {
		if ($(this).parent().parent().hasClass("activo")) {
			$(".serviciosIndustria").removeClass("activo");
		} else {
			switch_Industrias("#"+$(this).parents(".serviciosIndustria").attr("id"));
		}
		$(this).scrollToItem('fast');
	});
	if($(".serviciosIndustria").get(0)){//Mostramos el item seleccionado si se está llamando a su ancla
		switch_Industrias(document.location.hash);
	}
	//Resaltamos en el menú la familia del servicio cuando estamos en el detalle del servicio.
	var migaIndustria=$("#migas .breadcrumbs a.pathway[href!='#'][href*='#']:first").attr("href");
	
	if(migaIndustria &&  migaIndustria.split("#")){
		migaIndustria= migaIndustria.split("#")[1];
		switch_Industrias("#"+migaIndustria);
	}
});


$(document).ready(function(){
	$("li.item714").html($(".buscaServicios").html()).addClass("menuServiciosBuscador");
	$(".buscaServicios").remove();
	var idiomaBuscaServicios="";
	if (idioma=="eu"){ //Borrar cuando se publiquen los servicios en euskera
		idiomaBuscaServicios="es";
	} else {
		idiomaBuscaServicios=idioma;
	}
	$("#q").autocomplete({
		source: "../../../../templates/tecnalia/includes/buscarServicios.php?lang="+idiomaBuscaServicios,
		minLength: 2,
		select: function(event, ui){
			$(location).attr('href', 'http://www.tecnalia.com/index.php?option=com_flexicontent&view=items&cid=179&id=' + ui.item.id + '&Itemid=714');
		}
	});
	
	$(".menuServiciosBuscador .menuIndustrias ul li a").click(function(){
		switch_Industrias("#"+$(this).attr("href").split("#")[1]);
	});
});

function switch_Industrias(obj){
	$(".serviciosIndustria").removeClass("activo");
	$(".menuIndustrias ul li.active").removeClass("active");
	$(obj).addClass("activo").scrollToItem('fast');
	$(".menuIndustrias a[href$='"+obj+"']").parent("li").addClass("active");
}

 
jQuery.fn.scrollToItem = function(time){
  if ($(this).offset() != undefined){
	  var t = $(this).offset().top;
	  if(t > 10){t = t - 10}
	  if(time == 'fast'){time = 400}
	  if(time == 'medium'){time = 800}
	  if(time == 'slow'){time = 1200}
	  if(time == null){time = 1000}
	  $('html,body').animate({scrollTop: t}, time);
  }
}

$(document).ready(function(){
	//Galeria de imágenes con autoplay si hay varias imágenes en la página
	//Si hay galeria tiene que ir por delante para que no se sobrescriban los alt con "Se abrirá en ventana nueva"
	var nslideshow;
	$("a[href$='.jpg'], a[href$='.jpeg'], a[href$='.gif'], a[href$='.png'], a[href$='.bmp']").each(function(i) {															
		if (!$(this).attr("rel") || ($(this).attr("rel").indexOf("prettyPhoto")<0 && $(this).attr("rel").indexOf("download")<0)) {
			$(this).attr("rel","prettyPhoto[galeria]");
		}
		if ($(this).length > 1) {
			nslideshow = true;
		} else {				
			nslideshow = false;
		}
	});
	$("a[rel*='prettyPhoto']").prettyPhoto({
		animationSpeed:'slow',
		theme:'tecnalia',
		slideshow:5000,
		autoplay_slideshow: nslideshow,
		overlay_gallery: nslideshow,
		markup:'<div class="pp_pic_holder"> \
				  <div class="ppt">&nbsp;</div> \
				  <div class="pp_top"> \
				   <div class="pp_left"></div> \
				   <div class="pp_middle"></div> \
				   <div class="pp_right"></div> \
				  </div> \
				  <div class="pp_content_container"> \
				   <div class="pp_left"> \
				   <div class="pp_right"> \
					<div class="pp_content"> \
					 <div class="pp_loaderIcon"></div> \
					 <div class="pp_fade"> \
					  <a href="#" class="pp_expand" title="'+t_expand_img+'">{expand}</a> \
					  <div class="pp_hoverContainer"> \
					   <a class="pp_next" href="#" title="'+t_next+'">'+t_next+'</a> \
					   <a class="pp_previous" href="#" title="'+t_previous+'">'+t_previous+'</a> \
					  </div> \
					  <div id="pp_full_res"></div> \
					  <div class="pp_details clearfix"> \
					   <p class="pp_description"></p> \
					   <p class="pp_download"></p> \
					   <a class="pp_close" href="#" title="'+t_close+'">'+t_close+'</a> \
					   <div class="pp_nav"> \
						<a href="#" class="pp_arrow_previous" title="'+t_previous+'">'+t_previous+'</a> \
						<p class="currentTextHolder">0/0</p> \
						<a href="#" class="pp_arrow_next" title="'+t_next+'">'+t_next+'</a> \
					   </div> \
					  </div> \
					 </div> \
					</div> \
				   </div> \
				   </div> \
				  </div> \
				  <div class="pp_bottom"> \
				   <div class="pp_left"></div> \
				   <div class="pp_middle"></div> \
				   <div class="pp_right"></div> \
				  </div> \
				 </div> \
				 <div class="pp_overlay"></div>',
		social_tools:'',
		download_markup:''
	});
});

$(document).ready(function(){
	$('.tabs a').click(function(){
		switch_tabs($(this));
		return false;
	});
 
	switch_tabs($('.defaulttab'));
 
});
function switch_tabs(obj){
	$('.tab-content').hide();
	$('.tabs a').removeClass("selected");
	var id = obj.attr("rel");
 
	$('#'+id).show();
	obj.addClass("selected");
};

$(document).ready(function(){
	$('.proyectosCofinanciados .programa h3 a').click(function(){
		if(!$(this).parents(".programa.activo").get(0)){
			$('.programa').removeClass("activo");
			$(this).parents(".programa").addClass("activo");
			$(this).scrollToItem('fast');
		}else {
			$(this).parents(".programa").removeClass("activo");
		}
		return false;
	});
	$('.proyectosCofinanciados .programa table').each(function(){
		var rows = $(this).find("tr").length-1;
    	var numCols = $(this).find("th").length;
		for ( var i=1; i<=numCols; i++ ) {
			if ( $(this).find("td:nth-child(" + i + "):empty").length == rows ) {
				$(this).find("td:nth-child(" + i + ")").hide(); //hide <td>'s
				$(this).find("th:nth-child(" + i + ")").hide(); //hide header <th>
			}
		}
	});
	$('.proyectosCofinanciados .programa table tr').hover(
		function () {
			$(this).addClass("gris");
		},
		function () {
			$(this).removeClass("gris");
		}
	);
});

function hideEmptyCols(table) {
    var rows = $("tr", table).length-1;
    var numCols = $("th", table).length;
    for ( var i=1; i<=numCols; i++ ) {
        if ( $($("td:nth-child(" + i + "):empty", table)).length == rows ) {
            $("td:nth-child(" + i + ")", table).hide(); //hide <td>'s
            $("th:nth-child(" + i + ")", table).hide(); //hide header <th>
        }
    }
} 
									
// Abrir documentos y paginas en ventana nueva y registrarlo en Google Analytics
$(document).ready(function(){
	//IMPORTANTE. Se debe modificar "carpetaDocs" por el directorio donde el admin sube los documentos e imágenes.
	var carpetaDocs="images/";
	var url="";
	var dominio=location.hostname;
	//Todos los enlaces a contenidos fuera del dominio se abren en ventana nueva					   
	$("a[href^='http']").each(function(){
		var url = $(this).attr("href").toLowerCase(); 
		if(url.indexOf("http://"+dominio)==-1 && url.indexOf("https://"+dominio)==-1) {
	    	$(this).attr("rel", $(this).attr("rel") + " external");
		}
	});
	//Todos los enlaces a documentos locales en ventana nueva
	$("a[href*='"+carpetaDocs+"']").each(function(){
		url=$(this).attr("href").toLowerCase(); 
	    if(url.indexOf("http://"+dominio)==0 || url.indexOf("https://"+dominio)==0 || url.indexOf("http")!=0){
	    	$(this).attr("rel", $(this).attr("rel") + " external");
	    }
	});
	//Todos los external se abren en ventana nueva y se le añade al title en "Se abrirá en ventana nueva"
	//IMPORTANTE. En todas las páginas se debe incluir la variable ventana_nueva con el texto correcto según el idioma
	$("a[rel*='external']:not([rel*='prettyPhoto'])").each(function(){
		$(this).attr("target", "_blank");
		if (!$(this).attr("title")) {
			$(this).attr("title", ventana_nueva);
		} else {
			$(this).attr("title", $(this).attr("title") + " (" + ventana_nueva + ")");
		}		
	});
	//Registro en GA de los enlaces externos. Se puede consultar en GA->Contenido->Eventos->Enlace externo->Etiqueta de evento
	$("a[rel*='external']").click(function(){
		url = $(this).attr("href").toLowerCase();
	    if(url.indexOf("http://"+dominio)!=0 && url.indexOf("https://"+dominio)!=0 && url.indexOf("http")==0){
	    	_gaq.push(['_trackEvent', 'Enlace externo', 'Click', url]);
		} else {
			console.log(url);
		}
	});
	//Registro en GA de los mailto. Se puede consultar en GA->Contenido->Eventos->Email->Etiqueta de evento
	$("a[href^='mailto']").click(function(){
		var url = $(this).attr("href").toLowerCase().replace(/^mailto\:*/i, "");
		_gaq.push(['_trackEvent', 'Email', 'Click', url]);
	});
	//Registro en GA de los enlaces a documentos. Se puede consultar en GA->Contenido->Paginas. Aparecerán los documentos visitados con su url.
	$("a[href^='images/'],a[href^='/images/'],a[href^='"+location.hostname+"/images/']").click(function(){
		var url = $(this).attr("href").toLowerCase().split(location.hostname).reverse()[0];
		_gaq.push(['_trackPageview', url]);
	});
});

// Deshabilitar botones de formulario una vez se han pulsado
$(document).ready(function(){
	$(".botones_formulario input#enviar").click(function(){
		if ($(this).data('enviado') == 1) {
			return false;
		} else {
			$(this).data('enviado', 1);
			return true;
		}
	});
});