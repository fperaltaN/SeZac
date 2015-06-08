<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configuracion.aspx.cs"
    Inherits="SeZac.Beneficiario.Configuracion" %>

<html class=" js draganddrop rgba multiplebgs borderradius boxshadow textshadow opacity">
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
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <link rel="shortcut icon" href="http://www.SUBEZ.sep.gob.mx/favicon.ico">
    <link rel="icon" href="http://www.SUBEZ.sep.gob.mx/sep.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://www.SUBEZ.sep.gob.mx/perfil/me/static/img/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://www.SUBEZ.sep.gob.mx/perfil/me/static/img/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="http://www.SUBEZ.sep.gob.mx/perfil/me/static/img/icons/apple-touch-icon-57-precomposed.png">
    <script async="" src="./SUBEZ_files/analytics.js"></script>
    <script src="../Css/Script/js"></script>
    <script src="../Css/Script/main.js"></script>
    <meta class="foundation-data-attribute-namespace">
    <meta class="foundation-mq-xxlarge">
    <meta class="foundation-mq-xlarge-only">
    <meta class="foundation-mq-xlarge">
    <meta class="foundation-mq-large-only">
    <meta class="foundation-mq-large">
    <meta class="foundation-mq-medium-only">
    <meta class="foundation-mq-medium">
    <meta class="foundation-mq-small-only">
    <meta class="foundation-mq-small">
    <style></style>
    <script type="text/javascript" charset="UTF-8" src="./SUBEZ_files/common.js"></script>
    <script type="text/javascript" charset="UTF-8" src="./SUBEZ_files/util.js"></script>
    <script type="text/javascript" charset="UTF-8" src="./SUBEZ_files/stats.js"></script>
</head>
<body class="body">
    <header class="row contenedor_gral" id="arriba">
         <div class="large-3">
            <img src="../Image/SeZac.jpg">
         </div>
         <hr>
      </header>
    <div class="row contenedor_gral">
        <section class="large-3 columns " role="main">
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
                  <li ><a href="SolicitudBeca.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes de beca</a></li>
                  <li class="current"><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
                        </ul>
                        </nav>
             <!-- /Main navigation --> 
             
             <!-- Sample side note -->
                   <section class="side-note">
                     <div class="side-note-container">
                       <h2><a href="http://www.SUBEZ.sep.gob.mx/archivos/tutor/configuracion.pdf" target="_blank">Manual de esta sección</a></h2>
                       <p></p>
                     </div>
                     <div class="side-note-bottom"></div>
                   </section>
            </div>
      </section>
        <div class="small-12 medium-12 large-9 columns borde_contenedor">
            <div class="small-12 medium-12 large-12 columns separa_v" data-equalizer="">
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                    style="height: 468px;">
                    <header>
                     <h4><span class="awe-envelope"></span> Cambio de Correo Electrónico</h4>
                     <hr>
                  </header>
                    <div id="upd-newemail-dv">
                        <form>
                        <div class="large-12 columns separa_v">
                            <label>
                                Correo Electrónico Actual
                                <input type="text" id="email_act" class="rq uneditable-input" value="luishdezlazaro@hotmail.com"
                                    readonly="">
                            </label>
                            <label>
                                Contraseña Actual
                                <input type="password" id="chp-pass-act_" class="rq">
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <label>
                                Correo Electrónico Nuevo
                                <input type="text" id="new-email" class="rq">
                            </label>
                            <label>
                                Confirma Correo Electrónico
                                <input type="text" id="new-email-conf" class="rq">
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <button type="submit" class="btn btn-flat btn-primary button expand" id="upd-new-email">
                                Actualizar</button>
                        </div>
                        </form>
                    </div>
                </div>
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v" data-equalizer-watch=""
                    style="height: 468px;">
                    <header>
                     <h4><span class="awe-lock"></span> Cambio de Contraseña</h4>
                     <hr>
                  </header>
                    <div id="new-pass">
                        <form>
                        <div class="large-12 columns separa_v">
                            <label>
                                Contraseña Actual
                                <input type="password" id="chp-pass-act" class="rq">
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <label>
                                Contraseña Nueva
                                <input type="password" id="new-paswd" class="rq"><div class="pstrength-bar" id="new-paswd_bar"
                                    style="border: 1px solid white; font-size: 1px; height: 5px; width: 0px;">
                                </div>
                                <div class="pstrength-info" id="new-paswd_text">
                                </div>
                                <div class="pstrength-minchar" id="new-paswd_minchar">
                                </div>
                            </label>
                            <label>
                                Confirma Contraseña
                                <input type="password" id="new-paswd-conf" class="rq">
                            </label>
                        </div>
                        <div class="large-12 columns separa_v">
                            <button type="submit" class="btn btn-flat btn-primary button expand" id="upd-new-paswd">
                                Actualizar</button>
                        </div>
                        </form>
                        <footer class="info" style="margin: 0px;">
                        <h5>Enviaremos la nueva contraseña a tu correo.</h5>
                     </footer>
                    </div>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-12 medium-12 large-6 columns borde_contenedor separa_v">
                    <header>
                     <h4><span class="awe-camera"></span> Foto de perfil</h4>
                     <hr>
                  </header>
                    <div id="holder" class="draag">
                        <div style="margin-top: 200px; margin-bottom: auto;">
                            <button class="btn btn-flat btn-primary button expand" id="upload-foto">
                                Busca en el equipo</button>
                        </div>
                    </div>
                    <div class="progress progress-success progress-striped active" style="margin-bottom: 9px;">
                        <div class="bar" id="progreso">
                        </div>
                    </div>
                    <footer class="info" style="margin: 0px;">
                     <h5>Tamaño recomendado 200 x 200 pixeles.</h5>
                  </footer>
                </div>
                <div class="row custom-file">
                    <form id="foto-form" action="" method="post" enctype="multipart/form-data">
                    <input id="up-foto" type="file" accept="image/*">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row row_xl separa_v_xl">
        <footer align="right">
       <a href="http://www.SUBEZ.sep.gob.mx/perfil/configuracion/#arriba" class="btn btn-flat btn-primary"><span class="icon-arrow-up">Ir arriba</span></a>
	   <h5>SUBEZ 2015  <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">Políticas de privacidad</a></h5><a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
	</a></footer>
        <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class=""></a>
    </div>
    <a href="http://www.SUBEZ.sep.gob.mx/politicas-de-privacidad/" class="">
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
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-42955936-1', 'auto');
            ga('send', 'pageview');
        </script>
        <script type="text/javascript" src="./SUBEZ_files/navigation.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-affix.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-dropdown.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-inputmask.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-tooltip.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-popover.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/jquery.jgrowl.js"></script>
        <script type="text/javascript" src="./SUBEZ_files/bootstrap-transition.js"></script>
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
        <script type="text/javascript" src="./SUBEZ_files/conf.js"></script>
        <script>
            $(document).foundation();
        </script>
    </a>
</body>
</html>
