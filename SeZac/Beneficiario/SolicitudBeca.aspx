<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SolicitudBeca.aspx.cs" Inherits="SeZac.Beneficiario.SolicitudBeca" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<style>
    #mens-alert
    {
        position: fixed;
        top: 10px;
        text-align: center;
        width: 60%;
        z-index: 99999;

    }

    @media screen and (max-width: 1120px){
        #mens-alert {
            position: fixed;
            top: 20px;
            width: 100%;
            z-index: 99999;
        }
    }
</style>

   <!DOCTYPE html>
<html class="no-js">
   <head>
     <title>SUBEZ</title>
    <meta name="description" content="">
    <meta name="author" content="Blue Team CIMAT">
    <meta name="robots" content="index, follow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <script src="../Css/Script/responsive-tables.js" type="text/javascript"></script>
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.jgrowl.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/responsive-tables.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/cnbes.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico">
    
    <link rel="icon" href="../../sep.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../me/static/img/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../me/static/img/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../me/static/img/icons/apple-touch-icon-57-precomposed.png">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
   </head>
  <body class="body">
      <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg" />
         </div>
         <hr>
      </header>    <div class="row contenedor_gral">
        <section class="large-3 columns" role="main"> 
            <div class="navigation-block affix-top"> 
                <section class="usuario">
                  <figure> <img src="../Image/perfil.jpg">
                    <figcaption> <strong><a class="">Luis Angel Hernandez Lazaro</a></strong> <em>HELL920809HVZRZS07</em> <em>Aspirante</em> </figcaption>
                  </figure>
                </section>
                    <nav class="main-navigation" role="navigation">
                      <ul>
                        <li ><a href="InfomarcionPersonal.aspx" class="no-submenu"><span class="awe-user"></span>Información personal</a></li>
                  <li ><a href="InfoEscolar.aspx" class="no-submenu"><span class="awe-book"></span>Información escolar</a></li>
                  <li class="current"><a href="SolicitudBeca.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes de beca</a></li>
                  <li><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
                      </ul>
                    </nav>


                    <section class="side-note">
                      <div class="side-note-container">
                        <h2><a href="http://www.SUBEZ.sep.gob.mx/archivos/tutor/solicitudes.pdf" target="_blank">Manual de esta sección</a></h2>
                        <p></p>
                      </div>
                      <div class="side-note-bottom"></div>
                    </section>
            </div>
        </section>  


       <!-- SECCION TABLA -->

         <div class="small-12 medium-12 large-9 columns borde_contenedor" role="main">
            <div class="large-12 columns separa_v borde_contenedor">
               <header>
                  <h4>Mis Solicitudes</h4>
                  <hr>
               </header>
               <input type="hidden" value="" id="compati">     
               <div class="large-12 columns separa_v" id="mis_s">
                  <table class="table responsive large-12 columns">
                     <thead>
                        <tr>
                           <th width="50%">Programa</th>
                           <th width="25%">Vigencia</th>
                           <th width="25%">Estatus</th>
                        </tr>
                     </thead>
                     <tbody id="all-sol"><tr><td>MANUTENCION VERACRUZ</td><td>2014/2015</td><td><span class="label label-important" fol="1760799" ruta="../../cuestionarios/Cuestionario_Manutencion2014/" id="224">Solicitud Cancelada</span></td></tr><tr><td>PROYECTA 100000 ALUMNOS 2014</td><td>2014/2015</td><td><span class="captura label label-warning" fol="1007676" ruta="../../cuestionarios/CuestionarioCapacitacionAlumnos2014/" id="140">Solicitud en Captura</span></td></tr><tr><td>PRONABES VERACRUZ</td><td>2013/2014</td><td><span class="label label-important" fol="703154" ruta="../../cuestionarios/solicitud_pronabes2012/" id="55">Solicitud Cancelada</span></td></tr></tbody>
                  </table>
               </div>
            </div>
            <div class="large-12 columns separa_v borde_contenedor">
               <div class="hero-unit titulo-secc">
                  <h4>Programas Disponibles</h4>
                  <hr>
               </div>
               <div id="mensaje"></div>
               <div class="data-container">
                  <div class="row" id="contenedor">
                     <div class="large-4 columns" id="div_ordena" style="display: block;">  
                     </div>
                  <div class="large-12 columns"><div class="small-12 medium-4 large-4 columns">
                   <div style="min-height:100px; margin:20px 0px 0px 0px; width:100%;">
                    <img src="../Image/FRANCOMEXICANO 2015-2017.jpg" width="100%" id="img_266"/></div>
                    <div style="background:#9DD06B;padding:8px 12px 8px 20px;" class="banner"/>
                    <h5><b>PROGRAMA "POSGRADO-MAESTRIA FRANCO MEXICANO" PRIMERA ETAPA GENERACION 2015-2017</b></h5><h5>Monto total: <strong>$266000</strong>
                    </h5><p class="point"><a data-toggle="modal" data-reveal-id="confirma" href="http://www.SUBEZ.sep.gob.mx/perfil/solicitudes/#" "="" class="valida_compa" id="compatible_266" name="266">
                    <span class="awe-random point"></span><span class="point"> Compatibilidad con otras becas</span></a><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa1.pdf"></a></p><p class="point"><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa1.pdf"><span class="awe-list-alt"></span> Detalles del programa</a></p> <div align="right"><button class="btn btn-flat btn-primary button expand val_solicitud " ruta="../../cuestionarios/CuestionarioPosgInterConveniosAlumnos2015/" name="148|140|" gpo="384" id="btn_266" diri="ALUMNOS" tcar="A" acar="2015" incompa="">Solicitar esta beca</button></div></div><div id="c266"></div></div><div class="small-12 medium-4 large-4 columns"> <div style="min-height:100px; margin:20px 0px 0px 0px;; width:100%;"> <img src="../Image/FRANCOMEXICANO 2014-2016.jpg" width="100%" id="img_267"></div><div style="background:#9DD06B;padding:8px 12px 8px 20px;" class="banner"><h5><b>PROGRAMA "POSGRADO-MASTRIA FRANCO-MEXICANO" SEGUNDA ETAPA GENERACION 2014-2016</b></h5><h5>Monto total: <strong>$232000</strong></h5><p class="point"><a data-toggle="modal" data-reveal-id="confirma" href="http://www.SUBEZ.sep.gob.mx/perfil/solicitudes/#" "="" class="valida_compa" id="compatible_267" name="267"><span class="awe-random point"></span><span class="point"> Compatibilidad con otras becas</span></a><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa2.pdf"></a></p><p class="point"><a target="_blank" href="http://168.255.101.19/sites/default/files/Maestria_FrancoMexicano_etapa2.pdf"><span class="awe-list-alt"></span> Detalles del programa</a></p> <div align="right"><button class="btn btn-flat btn-primary button expand val_solicitud " ruta="../../cuestionarios/CuestionarioPosgInterConveniosAlumnos2015/" name="98|267|" gpo="384" id="btn_267" diri="ALUMNOS" tcar="A" acar="2015" incompa="">Solicitar esta beca</button></div></div><div id="c267"></div></div></div></div>
               </div>
            </div>
            <div id="mens-alert"></div>
            <button class="btn btn-flat btn-primary derecha separa_v" id="next_3" onclick="location.href=&#39;../archivos/&#39;">Siguiente sección</button>
            <div id="confirma" class="reveal-modal" data-reveal="" aria-labelledby="modalTitle2" aria-hidden="true" role="dialog">
               <h2 id="modalTitle">Compatibilidades</h2>
               <p class="lead">El programa es compatible con :</p>
               <div class="small-12 medium-12 large-12 columns separa_v"> 
                  <div id="cuerpo_compa" style="max-height:300px;overflow:auto;">
                  </div>
               </div>
               <a class="close-reveal-modal" aria-label="Close">×</a>
            </div>
        </div> 
    </div>
    <div class="row row_xl separa_v_xl">
	<footer align="right">
       <a href="http://www.SUBEZ.sep.gob.mx/perfil/solicitudes/#arriba" class="btn btn-flat btn-primary"><span class="icon-arrow-up">Ir arriba </span></a>
	   <h5>SUBEZ 2015  <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">Políticas de privacidad</a></h5><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
	</a></footer><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
</a></div><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
<script src="../Image/jquery.min.js"></script>
<script type="text/javascript" src="../Image/foundation.js"></script>
<script type="text/javascript" src="../Image/responsive-tables.js"></script>
<script type="text/javascript" src="../Image/foundation.accordion.js"></script>
<script type="text/javascript" src="../Image/foundation.reveal.js"></script>
<script type="text/javascript" src="../Image/foundation.equalizer.js"></script>
<script type="text/javascript" src="../Image/foundation.alert.js"></script>
<script type="text/javascript" src="../Image/global.js"></script>
<script type="text/javascript" src="../Image/modernizr.js"></script>
<script type="text/javascript" src="../Image/selectivizr.js"></script>
<script type="text/javascript" src="../Image/pstreng.js"></script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-42955936-1', 'auto');
    ga('send', 'pageview');
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/responsive-tables.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.accordion.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.reveal.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.equalizer.js"></script>
<script type="text/javascript" src="../../base_cnbes/js/foundation/foundation.alert.js"></script>
<script type="text/javascript" src="../../utils/perfil/global.js"></script>
<script type="text/javascript" src="../../static/js/libs/modernizr.js"></script>
<script type="text/javascript" src="../../static/js/libs/selectivizr.js"></script>
<script type="text/javascript" src="../../static/js/libs/pstreng.js"></script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-42955936-1', 'auto');
    ga('send', 'pageview');
</script>
<script src="../Css/Script/navigation.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-affix.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-dropdown.js" type="text/javascript"></script>
        <script type="text/javascript" src="../../static/js/navigation.js"></script>
        <script src="../Css/Script/bootstrap-inputmask.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-tooltip.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-popover.js" type="text/javascript"></script>
        <script src="../Css/Script/jquery.jgrowl.js" type="text/javascript"></script>
        <script src="../Css/Script/bootstrap-transition.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        $(".valida_modulo").click(function () {
            valida_mod($(this).attr("id"), '1|2|3|4|7|8|9', $(this).attr("name"));
        })
    });
</script>
<script>
    $(document).foundation();
</script>
<script>
    $(document).on('close.fndtn.alert', function (event) {
        console.info('An alert box has been closed!');
    });
</script>
    <script type="text/javascript" src="../../utils/perfil/solicitud.js"></script>
  </body>
</html>

