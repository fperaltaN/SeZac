function CargaProg(){
	$.ajax({
		url:"../../class/perfil/obt_prog_convo.ajax.php",
		dataType:"json",
		type:'POST',
		data:{tipo:'1'},
		success:function(data)
		{
			var div='<div class="large-12 columns">';
			var cont = "";
			var cont_gral = "";
			if (data.res>0)
			{
				$("#div_ordena").css("display","none");
				$.each(data.aaData,function(index)
				{
					cont=cont+'<div class="small-12 medium-4 large-4 columns"> <div style="min-height:100px; margin:20px 0px 0px 0px;; width:100%;"> <img src="'+data.aaData[index][10]+'" width="100%" id="img_' + data.aaData[index][1] +'" /></div><div style="background:#9DD06B;padding:8px 12px 8px 20px;" class="banner"><h5><b>' + data.aaData[index][3] + '</b></h6><h5>Monto total: <strong>$'+ data.aaData[index][6] +'</strong></h5><p class="point"><a data-toggle="modal" data-reveal-id="confirma" href="#"" class="valida_compa" id="compatible_'+ data.aaData[index][1] +'" name="'+ data.aaData[index][1] +'"><span class="awe-random point"></span><span class="point"> Compatibilidad con otras becas</span></a><a target="_blank" href="'+ data.aaData[index][5] +  '"><p class="point"><span class="awe-list-alt"></span> Detalles del programa</p></a> <div align="right"><button class="btn btn-flat btn-primary button expand val_solicitud " ruta="'+ data.aaData[index][9] + '" name="'+  data.aaData[index][7]  +'" gpo="'+ data.aaData[index][4] +'" id="btn_' + data.aaData[index][1] +'" diri="' + data.aaData[index][11] +'" tcar="' + data.aaData[index][12] +'" acar="' + data.aaData[index][13] + '" incompa="' + data.aaData[index][14] + '">Solicitar esta beca</button></div></div><div id="c'+data.aaData[index][1]+'"></div></div>';
					if(index == 0 || index == 3 || index == 6 || index == 9 || index == 12 || index == 15 || index == 18 || index == 21 || index == 24 || index == 27 || index == 30 || index == 33 || index == 36 || index == 39 || index == 42 || index == 45 || index == 48 || index == 51 || index == 54 || index == 57 || index == 60){
						cont_gral=cont_gral+div+cont;
						cont = "";
					}else if(index == 2 || index == 5 || index == 8 || index == 11 || index == 14 || index == 17 || index == 20 || index == 23 || index == 26 || index == 29 || index == 32 || index == 35 || index == 38 || index == 41 || index == 44 || index == 47 || index == 50 || index == 53 || index == 56 || index == 59){
						cont_gral=cont_gral+cont+'</div>';
						cont = "";
					}else{
						cont_gral=cont_gral+cont;
						cont = "";
					}

					
				})
$("#contenedor").append(cont_gral);
}
else
{
	$("#div_ordena").css("display","block");
}

},
error:function(xhr, textStatus, errorThrown)
{
	//alert("error");
	$('#mens-alert').html("<div data-alert class='alert-box info radius'>error<a href='#' class='close'>&times;</a></div>");
	$(document).foundation('alert', 'reflow');
}
});           
}

function CargaProg_Pronabes(){
	$.ajax({
		url:"../../class/perfil/obt_prog_convo.ajax.php",		   
		dataType:"json",
		type:'POST',
		data:{tipo:2},
		success:function(data){			  			   
			if (data.res>0){
				$("#div_ordena").css("display","none");	
				$("#contenedor").append('<div class="small-12 medium-4 large-6 columns" data-equalizer-watch><div style="min-height:100px; margin:20px 0px 0px 0px;; width:100%;"> <img src="" width="100%" id="img_' + data.id_convocatoria +'" /></div><div style="background:#9DD06B;" class="banner"><h6>' + data.nombre_programa + '</h6><class="point"><a href="#confirma" data-toggle="modal" class="valida_compa" id="compatible_'+ data.id_convocatoria +'" name="'+ data.id_convocatoria +'"><p class="point"><span class="awe-random point"></span><span class="point"> Compatibilidad con otras becas</span></p></a><a target="_blank" href="http://www.cnbes.sep.gob.mx/node/50 "><p class="point"><span class="awe-list-alt"></span> Detalles del programa</p></a> <p></p><div id="conte_pronabes"></div><div align="right"><button class="btn btn-flat btn-small " ruta="'+ data.rura_cuestionario+ '" name="'+  data.Compatibilidad  +'"  id="ntn_pron">Solicitar esta beca</button></div></div></div>');

				$("#img_"+ data.id_convocatoria).attr('src',data.ruta_logo);
				$("#conte_pronabes").append('<span class="awe-list-alt"></span> Seleccione Convocatoria: <select style="font-size:11px;width:225px; height:30px" class="span2" id="cmb_convo_pro"><option value="">Seleccione</option></select>');			   
				$.each(data.aaData,function(index){											
					$("#cmb_convo_pro").append('<option gpo="'+ data.aaData[index][2] +'" value="'+ data.aaData[index][0] +'">'+ data.aaData[index][1] +'</option>');
				})				   				   
			}	
			else{
				$("#div_ordena").css("display","block");
			}

		},
		error:function(xhr, textStatus, errorThrown){
			//alert("error");
			$('#mens-alert').html("<div data-alert class='alert-box info radius'>error<a href='#' class='close'>&times;</a></div>");
			$(document).foundation('alert', 'reflow');			   
		}		   				
	});	
}

function muestra_solicitud(){
	$('#all-sol').load('../../class/perfil/obt_solicitudes.ajax.php',{tipo:1});  
	//$(document).foundation('reveal', 'reflow');   
}

function valida_grupo(gpo){
	$.ajax({
		url:'../../class/perfil/valida_grupo.php',
		type:"POST",
		dataType:"json",
		data:{gpo:gpo},
		success:function(data){
			if (data.res==1){
				return true;
			}else{
				return false;
			}
		},
		error:function(xhr, textStatus, errorThrown){
			//alert("Error al verificar, favor de intentarlo nuevamente.");
			$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error al verificar, favor de intentarlo nuevamente.<a href='#' class='close'>&times;</a></div>");
			$(document).foundation('alert', 'reflow');
		}
		
	});
	
}

function valida_solicitud(idcon,varid,ruta_cues,gpo,diri,tcar,acar,incompa){	
	var compatible=false;
	$.ajax({
		url:'../../class/perfil/obt_domicilio.php',
		type:"POST",
		dataType:"json",
		success:function(data){
			if(data.existeD == 1){
				$.ajax({
					url:'../../class/perfil/obt_fichaescolar.php',
					type:"POST",
					dataType:"json",
					data:{tico:tcar,anco:acar},
					success:function(data){
						if(data.existeF == 1 || diri == 'DOCENTES'){
							$.ajax({
								url:'../../class/perfil/valida_grupo.php',
								type:"POST",
								dataType:"json",
								data:{gpo:gpo,convocatoria:varid},
								success:function(data){
									if((data.res==1)||(diri == 'DOCENTES')){
										$.ajax({
											url:'../../class/perfil/obt_solicitudes.ajax.php',
											dataType:"json",
											type:'POST',
											data:{tipo:2,id:varid,compa:idcon,incompa:incompa},
											success:function(data){
												if (data.proceso_cancelacion==1){  
													$('#'+idcon+'').html("<div data-alert class='alert-box info'>Tiene una solicitud en proceso de cancelaci\u00f3n.<a href='#' class='close'>&times;</a></div>");
													$(document).foundation('alert', 'reflow');
												}else if (data.existe==1){   
													$('#'+idcon+'').html("<div data-alert class='alert-box info'>No puede realizar la misma solicitud m\u00e1s de una vez.<a href='#' class='close'>&times;</a></div>");
													$(document).foundation('alert', 'reflow');
												}else if (data.captura==1){
													$('#c'+varid).html("<div data-alert class='alert-box info radius'>Tiene una solicitud en captura.<a href='#' class='close'>&times;</a></div>");
													$(document).foundation('alert', 'reflow');
												}else if (data.doc == 1){
													$('#c'+varid).html("<div data-alert class='alert-box info radius'>Tiene una solicitud finalizada, falta subir documentaci\u00f3n.<a href='#' class='close'>&times;</a></div>");
													$(document).foundation('alert', 'reflow');
												}else if (data.compatible==0 && data.inicial==0){
													$('#c'+varid).html("<div data-alert class='alert-box info radius'>No es compatible con las becas previamente solicitadas.<a href='#' class='close'>&times;</a></div>");
													$(document).foundation('alert', 'reflow');
												}else if (data.incompatible==1){
													$('#c'+varid).html("<div data-alert class='alert-box info radius'>No es compatible con las becas solicitadas en a\u00f1os anteriores.<a href='#' class='close'>&times;</a></div>");
													$(document).foundation('alert', 'reflow');
												}else if (data.lista_espera==0){
													//alert("¡ATENCIÓN! \n"+"La beca " + data.Convo_nueva + " que quieres solicitar no es compatible con la beca " + data.Convo_actual + ". Si deseas continuar con el registro, primero cancela la solicitud de la beca " + data.Convo_actual + " (en la que te encuentras en la lista de espera), y después solicita la beca " + data.Convo_nueva + ".");
													$('#c'+varid).html("<div data-alert class='alert-box warning radius'>¡ATENCIÓN! \n"+"La beca " + data.Convo_nueva + " que quieres solicitar no es compatible con la beca " + data.Convo_actual + ". Si deseas continuar con el registro, primero cancela la solicitud de la beca " + data.Convo_actual + " (en la que te encuentras en la lista de espera), y después solicita la beca " + data.Convo_nueva + ".<a href='#' class='close'>&times;</a></div>");
													$(document).foundation('alert', 'reflow');
													
												}else{
													if(confirm('\u00bfEst\u00e1s convencido de que esta es la beca que deseas? \nUna vez iniciado el proceso, no podr\u00e1s cambiar de solicitud.')){
														$.ajax({
															url:'../../class/perfil/crea_solicitud.php',
															dataType:"json",
															type:'POST',
															data:{id:varid,drig:diri,tico:tcar,anco:acar},
															success:function(data){
																if (data.resp==1){
																	window.location =ruta_cues;
																}else{
																	//alert("Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.0");
																	$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.0<a href='#' class='close'>&times;</a></div>");
																	$(document).foundation('alert', 'reflow');
																}		    	
															},
															error:function(xhr, textStatus, errorThrown){
																//alert("Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.1");
																$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.1<a href='#' class='close'>&times;</a></div>");
																$(document).foundation('alert', 'reflow');
															}
														})
													}
												}
											},
											error:function(xhr, textStatus, errorThrown){
												//alert("Error al verificar, favor de intentarlo nuevamente." + xhr + '|' + textStatus + '|' + errorThrown);
												$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error al verificar, favor de intentarlo nuevamente."  + xhr + '|' + textStatus + '|' + errorThrown + " <a href='#' class='close'>&times;</a></div>");
												$(document).foundation('alert', 'reflow');
											}
										})
									}else{
										//$('#mens-alert').html("<div data-alert class='alert-box info'>Su plantel no pertenece a esta convocatoria.<a href='#' class='close'>&times;</a></div>");
										$('#c'+varid).html("<div data-alert class='alert-box info radius'>Su plantel no pertenece a esta convocatoria.<a href='#' class='close'>&times;</a></div>");
										$(document).foundation('alert', 'reflow');
										//alert("Su plantel no pertenece a esta convocatoria.");	
									}
								},
								error:function(xhr, textStatus, errorThrown){
									$('#c'+varid).html("<div data-alert class='alert-box info radius'>Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.2<a href='#' class='close'>&times;</a></div>");
									$(document).foundation('alert', 'reflow');
									//alert("Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.2");
								}
							})
						}else{
							$('#c'+varid).html("<div data-alert class='alert-box info radius'>Verifica que tu informaci\u00f3n escolar se encuentre registrada y activada.<a href='#' class='close'>&times;</a></div>");
							$(document).foundation('alert', 'reflow');
							//alert("Verifica que tu informaci\u00f3n escolar se encuentre registrada y activada.");
						}
					},
					error:function(xhr, textStatus, errorThrown){
						$('#c'+varid).html("<div data-alert class='alert-box info radius'>Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde. ficha escolar" + xhr + '|' + textStatus + '|' + errorThrown +"<a href='#' class='close'>&times;</a></div>");
						$(document).foundation('alert', 'reflow');
						//alert("Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde. ficha escolar" + xhr + '|' + textStatus + '|' + errorThrown);
					}
					})
			}else{
				$('#c'+varid).html("<div data-alert class='alert-box info radius'>Verifica que has llenado los datos de domicilio.<a href='#' class='close'>&times;</a></div>");
				$(document).foundation('alert', 'reflow');
				//alert("Verifica que has llenado los datos de domicilio.");	
			}
		},
		error:function(xhr, textStatus, errorThrown){
			$('#c'+varid).html("<div data-alert class='alert-box info radius'>Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.3<a href='#' class='close'>&times;</a></div>");
			$(document).foundation('alert', 'reflow');
			//alert("Error al iniciar solicitud, favor de intentarlo m\u00e1s tarde.3");
		}
	});
}



$(document).ready(function () {    
	$('[title]').tooltip({placement: 'top'});
	muestra_solicitud();
	CargaProg();
	CargaProg_Pronabes();

    //selecionan convocatoria
    $("#ntn_pron").on("click",function(){
    	if ($("#cmb_convo_pro").val()!=""){	
    		var idcon=$(this).attr('name').split("|");
    		var varid=$("#cmb_convo_pro option:selected").val();
    		var ruta_cues=$(this).attr('ruta');
    		var gpo=$("#cmb_convo_pro option:selected").attr('gpo');
    		var diri=$(this).attr('diri');
    		var tcar=$(this).attr('tcar');
    		var acar=$(this).attr('acar');
    		//var incompa=$(this).attr('incompa');
    		//alert("Tiene ficha."+tcar);
    		$('#mens-alert').html("<div data-alert class='alert-box info radius'>Tiene ficha. " + tcar +"<a href='#' class='close'>&times;</a></div>");
			$(document).foundation('alert', 'reflow');
   
    		valida_solicitud(idcon,varid,ruta_cues,gpo,diri,tcar,acar, incompa);
    	}else{
    		//alert("Seleccione una convocatoria.");
    		$('#mens-alert').html("<div data-alert class='alert-box info radius'>Seleccione una convocatoria.<a href='#' class='close'>&times;</a></div>");
			$(document).foundation('alert', 'reflow');
    	}
    })			
     //captura envia a solicitud
    $(document).on("click", "#mis_s .captura",function(){
     	var ruta=$(this).attr("ruta")
     	$.ajax({
     		url:"../../class/perfil/envia_solicitud.php",
     		type:"POST",
     		dataType:"json",
     		data:{folio:$(this).attr("fol")},
     		success: function(data){
     			if (data.resp=="1"){
     				window.location =ruta;
     			}else{
     				//alert("La convocatoria se encuentra cerrada.")
     				$('#mens-alert').html("<div data-alert class='alert-box info radius'>La convocatoria se encuentra cerrada.<a href='#' class='close'>&times;</a></div>");
					$(document).foundation('alert', 'reflow');
     			}

     		},
     		error:function(xhr, textStatus, errorThrown){
     			//alert("Error al actualizar, favor de intentarlo nuevamente.");
     			$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error al actualizar, favor de intentarlo nuevamente.<a href='#' class='close'>&times;</a></div>");
				$(document).foundation('alert', 'reflow');
     		}									
     	})		
     }) 
	//canela solicitud
	$(document).on("click", ".body .cancela",function(){
		alert('hola');
		var captchaid = 'captcha'+$(this).attr("fol");
		var codigoid = 'codigo'+$(this).attr("fol");
		var captcha = $('#'+captchaid).val();
		var codigo = $('#'+codigoid).val();
		if (captcha==codigo){
			$.ajax({
				url:"../../class/perfil/Up_solicitud.ajax.php",
				type:"POST",
				dataType:"json",
				data:{foli:$(this).attr("fol"),convo:$(this).attr("id")},
				success: function(data){
					if (data.res==1){
						javascript:location.reload();
					}else{
						//alert("Error al cancelar, favor de intentarlo nuevamente.");
						$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error al cancelar, favor de intentarlo nuevamente.<a href='#' class='close'>&times;</a></div>");
						$(document).foundation('alert', 'reflow');

					}
				},
				error:function(xhr, textStatus, errorThrown){
					//alert("Error al cancelar, favor de intentarlo nuevamente.");
					$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error al cancelar, favor de intentarlo nuevamente.<a href='#' class='close'>&times;</a></div>");
					$(document).foundation('alert', 'reflow');
				}		
			})
		}else{
			//alert("El c\u00f3digo no coincide, recuerda que todas las letras deben ser may\u00fasculas.");
			$('#mens-alert').html("<div data-alert class='alert-box info radius'>El c\u00f3digo no coincide, recuerda que todas las letras deben ser may\u00fasculas.<a href='#' class='close'>&times;</a></div>");
			$(document).foundation('alert', 'reflow');
		}
		return false;
	})

	$("#all-sol").on("click",'.imprimir', function() {
		var ruta_acuse=$(this).attr('ruta_acuse');
		alert($(this).attr('ruta_acuse'));
		alert($(this).attr('fol'));
		$.ajax({
			url:"../../class/perfil/envia_solicitud.php",
			type:"POST",
			data:{folio:$(this).attr("fol")},
			success: function(data){
				window.open(ruta_acuse);
			},
			error:function(xhr, textStatus, errorThrown){
				//alert("Error a imprimir.");
				$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error a imprimir.<a href='#' class='close'>&times;</a></div>");
				$(document).foundation('alert', 'reflow');
			}									
		})
	})

    //Carga programas disponibles
$(document).on("click", "#contenedor .valida_compa",function(){
    	$("#cuerpo_compa").empty();	
    	$.ajax({
    		url:"../../class/perfil/obt_convo_compa.php",		   
    		dataType:"json",
    		type:"POST",
    		data:{param:$(this).attr("name")},
    		success:function(data){	
    			if (data.res==1){
    				prog_compa=data.compa.split("|");	
    				if (prog_compa.length-1>0){
    					$.each(prog_compa, function(index){
    						var val=prog_compa[index];
    						if (val!=""){				
    							$.ajax({
    								url:"../../class/perfil/obt_convo_compa.php",		   
    								dataType:"json",
    								type:"POST",
    								data:{param:val},
    								success:function(data){	
    									if (data.res==1){
    										$("#cuerpo_compa").append("<h5><span>"+ data.desc + " </span></h5>");                    	    
    									}							 						 
    								},
    								error:function(xhr, textStatus, errorThrown){
    									//alert("error");
    									$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error.<a href='#' class='close'>&times;</a></div>");
										$(document).foundation('alert', 'reflow');
    								}	   				
    							});
    						}						
    					})
    				}else{
    					$("#cuerpo_compa").append("<h5><span>NO ES COMPATIBLE CON NINGUNA </span></h5>");
    				}		               	                   	    
    			}							 						 
    		},
    		error:function(xhr, textStatus, errorThrown){
    			//alert("error");
    			$('#mens-alert').html("<div data-alert class='alert-box info radius'>Error.<a href='#' class='close'>&times;</a></div>");
				$(document).foundation('alert', 'reflow');
    		}	   				
    	});			 								 		
})
$(document).on("click", "#contenedor .val_solicitud",function(){
		var compatibilidades = $(this).attr('name');
		var longitud = compatibilidades.length;
		var tail = compatibilidades.substr(longitud-1,1);
		if(tail=='|')
		{
			compatibilidades = compatibilidades.substr(0,longitud-1);
		}
       //var idcon=$(this).attr('name').split("|");
       var idcon=compatibilidades.split("|");
       var varid=$(this).attr('id').substr(4,10);
       var ruta_cues=$(this).attr('ruta');
       var gpo=$(this).attr('gpo');
       var diri=$(this).attr('diri');
       var tcar=$(this).attr('tcar');
       var acar=$(this).attr('acar');
       
       var incompatibilidades = $(this).attr('incompa');
       var longitud2 = incompatibilidades.length;
       var tail2 = incompatibilidades.substr(longitud2-1,1);
       if(tail2=='|')
       {
       	incompatibilidades = incompatibilidades.substr(0,longitud2-1);
       }
       var idincom=incompatibilidades.split("|");
       //var incompa=$(this).attr('incompa');
       valida_solicitud(idcon,varid,ruta_cues,gpo,diri,tcar,acar,idincom);
   });
});

