var emailreg = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;

function Chan_corr(){
  $.ajax({
    url: '../../class/perfil/new_email.ajax.php',
    type: 'POST',
    dataType: 'json',
    data: {pa: $('#chp-pass-act_').val(),em: $('#new-email').val()},
    success: function(data, textStatus, xhr) {
      if (data.res == 'ok') {
        $('#chp-pass-act_').val('');
        $('#new-email').val('');
        $('#new-email-conf').val('');
        $('#email_act').text(data.email);
        Alerta('Información','Correo Electrónico actualizado con éxito!','info',false);
      }else{
        Alerta('Información',data.reason,'danger',true);
      };
    },
    error: function(xhr, textStatus, errorThrown) {
      Alerta('Información','Temporalmente el servicio no esta disponible, int&eacute;ntalo m&acute;s tarde','danger',true);
    }
  });
  
}

function Chan_pswd(){
  $.ajax({
    url: '../../class/perfil/new_paswd.ajax.php',
    type: 'POST',
    dataType: 'json',
    data: {pa: $('#chp-pass-act').val(),npa: $('#new-paswd').val()},
    success: function(data, textStatus, xhr) {
      if (data.res == 'ok') {
        $('#chp-pass-act').val('');
        $('#new-paswd').val('');
        $('#new-paswd-conf').val('');
        Alerta('Informaci&oacute;n','Contrase&ntilde;a actualizada con &eacute;xito!','info',false);
      }else{
        Alerta('Informaci&oacute;n',data.reason,'danger',true);
      };
    },
    error: function(xhr, textStatus, errorThrown) {
      Alerta('Informaci&oacute;n','Temporalmente el servicio no esta disponible, intentalo m&aacute;s tarde','danger',true);
    }
  });
  
}
 
function setfoto(fot,tip){

	$.ajax({
	  url: '../../class/perfil/ft.ajax.php',
	  type: 'POST',
	  dataType: 'json',
	  data: {ft: fot},
	  success: function(data, textStatus, xhr) {
	    if (data.res == 'ok'){
	    	$('#foto').attr("src",fot);
			  Alerta('Informaci&oacute;n','Imagen actualizada correctamente','info',false);
        $('#progreso').text("");
        $('#progreso').css("width","0%");
	    }else{
			Alerta('Informaci&oacute;n','No se ha podido actualizar la imagen!','danger',false);
		}
	  },
	  error: function(xhr, textStatus, errorThrown) {
      Alerta('Informaci&oacute;n','Temporalmente el servicio no esta disponible, intentalo maacute;s tarde','danger',true);
	  }
	});
	


}



function updateProgress(evt) {
	// evt is an ProgressEvent.
    if (evt.lengthComputable) {
      var percentLoaded = Math.round((evt.loaded / evt.total) * 100);
      if (percentLoaded <= 100) {
      	$('#progreso').text(percentLoaded+"%");
        $('#progreso').css("width",percentLoaded+"%");
      }
    }
  }

function handleFileSelect(evt) {
    $('#progreso').text("");
    $('#progreso').css("width","0%");
    var files = evt.target.files; // FileList object

    // Loop through the FileList and render image files as thumbnails.
    for (var i = 0, f; f = files[i]; i++) {

      var reader = new FileReader();
      if(!f.type.match(/^image\//)){
        Alerta('Información','Solo puedes utilizar imagenes.','info',false);
      } else if (f.size > ((1024*1024)/2)) {
          Alerta('Informaci&oacuten','La imagen que intentas usar es demasiado grande. El l&iacute;mite son 500 KB','info',false);
      } else {
      // Closure to capture the file information.
      reader.onprogress = updateProgress;
      reader.onload = (function(theFile) {
        return function(e) {
          // Render thumbnail.
           // setfoto(e.target.result,1);
           ////////////////////////
            var tempImg = new Image();
            tempImg.src = reader.result;
            tempImg.onload = function() {
                      
                var MAX_WIDTH = 200;
                var MAX_HEIGHT = 200;
                var tempW = tempImg.width;
                var tempH = tempImg.height;
                if (tempW > tempH) {
                    if (tempW > MAX_WIDTH) {
                       tempH *= MAX_WIDTH / tempW;
                       tempW = MAX_WIDTH;
                    } 
                } else {
                    if (tempH > MAX_HEIGHT) {
                       tempW *= MAX_HEIGHT / tempH;
                       tempH = MAX_HEIGHT;
                    }
                }
                  
                var canvas = document.createElement('canvas');
                canvas.width = tempW;
                canvas.height = tempH;
                var ctx = canvas.getContext("2d");
                ctx.drawImage(this, 0, 0, tempW, tempH);
                var dataURL = canvas.toDataURL("image/jpeg"); 

                setfoto(dataURL,1); 
          }
           //////////////////
        };
      })(f);

      // Read in the image file as a data URL.
      reader.readAsDataURL(f);
	}
    }
  }



function DragFoto(elem,barprog){
var holder = document.getElementById(elem);
holder.ondragover = function () {
  return false;
};
holder.ondragend = function () {
  return false;
};
holder.ondrop = function (e) {
    $(barprog).text("");
    $(barprog).css("width","0%");
    
    e.preventDefault();
    var file = e.dataTransfer.files[0],
    reader = new FileReader();
    if(!file.type.match(/^image\//)){
        Alerta('Información','Solo puedes utilizar imagenes.','info',false);
    } else if (file.size > ((1024*1024)/2)) {
        Alerta('Informaci&oacute;n','La imagen que intentas usar es demasiado grande. El l&iacute;mite son 500 KB','info',false);
    } else {
        reader.readAsDataURL(file);
        reader.onprogress = updateProgress;
        reader.onload = function (event) {
           /////////////////////////////////////// 

            //setfoto(event.target.result,1);
            var tempImg = new Image();
            tempImg.src = reader.result;
            tempImg.onload = function() {
                      
                var MAX_WIDTH = 200;
                var MAX_HEIGHT = 200;
                var tempW = tempImg.width;
                var tempH = tempImg.height;
                if (tempW > tempH) {
                    if (tempW > MAX_WIDTH) {
                       tempH *= MAX_WIDTH / tempW;
                       tempW = MAX_WIDTH;
                    } 
                } else {
                    if (tempH > MAX_HEIGHT) {
                       tempW *= MAX_HEIGHT / tempH;
                       tempH = MAX_HEIGHT;
                    }
                }
                  
                var canvas = document.createElement('canvas');
                canvas.width = tempW;
                canvas.height = tempH;
                var ctx = canvas.getContext("2d");
                ctx.drawImage(this, 0, 0, tempW, tempH);
                var dataURL = canvas.toDataURL("image/jpeg"); 

                 setfoto(dataURL,1); 
		    	}
           /////////////////////////////////////// 
        };
    }
    return false;
};
}


$(document).ready(function() {

  $('#upd-suscrip').on('click',function(e){
    e.preventDefault();
    $('#sw-1').val();
  });

  $("#new-email, #new-email-conf, #new-paswd, #new-paswd-conf, #chp-pass-act_, #chp-pass-act").keyup(function(){
    if( $(this).val() != "" ){
      $(this).css('borderColor','#cccccc');
      return false;
    }   
  }); 
  
	$(".validaLetras").keypress(function(e) {
		var key = window.event ? window.event.keyCode : e.which;
		if (key == 34 || key == 37 || key == 38 || key == 39  || key == 45  || key == 47  || key == 92 || key == 96  || key == 239 ) {
			return false;
		}

	});
	// Stuff to do as soon as the DOM is ready;
$('#new-paswd').pstrength();

$('#upd-new-paswd').on('click',function(e){
    e.preventDefault();
    if (valInputs('new-pass') == 1) {
      if ($('#new-paswd').val() == $('#new-paswd-conf').val()) {
        Chan_pswd();
      }else{
        Alerta('Información','Las contraseñas no coinciden','danger',true);
      };
    }else{
      Alerta('Información','Los campos marcados son requeridos','danger',false);
    };
});

$('#upd-new-email').on('click',function(e){
    e.preventDefault();
    if (valInputs('upd-newemail-dv') == 1) {
      if ($('#new-email').val() == $('#new-email-conf').val()) {
        if (!emailreg.test($("#new-email").val())) {
          Alerta('Informaci&oacute;n','Formato invalido de la nueva direcció&oacute; de correo electronico!','danger',true);
        }else{
          Chan_corr();
        };
      }else{
        Alerta('Información','Los correos electronicos no coinciden','danger',true);
      };
    }else{
      Alerta('Información','Los campos marcados son requeridos','danger',false);
    };
});

DragFoto('holder','#progreso');

$('#upload-foto').on('click',function(){
    $('#up-foto').click();
});

document.getElementById('up-foto').addEventListener('change', handleFileSelect, false);

});
