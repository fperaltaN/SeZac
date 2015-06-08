<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoEscolar.aspx.cs" Inherits="SeZac.Beneficiario.InfoEscolar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
      </header>
    <div class="row contenedor_gral">
        <section class="large-3 columns" role="main"> 
            <div class="navigation-block affix"> 
               <section class="usuario">
                  <figure> <img src="../Image/perfil.jpg">
                     <figcaption> <strong><a class="">Luis Angel Hernandez Lazaro</a></strong> <em>HELL920809HVZRZS07</em> <em>Aspirante</em> </figcaption>
                  </figure>
               </section>
               <nav class="main-navigation" role="navigation">
                  <ul>
                  <li ><a href="InfomarcionPersonal.aspx" class="no-submenu"><span class="awe-user"></span>Información personal</a></li>
                  <li class="current"><a href="InfoEscolar.aspx" class="no-submenu"><span class="awe-book"></span>Información escolar</a></li>
                  <li><a href="SolicitudBeca.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes de beca</a></li>
                  <li><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
                  </ul>
               </nav>
               <section class="side-note">
                  <div class="side-note-container">
                     <h2><a href="http://www.subes.sep.gob.mx/archivos/tutor/informacion_escolar.pdf" target="_blank">Manual de esta sección</a></h2>
                  </div>
                  <div class="side-note-bottom"></div>
               </section>
            </div>
         </section>
        <div class="small-12 medium-12 large-9 columns borde_contenedor">
            <div class="large-12 columns separa_v">
                <div id="fichas">
                    <header class="borde_inferior">
						<h5><span class="awe-folder-open"></span><b> Selecciona la institución educativa con la que deseas solicitar tu beca.</b></h5>
	            	</header>
                    <h5 align="center">
                        <b>Periodo: 2015 <small>(Enero - Junio)</small></b></h5>
                    <h6 align="justify">
                        La información fue registrada por tu Institución Pública de Educación Superior (IPES),
                        si existe algún error acude a tu institución y solicita la corrección.</h6>
                    <div class="separa_v borde_contenedor">
                        <header class="borde_inferior">
											<h5>Fichas alumnos</h5>
		            					</header>
                        <ul class="accordion separa_v" data-accordion="">
                            <li class="accordion-navigation active"><a href="http://www.subes.sep.gob.mx/perfil/info-escolar/#sa1">
                                <span class="awe-sort-down"></span>UNIVERSIDAD VERACRUZANA</a>
                                <div id="sa1" class="small-12 medium-12 large-12 columns content borde_contenedor active">
                                    <h5 align="center">
                                        <b>FACULTAD DE ESTADISTICA E INFORMATICA</b></h5>
                                    <h5 align="center">
                                        LICENCIATURA EN INFORMÁTICA</h5>
                                    <table class="small-12 medium-12 large-12 columns responsive">
                                        <thead>
                                            <tr>
                                                <th>
                                                    Matricula
                                                </th>
                                                <th>
                                                    Prom General
                                                </th>
                                                <th>
                                                    Prom Anterior
                                                </th>
                                                <th>
                                                    Regular
                                                </th>
                                                <th>
                                                    Tipo Periodo
                                                </th>
                                                <th>
                                                    Total Periodos
                                                </th>
                                                <th>
                                                    Periodo Actual
                                                </th>
                                                <th>
                                                    Activar Ficha
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    S10011188
                                                </td>
                                                <td>
                                                    8.43
                                                </td>
                                                <td>
                                                    10
                                                </td>
                                                <td>
                                                    SI
                                                </td>
                                                <td>
                                                    SEMESTRE
                                                </td>
                                                <td>
                                                    12
                                                </td>
                                                <td>
                                                    10
                                                </td>
                                                <td>
                                                    <a class="btn btn-flat btn-primary" data-toggle="modal" data-reveal-id="activarModal"
                                                        href="http://www.subes.sep.gob.mx/perfil/info-escolar/#" onclick="datos_activar(3128141)">
                                                        Activar</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="activarModal" class="reveal-modal" data-reveal="" aria-labelledby="modalTitle"
                    aria-hidden="true" role="dialog">
                    <h2 id="modalTitle">
                        Confirmo que mi información escolar es correcta.</h2>
                    <p class="lead">
                        Para activar tu información escolar, llena el siguiente campo con el código que
                        ves en la imagen (en mayúsculas) y haz clic en el botón “ACEPTO”.</p>
                    <div class="small-12 medium-12 large-12 columns separa_v">
                        <div id="capcha_activar">
                        </div>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="http://www.subes.sep.gob.mx/perfil/info-escolar/#" class="btn btn-flat btn-primary button expand"
                            id="activar">Acepto</a>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="./SUBES_files/SUBES.html" class="btn btn-flat button expand">Cancelar</a>
                    </div>
                    <a class="close-reveal-modal" aria-label="Close">×</a>
                </div>
                <div id="desactivarModal" class="reveal-modal" data-reveal="" aria-labelledby="modalTitle2"
                    aria-hidden="true" role="dialog">
                    <h2 id="modalTitle">
                        Confirmo que deseo DESACTIVAR esta información escolar.</h2>
                    <p class="lead">
                        Para desactivar tu información escolar, llena el siguiente campo con el código que
                        ves en la imagen (en mayúsculas) y haz clic en el botón “DESACTIVAR”.</p>
                    <div class="small-12 medium-12 large-12 columns separa_v">
                        <div id="capcha_desactivar">
                        </div>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="http://www.subes.sep.gob.mx/perfil/info-escolar/#" class="btn btn-flat btn-primary button expand"
                            id="desactivar">Acepto</a>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="./SUBES_files/SUBES.html" class="btn btn-flat button expand">Cancelar</a>
                    </div>
                    <a class="close-reveal-modal" aria-label="Close">×</a>
                </div>
                <div id="activarDocenteModal" class="reveal-modal" data-reveal="" aria-labelledby="modalTitle"
                    aria-hidden="true" role="dialog">
                    <h2 id="modalTitle">
                        Confirmo que mi información docente es correcta.</h2>
                    <p class="lead">
                        Para activar tu información docente, llena el siguiente campo con el código que
                        ves en la imagen (en mayúsculas) y haz clic en el botón “ACEPTO”.</p>
                    <div class="small-12 medium-12 large-12 columns separa_v">
                        <div id="capcha_activar_docente">
                        </div>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="http://www.subes.sep.gob.mx/perfil/info-escolar/#" class="btn btn-flat btn-primary button expand"
                            id="activar_docente">Acepto</a>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="./SUBES_files/SUBES.html" class="btn btn-flat button expand">Cancelar</a>
                    </div>
                    <a class="close-reveal-modal" aria-label="Close">×</a>
                </div>
                <div id="desactivarDocenteModal" class="reveal-modal" data-reveal="" aria-labelledby="modalTitle2"
                    aria-hidden="true" role="dialog">
                    <h2 id="modalTitle">
                        Confirmo que deseo DESACTIVAR esta información docente.</h2>
                    <p class="lead">
                        Para desactivar tu información docente, llena el siguiente campo con el código que
                        ves en la imagen (en mayúsculas) y haz clic en el botón “DESACTIVAR”.</p>
                    <div class="small-12 medium-12 large-12 columns separa_v">
                        <div id="capcha_desactivar_docente">
                        </div>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="http://www.subes.sep.gob.mx/perfil/info-escolar/#" class="btn btn-flat btn-primary button expand"
                            id="desactivar_docente">Acepto</a>
                    </div>
                    <div class="small-12 medium-5 large-4 columns derecha separa_v">
                        <a href="./SUBES_files/SUBES.html" class="btn btn-flat button expand">Cancelar</a>
                    </div>
                    <a class="close-reveal-modal" aria-label="Close">×</a>
                </div>
            </div>
            <div class="large-12 columns separa_v_xl" align="right">
                <a href="http://www.subes.sep.gob.mx/perfil/solicitudes/" class="btn btn-flat btn-primary button"
                    id="activar">Siguiente sección</a>
            </div>
        </div>
    </div>
    <div class="row row_xl separa_v_xl">
        <footer align="right">
       <a href="http://www.subes.sep.gob.mx/perfil/info-escolar/#arriba" class="btn btn-flat btn-primary"><span class="icon-arrow-up">Ir arriba</span></a>
	   <h5>SUBES 2015  <a href="http://www.subes.sep.gob.mx/politicas-de-privacidad/" class="">Políticas de privacidad</a></h5><a href="http://www.subes.sep.gob.mx/politicas-de-privacidad/" class="">
	</a></footer>
        <a href="http://www.subes.sep.gob.mx/politicas-de-privacidad/" class=""></a>
    </div>
    <a href="http://www.subes.sep.gob.mx/politicas-de-privacidad/" class=""></div>
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
        <script type="text/javascript" src="../../utils/perfil/selectFichaEscolar.js"></script>
</body>
</html>
