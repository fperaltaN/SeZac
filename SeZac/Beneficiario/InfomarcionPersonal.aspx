<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfomarcionPersonal.aspx.cs" Inherits="SeZac.InfomarcionPersonal" %>

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
         <hr/>
      </header>
    <div class="row contenedor_gral">
        <section class="large-3 columns">
            <div class="navigation-block affix-top">
               <section class="usuario">
                  <figure> 
                  <img src="http://www.subes.sep.gob.mx/api/perfiles/foto/848690b44797674b1b2315cd70979644/3rV7/perfil.jpg" >
                  <figcaption> 
                     <strong>
                        <a class="">Luis Angel Hernandez Lazaro</a>
                     </strong> 
                     <em>HELL920809HVZRZS07</em> 
                     <em>Aspirante</em> 
                  </figcaption>
               </figure>
            </section>
            <nav class="main-navigation" role="navigation" >
               <ul>
                  <li class="current"><a href="InfomarcionPersonal.aspx" class="no-submenu"><span class="awe-user"></span>Información personal</a></li>
                  <li><a href="InfoEscolar.aspx" class="no-submenu"><span class="awe-book"></span>Información escolar</a></li>
                  <li><a href="SolicitudBeca.aspx" class="no-submenu"><span class="awe-file"></span>Solicitudes de beca</a></li>
                  <li><a href="Configuracion.aspx" class="no-submenu"><span class="awe-cogs"></span>Configuración</a></li>
                  <li><a href="#" class="no-submenu" id="logout"><span class="awe-signout"></span>Cerrar sesión</a></li>
               </ul>
            </nav>
            <section class="side-note">
               <div class="side-note-container">
                  <h2><a href="../../archivos/tutor/informacion_personal.pdf" target="_blank">Manual de esta secci&oacute;n</a></h2>
               </div>
               <div class="side-note-bottom"></div>
            </section>
         </div>
      </section>
        <!-- SECCION MAPA -->
        <section class="large-9 columns" role="content" data-equalizer>
         <div class="large-6 columns borde_contenedor hack separa_v" data-equalizer-watch>
            <div class="large-12 columns borde_contenedor hack separa_v" >
               <header>
                  <h4><span class="awe-home"></span> Información de tu Domicilio</h4>
                  <hr/>
               </header>
               <div id="info-domic-block">
                  <div class="control-group">
                     <label class="control-label" >
                        <span class="info-pop" title="¿Qué significa?" data-content="Clasificación que se le da a la vialidad, en función del tránsito vehicular y/o peatonal."></span> Tipo y nombre de la vialidad donde se ubica tu domicilio:
                     </label>
                     <div class="controls">
                        <select class="irq" id="tipo_dir">
                           <option value=" ">Selecciona una opción</option>
                           <option value="1">AMPLIACIÓN</option>
                           <option value="2">ANDADOR</option>
                           <option value="3">AVENIDA</option>
                           <option value="4">BOULEVARD</option>
                           <option value="5">CALLE</option>
                           <option value="6">CALLEJÓN</option>
                           <option value="7">CALZADA</option>
                           <option value="8">CERRADA</option>
                           <option value="9">CIRCUITO</option>
                           <option value="10">CIRCUNVALACIÓN</option>
                           <option value="11">CONTINUACIÓN</option>
                           <option value="12">CORREDOR</option>
                           <option value="13">DIAGONAL</option>
                           <option value="14">EJE VIAL</option>
                           <option value="15">PASAJE</option>
                           <option value="16">PEATONAL</option>
                           <option value="17">PERIFÉRICO</option>
                           <option value="18">PRIVADA</option>
                           <option value="19">PROLONGACIÓN</option>
                           <option value="20">RETORNO</option>
                           <option value="21">VIADUCTO</option>
                           <option value="22">NINGUNO</option>
                           <option value="23">CARRETERA</option>
                           <option value="24">CAMINO</option>
                           <option value="25">TERRACERIA</option>
                           <option value="26">BRECHA</option>
                           <option value="27">VEREDA</option>
                        </select>
                     </div>
                     <div class="controls">
                        <input class="rq validaLetras" id="dir" type="text">
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Caracteres alfanuméricos y símbolos que identifican un inmueble en una vialidad."></span>Número exterior</label>
                     <div class="controls">
                        <input class="rq validaLetras" id="n_ext" type="text" placeholder="Ejemplo: #101, Edif. 2, etc." >
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Se refiere a los caracteres alfanuméricos y símbolos que identifican uno o más inmuebles pertenecientes a un número exterior."></span> Número interior</label>
                     <div class="controls">
                        <input class="validaLetras" id="n_int" type="text" placeholder="Ejemplo: Depto. 2-A, etc." >
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Hace referencia al tipo y nombre de las vialidades entre las cuales se ubica un domicilio geográfico, que corresponden a aquellas vialidades que generalmente son perpendiculares a la vialidad en donde está establecido el domicilio geográfico de interés."></span> Entre vialidad (tipo y nombre de vialidad perpendicular a tu domicilio)</label>
                     <div class="controls">
                        <select class="rq" id="tipo_calle1">
                           <option value=" ">Selecciona una opción</option>
                           <option value="1">AMPLIACIÓN</option>
                           <option value="2">ANDADOR</option>
                           <option value="3">AVENIDA</option>
                           <option value="4">BOULEVARD</option>
                           <option value="5">CALLE</option>
                           <option value="6">CALLEJÓN</option>
                           <option value="7">CALZADA</option>
                           <option value="8">CERRADA</option>
                           <option value="9">CIRCUITO</option>
                           <option value="10">CIRCUNVALACIÓN</option>
                           <option value="11">CONTINUACIÓN</option>
                           <option value="12">CORREDOR</option>
                           <option value="13">DIAGONAL</option>
                           <option value="14">EJE VIAL</option>
                           <option value="15">PASAJE</option>
                           <option value="16">PEATONAL</option>
                           <option value="17">PERIFÉRICO</option>
                           <option value="18">PRIVADA</option>
                           <option value="19">PROLONGACIÓN</option>
                           <option value="20">RETORNO</option>
                           <option value="21">VIADUCTO</option>
                           <option value="22">NINGUNO</option>
                           <option value="23">CARRETERA</option>
                           <option value="24">CAMINO</option>
                           <option value="25">TERRACERIA</option>
                           <option value="26">BRECHA</option>
                           <option value="27">VEREDA</option>
                        </select>
                     </div>
                     <div class="controls">
                        <input class="rq validaLetras" id="calle1" type="text">
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Hace referencia al tipo y nombre de las vialidades entre las cuales se ubica un domicilio geográfico, que corresponden a aquellas vialidades que generalmente son perpendiculares a la vialidad en donde está establecido el domicilio geográfico de interés."></span> Y vialidad (tipo y nombre de vialidad perpendicular a tu domicilio)</label>
                     <div class="controls">
                        <select class="rq" id="tipo_calle2">
                           <option value=" ">Selecciona una opción</option>
                           <option value="1">AMPLIACIÓN</option>
                           <option value="2">ANDADOR</option>
                           <option value="3">AVENIDA</option>
                           <option value="4">BOULEVARD</option>
                           <option value="5">CALLE</option>
                           <option value="6">CALLEJÓN</option>
                           <option value="7">CALZADA</option>
                           <option value="8">CERRADA</option>
                           <option value="9">CIRCUITO</option>
                           <option value="10">CIRCUNVALACIÓN</option>
                           <option value="11">CONTINUACIÓN</option>
                           <option value="12">CORREDOR</option>
                           <option value="13">DIAGONAL</option>
                           <option value="14">EJE VIAL</option>
                           <option value="15">PASAJE</option>
                           <option value="16">PEATONAL</option>
                           <option value="17">PERIFÉRICO</option>
                           <option value="18">PRIVADA</option>
                           <option value="19">PROLONGACIÓN</option>
                           <option value="20">RETORNO</option>
                           <option value="21">VIADUCTO</option>
                           <option value="22">NINGUNO</option>
                           <option value="23">CARRETERA</option>
                           <option value="24">CAMINO</option>
                           <option value="25">TERRACERIA</option>
                           <option value="26">BRECHA</option>
                           <option value="27">VEREDA</option>
                        </select>
                     </div>
                     <div class="controls">
                        <input class="rq validaLetras" id="calle2" type="text">
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Hace referencia al tipo y nombre de la vialidad posterior donde se encuentra el domicilio geográfico."></span> Vialidad posterior a tu domicilio (tipo y nombre de vialidad posterior a tu domicilio)</label>
                     <div class="controls">
                        <select class="rq" id="calle_posterior_tipo">
                           <option value=" ">Selecciona una opción</option>
                           <option value="1">AMPLIACIÓN</option>
                           <option value="2">ANDADOR</option>
                           <option value="3">AVENIDA</option>
                           <option value="4">BOULEVARD</option>
                           <option value="5">CALLE</option>
                           <option value="6">CALLEJÓN</option>
                           <option value="7">CALZADA</option>
                           <option value="8">CERRADA</option>
                           <option value="9">CIRCUITO</option>
                           <option value="10">CIRCUNVALACIÓN</option>
                           <option value="11">CONTINUACIÓN</option>
                           <option value="12">CORREDOR</option>
                           <option value="13">DIAGONAL</option>
                           <option value="14">EJE VIAL</option>
                           <option value="15">PASAJE</option>
                           <option value="16">PEATONAL</option>
                           <option value="17">PERIFÉRICO</option>
                           <option value="18">PRIVADA</option>
                           <option value="19">PROLONGACIÓN</option>
                           <option value="20">RETORNO</option>
                           <option value="21">VIADUCTO</option>
                           <option value="22">NINGUNO</option>
                           <option value="23">CARRETERA</option>
                           <option value="24">CAMINO</option>
                           <option value="25">TERRACERIA</option>
                           <option value="26">BRECHA</option>
                           <option value="27">VEREDA</option>
                        </select>
                     </div>
                     <div class="controls">
                        <input class="rq validaLetras" id="calle_posterior" type="text">
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Se refiere a rasgos naturales o culturales (edificaciones) que aportan información adicional para facilitar la ubicación del domicilio geográfico, esto es fundamental en vialidadessin nombre y sin número exterior."></span> Descripción de la ubicación (rasgos naturales o edificios que permitan ubicar tu domicilio</label>
                     <div class="controls">
                        <input class="rq validaLetras" id="descripcion_ubicacion" type="text">
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Sustantivo propio que identifica a los Estados y al Distrito Federal."></span> Entidad Federativa</label>
                     <div class="controls" id="cbo_edos">
                        <select class="rq" id="id_edo">
                           <option value=" ">Selecciona una opción</option>
                        </select>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Sustantivo propio que identifica al Municipio y en el caso del Distrito Federal a las Delegaciones."></span> Delegación o Municipio</label>
                     <div class="controls" id="dcbo_mpio">
                        <select class="rq" name="id_mpio" id="id_mpio" >
                        </select>
                     </div> 
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Sustantivo propio que identifica a la Localidad."></span> Localidad</label>
                     <div class="controls" id="dcbo_loc">
                        <select class="rq" name="id_loc" id="id_loc" >
                        </select>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Número que identifica al código postal, constituido por cinco dígitos, obtenido de la información oficial de Correos de México."></span> Código Postal</label>
                     <div class="controls" id="dcbo_cp">
                        <select type="text" name="id_cp" value="" id="id_cp">
                        </select>
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Clasificación que se da al asentamiento humano."></span> Tipo y nombre de asentamiento donde se ubica tu domicilio</label>
                     <div class="controls">
                        <select class="rq" id="tipo_asentamiento" name="tipo_asentamiento">
                           <option value=" ">Selecciona una opción</option>
                           <option value="1">AEROPUERTO</option>
                           <option value="2">AMPLIACIÓN</option>
                           <option value="3">BARRIO</option>
                           <option value="4">CANTÓN</option>
                           <option value="5">CIUDAD</option>
                           <option value="6">CIUDAD INDUSTRIAL</option>
                           <option value="7">COLONIA</option>
                           <option value="8">CONDOMINIO</option>
                           <option value="9">CONJUNTO HABITACIONAL</option>
                           <option value="10">CORREDOR INDUSTRIAL</option>
                           <option value="11">COTO</option>
                           <option value="12">CUARTEL</option>
                           <option value="13">EJIDO</option>
                           <option value="14">EXHACIENDA</option>
                           <option value="15">FRACCIÓN</option>
                           <option value="16">FRACCIONAMIENTO</option>
                           <option value="17">GRANJA</option>
                           <option value="18">HACIENDA</option>
                           <option value="19">INGENIO</option>
                           <option value="20">MANZANA</option>
                           <option value="21">PARAJE</option>
                           <option value="22">PARQUE INDUSTRIAL</option>
                           <option value="23">PRIVADA</option>
                           <option value="24">PROLONGACIÓN</option>
                           <option value="25">PUEBLO</option>
                           <option value="26">PUERTO</option>
                           <option value="27">RANCHERÍA</option>
                           <option value="28">RANCHO</option>
                           <option value="29">REGIÓN</option>
                           <option value="30">RESIDENCIAL</option>
                           <option value="31">RINCONADA</option>
                           <option value="32">SECCIÓN</option>
                           <option value="33">SECTOR</option>
                           <option value="34">SUPERMANZANA</option>
                           <option value="35">UNIDAD</option>
                           <option value="36">UNIDAD HABITACIONAL</option>
                           <option value="37">VILLA</option>
                           <option value="38">ZONA FEDERAL</option>
                           <option value="39">ZONA INDUSTRIAL</option>
                           <option value="40">ZONA MILITAR</option>
                           <option value="41">NINGUNO</option>
                           <option value="43">ZONA NAVAL</option>
                        </select>
                        <div class="controls" id="dcbo_asen"></div>
                        <div id="ext1"></div>
                        <label class="control-label" ><span class="info-pop" title="¿Por qué guardamos esta información?" data-content="Nos permite conocer el impacto de nuestras becas a nivel geográfico y así poder hacer una mejor planeación y distribución de las mismas."></span> Latitud</label>
                        <div class="controls"> <span class="input-large uneditable-input" id="lat"></span> </div>
                        <label class="control-label" ><span class="info-pop" title="¿Por qué guardamos esta información?" data-content="Nos permite conocer el impacto de nuestras becas a nivel geográfico y así poder hacer una mejor planeación y distribución de las mismas."></span> Longitud</label>
                        <div class="controls"> <span class="input-large uneditable-input" id="lng"></span> </div>
                        <input type="hidden" id="formatedAddress" value="">
                        <input type="hidden" id="zoom_level" value="">
                     </div>
                     <div class="form-actions separa_v_xl" align="right">
                        <button class="btn btn-flat btn-primary button expand" id="upd-inf-dom">Guardar</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="large-6 columns borde_contenedor hack separa_v" data-equalizer-watch>
            <div class="large-12 columns borde_contenedor separa_contenedor separa_v">
               <header>
                  <h4><span class="awe-map-marker"></span> Mapa de tu Domicilio</h4>
                  <hr/>
               </header>
                  <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d14716.09186003229!2d-102.55634!3d22.764529!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2smx!4v1433699645330" width="400" height="300" frameborder="0" style="border:0"></iframe>
                  <div id="crosshair"></div>
            </div>
            <div class="large-12 columns borde_contenedor separa_contenedor separa_v">
               <header>
                  <h4><span class="awe-user"></span> Información Básica</h4>
                  <hr/>
               </header>
               <div class="alert alert-info letra-sm">
                  <button class="close" data-dismiss="alert" type="button">×</button>
                  <strong>Importante!</strong> Debes completar toda la información que se te solicita; será necesaria para evitar inconvenientes en tu proceso de solicitud de beca. 
               </div>
               <div class="large-12 columns">
                  <div class="control-group">


                     <div class="row">
                        <div class="large-12 columns">
                           <label>CURP
                              <input type="text" placeholder="HELL920809HVZRZS07" readonly/>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Nombre(s)
                              <input type="text" placeholder="LUIS ANGEL" readonly/>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Apellido Paterno
                              <input type="text" placeholder="HERNANDEZ" readonly/>
                           </label>
                        </div>
                     </div>

                      <div class="row">
                        <div class="large-12 columns">
                           <label>Apellido Materno
                              <input type="text" placeholder="LAZARO" readonly/>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Fecha de Nacimiento
                              <input type="text" placeholder="09/08/1992" readonly/>
                           </label>
                        </div>
                     </div>

                      <div class="row">
                        <div class="large-12 columns">
                           <label>Nacionalidad
                              <input type="text" id="nacion" readonly/>
                              <span class="input-xlarge uneditable-input"></span>
                           </label>
                        </div>
                     </div>

                     <div class="row">
                        <div class="large-12 columns">
                           <label>Entidad Federativa de Nacimiento
                              <input type="text" id="edo_nac" readonly/>
                              <span class="input-xlarge uneditable-input"></span>
                           </label>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="large-12 infBasic">
                  <div class="control-group">
                     <label class="control-label"><span class="info-pop" title="¿Qué significa?" data-content="Estado civil del aspirante."></span> Estado Civil</label>
                     <div class="controls">
                        <select id="edo_civ" class="input-xlarge rq">
                           <option value=" ">Selecciona una opción</option>
                           <option value="1">Soltero</option>
                           <option value="2">Casado</option>
                           <option value="3">Union Libre</option>
                           <option value="4">Viudo</option>
                           <option value="5">Divorciado</option>
                           <option value="6">Separado</option>
                        </select>
                     </div>
                     <label class="control-label"><span class="info-pop" title="¿Qué significa?" data-content="Teléfono fijo del aspirante."></span> Teléfono Fijo con Lada local</label>
                     <div class="controls">
                        <input id="tel_fij" type="text" placeholder="Escribe 10 digitos" data-mask="999-999-99-99" class="rq validaLetras">
                     </div>
                     <label class="control-label" ><span class="info-pop" title="¿Qué significa?" data-content="Teléfono celular del aspirante."></span> Teléfono Celular (10 números)</label>
                     <div class="controls">
                        <input id="tel_cel" type="text" placeholder="Escribe 10 digitos" data-mask="99-99-99-99-99" class="rq validaLetras">
                     </div>
                  </div>
                  <div class="large-12 columns separa_v_xl">
                     <button class="btn btn-flat btn-primary button expand" id="upd-info-basic">Guardar</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="large-12 columns separa_v_xl" align="right">
            <button class="btn btn-flat btn-primary" id="next_1" style="display: none;">Siguiente sección</button>
         </div>
         </section>
    </div>
    <div class="row row_xl separa_v_xl">
        <footer align="right">
       <a href="#arriba" class="btn btn-flat btn-primary"><span class="icon-arrow-up">Ir arriba</span></a>
	   <h5>SUBEZ 2015  <a href="" class="">Políticas de privacidad </a></h5>
	</footer>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <script src="../Css/Script/foundation.js" type="text/javascript"></script>
    <script src="../Css/Script/responsive-tables.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.accordion.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.reveal.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.equalizer.js" type="text/javascript"></script>
    <script src="../Css/Script/foundation.alert.js" type="text/javascript"></script>
    <script src="../Css/Script/global.js" type="text/javascript"></script>
    <script src="../Css/Script/modernizr.js" type="text/javascript"></script>
    <script src="../Css/Script/selectivizr.js" type="text/javascript"></script>
    <script src="../Css/Script/pstreng.js" type="text/javascript"></script>
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
    <script type="text/javascript" src="../../static/js/navigation.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-affix.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-dropdown.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-inputmask.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-tooltip.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-popover.js"></script>
    <script type="text/javascript" src="../../static/js/plugins/jGrowl/jquery.jgrowl.js"></script>
    <script type="text/javascript" src="../../static/js/bootstrap/bootstrap-transition.js"></script>
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
    <script type="text/javascript" src="../../utils/perfil/if.pe.js"></script>
</body>
</html>
