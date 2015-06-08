function dump(e,t){var n="";if(!t)t=0;var r="";for(var i=0;i<t+1;i++)r+="    ";if(typeof e=="object"){for(var s in e){var o=e[s];if(typeof o=="object"){n+=r+"'"+s+"' ...\n";n+=dump(o,t+1)}else{n+=r+"'"+s+"' => \""+o+'"\n'}}}else{n="===>"+e+"<===("+typeof e+")"}return n}
function Res_Cont(){
	$.ajax({
	  url: 'class/inicio/recupera/',
	  type: 'POST',
	  dataType: 'json',
	  data: {c: $('#curp-restore').val()},
	  success: function(data, textStatus, xhr) {
	    if (data.res == 'ok') {
	    	$('#msg-restore').replaceWith('<div class="alert alert-success" id="msg-restore">'+data.reason+'</div>');
	    	$('#curp-restore').val('');
	    	$('#msg-restore').fadeOut(9000);
	    }else{
	    	$('#msg-restore').replaceWith('<div class="alert alert-error" id="msg-restore">'+data.reason+'</div>');
	    };
	  },
	  error: function(xhr, textStatus, errorThrown) {
	    $('#msg-restore').replaceWith('<div class="alert alert-error" id="msg-restore">Por el momento tu solicitud no puede ser atendida, int&eacute;ntalo m&aacute;s tarde.</div>');
	  }
	});
	
}
var emailreg = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
var exprCurp = ("[A-Z]{4}[0-9]{6}[H,M][A-Z]{5}[0-9]{2}"); 
function showmsg(classe,tit,text){
	$('#msg-restore').replaceWith('<div id="msg-restore" class="'+ classe +'" style="margin-bottom:0px;" ><strong>'+ tit +'</strong>'+ text +'</div>');
	if(classe == 'alert alert-success'){
		$('#msg-restore').fadeOut(9000);
	}
}

function clear_reg(){
	$('#curp-reg').val('');
	$('#paswd-reg').val('');
	$('#email-reg').val(''); 
	$('#paswd-reg2').val('');
	$('#email-reg2').val(''); 
	$('#check-1').replaceWith('<span id="check-1"></span>');
	$('#check-2').replaceWith('<span id="check-2"></span>');
	$('#msg-reg').replaceWith('<div id="msg-reg"></div>');
}

function Ses(ux,px,tipo_usuario){
	$.ajax({
	  url: 'class/inicio/login/',
	  type: 'POST',
	  dataType: 'json',
	  data: {u: ux,p: px,tipo:tipo_usuario},
	  success: function(data, textStatus, xhr) {
	    if (data.res == 'ok') {
			//ACA MODIFICAR

	    	window.location = data.url;
			
			
	    }else{
			if(tipo_usuario == 1)
			{
	    		$('#msg-form-lg-a').replaceWith('<div class="alert alert-error" id="msg-form-lg-a">Usuario y/o contraseña incorrectos.</div>');
			}
			else
			{
	    		$('#msg-form-lg-i').replaceWith('<div class="alert alert-error" id="msg-form-lg-i">Usuario y/o contraseña incorrectos.</div>');
			}
	    };
	    
	  },
	  error: function(xhr, textStatus, errorThrown) {
			if(tipo_usuario == 1)
			{
			    $('#msg-form-lg-a').replaceWith('<div class="alert alert-error" id="msg-form-lg-a">Por el momento el sistema no esta disponible intentalo mas tarde.</div>');
			}
			else
			{
			    $('#msg-form-lg-i').replaceWith('<div class="alert alert-error" id="msg-form-lg-i">Por el momento el sistema no esta disponible intentalo mas tarde.</div>');
			}
	  }
	});	
}

function Val_Renap(cpx,paswd,corr){
	$('#check-1').replaceWith('<span id="check-1" class="loading blue-mini"></span>');
	$('#check-2').replaceWith('<span id="check-2" class="loading blue-mini"></span>');
	jQuery.ajax({
	  url: 'class/inicio/registro/',
	  type: 'POST',
	  dataType: 'json',
	  data: {cp: cpx,pa: paswd,co: corr},
	  success: function(data) {
	    if (data.res == 'ok') {
 		//alert(data.reason);
	    	$('#check-1').replaceWith('<span id="check-1" class="fam-flag-green"></span>');
	    	$('#check-2').replaceWith('<span id="check-2" class="fam-flag-green"></span>');
	    	$('#msg-reg').replaceWith('<div class="alert alert-success" id="msg-reg">'+data.reason+'</div>');
		//Tu registro se concluy\u00f3 satisfactoriamente,ya puedes ingresar con los datos que registraste.</div>');
	    	//setTimeout('clear_reg()', 9000);
	    }else if (data.res == 'nok-ren'){
		//alert('2');
	    	$('#check-1').replaceWith('<span id="check-1" class="fam-flag-red"></span>');
	    	$('#check-2').replaceWith('<span id="check-2"></span>');
	    	$('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg">'+data.reason+'</div>');
	    }
	    else if (data.res == 'nok-email'){
		//alert('3');
	    	$('#check-1').replaceWith('<span id="check-1"></span>');
	    	$('#check-2').replaceWith('<span id="check-2" class="fam-flag-red"></span>');
	    	$('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg">'+data.reason+'</div>');
	    }
	    else if (data.res == 'nok-busy'){
		//alert('4');
	    	$('#check-1').replaceWith('<span id="check-1" class="fam-error"></span>');
	    	$('#check-2').replaceWith('<span id="check-2" class="fam-error"></span>');
	    	$('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg">'+data.reason+'</div>');
	    }	
	  },
	  error: function(xhr, textStatus, errorThrown) {
	  	$('#check-1').replaceWith('<span id="check-1" class="fam-error"></span>');
	    $('#check-2').replaceWith('<span id="check-2" class="fam-error"></span>');
	    $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Error!</strong>La conexi�n SEP-RENAPO est� saturada, int�ntalo m�s tarde.</div>');
	  }
	});
	
}

function checkAlumno(){
        if( $("#lg-curp").val() == "" ){
            $("#lg-curp").css('borderColor','red');
            $('#msg-form-lg-a').replaceWith('<div class="alert alert-error" id="msg-form-lg-a">Escribe tu curp.</div>');
            return false;
        }/*else if( $("#lg-curp").val().length < 18){
            $("#lg-curp").css('borderColor','red');
            $('#msg-form-lg').replaceWith('<div class="alert" id="msg-form-lg">Formato invalido de curp.</div>');
            return false;
        }*/else if( $("#lg-pass").val() == ""){
            $("#lg-pass").css('borderColor','red');
            $('#msg-form-lg-a').replaceWith('<div class="alert alert-error" id="msg-form-lg-a">Escribe una contraseña.</div>');
            return false;
        }
        //var tam=$("#lg-curp").val().length;
    
    Ses($("#lg-curp").val(),$("#lg-pass").val(),1);
}

function checkInstitucion(){
        if( $("#lg-inst").val() == "" ){
            $("#lg-inst").css('borderColor','red');
            $('#msg-form-lg-i').replaceWith('<div class="alert alert-error" id="msg-form-lg-i">Escribe tu usuario.</div>');
            return false;
        }/*else if( $("#lg-curp").val().length < 18){
            $("#lg-curp").css('borderColor','red');
            $('#msg-form-lg').replaceWith('<div class="alert" id="msg-form-lg">Formato invalido de curp.</div>');
            return false;
        }*/else if( $("#lg-pass_inst").val() == ""){
            $("#lg-pass_inst").css('borderColor','red');
            $('#msg-form-lg-i').replaceWith('<div class="alert alert-error" id="msg-form-lg-i">Escribe una contraseña.</div>');
            return false;
        }
        //var tam=$("#lg-curp").val().length;
    
    Ses($("#lg-inst").val(),$("#lg-pass_inst").val(),2);
}

function check_reg(){

		if ($.trim($('#curp-reg').val()).length < 1){
			$("#curp-reg").css('borderColor','red');
            $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Espera!</strong> Escribe tu CURP.</div>');
            $("#curp-reg").focus();
            return false;
        }else if ($.trim($('#email-reg').val()).length < 1){
			$("#email-reg").css('borderColor','red');
            $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Espera!</strong> Escribe tu correo electrónico.</div>');
            $("#email-reg").focus();
            return false;
        }else if(!emailreg.test($("#email-reg").val()) ){
			$("#email-reg").css('borderColor','red');
            $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Espera!</strong> El correo no es valido. </div>');
			$("#email-reg").focus();
			return false;
		}
		else if($("#email-reg").val() !=  $("#email-reg2").val()){
			$("#email-reg2").css('borderColor','red');
            $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Espera!</strong> Los correos no coinciden</div>');
			$("#email-reg2").focus();
			return false;
		}
		else if ($('#paswd-reg').val().length < 6){
			$("#paswd-reg").css('borderColor','red');
            $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Espera!</strong> La contraseña es demasiado pequeña el minimo son 6 caracteres.</div>');
            $("#paswd-reg").focus();
            return false;
        }else if ($('#paswd-reg').val().length > 20){
			$("#paswd-reg").css('borderColor','red');
            $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Espera!</strong> La contraseña es demasiado grande el limite son 20 caracteres.</div>');
            $("#paswd-reg").focus();
            return false;
        }
        else if($("#paswd-reg").val() !=  $("#paswd-reg2").val()){
			$("#email-reg2").css('borderColor','red');
            $('#msg-reg').replaceWith('<div class="alert alert-error" id="msg-reg"><strong>Espera!</strong> Las contraseñas no coinciden</div>');
			$("#paswd-reg2").focus();
			return false;
		}

    var cp = $('#curp-reg').val();	

    Val_Renap($('#curp-reg').val(),$('#paswd-reg').val(),$('#email-reg').val().toLowerCase());  
    
}



function i_bing(){
	$.ajax({
	  url: 'class/i_bing/',
	  type: 'GET',
	  dataType: 'json',
	  success: function(data) {
	  	$('#banner').css('background', 'url(' + encodeURI(data.url) + ') no-repeat fixed');
	  	$('#copyright').attr('title', data.copyright)
	  	$('[title]').tooltip({placement: 'bottom'});
	  },
	  error: function() {
	   	$('#banner').css({'background-image': 'url("static/img/photo.jpg") no-repeat fixed'});
	  }
	});	
}

$(document).ready(function() {
	$(document).foundation('reveal', 'reflow');  
	 if ( navigator.userAgent.indexOf("MSIE")>0 )
     {
        alert('TU NAVEGADOR NO ESTA OPTIMIZADO! \n\n No te recomendamos continuar. \n\n Utiliza algun otro navegador como Google Chrome, Firefox u Opera. \n\n No olvides revisar la seccion "compatibilidad de mi navegador" y obten mas información.');
     	//window.location.reload();
     }     
	//$('#lg-curp').focus();
	$('#log_a').on('click',function(e){
		$('#lg-inst').val("");
		$('#lg-pass_inst').val("");
		$('#msg-form-lg-i').replaceWith('<div id="msg-form-lg-i"></div>');
		$('#field_i').hide();
		$('#field_a').fadeIn('slow');
		e.preventDefault();
	});
	
	$('#log_i').on('click',function(e){
		$('#lg-curp').val("");
		$('#lg-pass').val("");
		$('#msg-form-lg-a').replaceWith('<div id="msg-form-lg-a"></div>');
		$('#field_i').fadeIn('slow');
		$('#field_a').hide();
		e.preventDefault();
	});

	$('#paswd-reg').pstrength();
	$('#paswd-reg2').pstrength();

	$("#curp-reg, #email-reg, #paswd-reg").keyup(function(){
		if( $(this).val() != "" ){
			$(this).css('borderColor','#cccccc');
			$('#check-1').replaceWith('<span id="check-1"></span>');
			$('#check-2').replaceWith('<span id="check-2"></span>');
			$('#msg-reg').fadeOut('slow');		
			return false;
		}		
	});	

	
	$("#lg-curp, #lg-pass").keyup(function(){
		if( $(this).val() != "" ){
			$(this).css('borderColor','#cccccc');
			//$('#msg-form-lg').replaceWith('<div id="msg-form-lg"></div>');
			return false;
		}		
	});	

	$('#lg-pass').keypress( function(e){
	    if (e.which == 13) {
	        check();
	    }
	});

	$('#sesion-start-a').on('click',function(e){
		//$('#sesion-start-a').attr("disabled", true);
		e.preventDefault();
		checkAlumno();
	});
	
	$('#sesion-start-i').on('click',function(e){
		//$('#sesion-start-i').attr("disabled", true);
		e.preventDefault();
		checkInstitucion();
	});

	////////////////////////// REGISTRO
	$('#start-reg').on('click',function(e){
		$('#start-reg').attr("disabled", true);
        e.preventDefault();
		check_reg();
	});
	
	////////////////////////// RESET PASWD
	$('#restore-paswd').on('click',function(e)
	{
		if ($.trim($('#curp-restore').val()).length > 1)
		{
			$('#restore-paswd').attr('disabled', true);	
			e.preventDefault();
			$('#msg-restore').replaceWith('<div id="msg-restore"><span class="loading blue">Loading…</span></div>');
			Res_Cont();
		}else{
			$('#msg-restore').replaceWith('<div class="alert alert-error" id="msg-restore">Introduce tu CURP.</div>');
		}
	});
	i_bing();
});

