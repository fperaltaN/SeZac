function dump(e,t){var n="";if(!t)t=0;var r="";for(var i=0;i<t+1;i++)r+="    ";if(typeof e=="object"){for(var s in e){var o=e[s];if(typeof o=="object"){n+=r+"'"+s+"' ...\n";n+=dump(o,t+1)}else{n+=r+"'"+s+"' => \""+o+'"\n'}}}else{n="===>"+e+"<===("+typeof e+")"}return n}
function Alerta(tit,msg,theme,sticky){$.jGrowl(msg,{header: tit,sticky: sticky,theme: theme});}
function valInputs(idx){var e=1;$("#"+idx).find(".rq").each(function(t,n){if($.trim($(this).val()).length<1){$(this).css({borderColor:"#b94a48"});e=0}else{$(this).css({borderColor:"#cccccc"})}});return e}
function serialize(e){var t,n,r,i="",s="",o=0,u=function(e){var t=0,n=0,r=e.length,i="";for(n=0;n<r;n++){i=e.charCodeAt(n);if(i<128){t+=1}else if(i<2048){t+=2}else{t+=3}}return t},a=function(e){var t,n,r,i,s=typeof e;if(s==="object"&&!e){return"null"}if(s==="object"){if(!e.constructor){return"object"}r=e.constructor.toString();t=r.match(/(\w+)\(/);if(t){r=t[1].toLowerCase()}i=["boolean","number","string","array"];for(n in i){if(r==i[n]){s=i[n];break}}}return s},f=a(e);switch(f){case"function":t="";break;case"boolean":t="b:"+(e?"1":"0");break;case"number":t=(Math.round(e)==e?"i":"d")+":"+e;break;case"string":t="s:"+u(e)+':"'+e+'"';break;case"array":case"object":t="a";for(n in e){if(e.hasOwnProperty(n)){i=a(e[n]);if(i==="function"){continue}r=n.match(/^[0-9]+$/)?parseInt(n,10):n;s+=this.serialize(r)+this.serialize(e[n]);o++}}t+=":"+o+":{"+s+"}";break;case"undefined":default:t="N";break}if(f!=="object"&&f!=="array"){t+=";"}return t}
(function(e){e.fn.Validamask=function(t){e(this).on({keypress:function(e){var n=e.which,r=e.keyCode,i=String.fromCharCode(n).toLowerCase(),s=t;if(s.indexOf(i)==-1&&r!=9&&(n==37||r!=37)&&(r!=39||n==39)&&r!=8&&(r!=46||n==46)||n==161){e.preventDefault()}}})}})(jQuery);
if ( navigator.userAgent.indexOf("MSIE")>0 )
     {
        alert('TU NAVEGADOR ES NO ESTA OPTIMIZADO! \n\n No te recomendamos continuar. \n\n Utiliza algun otro navegador como Google Chrome, Firefox, Opera. \n\n No olvides revisar la seccion "compativilidad de mi navegador" y obten mas información.');
     }
$(document).ready(function() {
localStorage.clear;
sessionStorage.clear;

	

	$('#msg-ci').load('../../class/perfil/msg-count.ajax.php');
	$('#logout').click(function() {window.location = "http://www.subes.sep.gob.mx/logout/";});	
	
	
});
