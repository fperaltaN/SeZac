<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Sistema.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>SUBEZ</title>
    <meta name="description" content="" />
    <meta name="author" content="Blue Team CIMAT" />
    <meta name="robots" content="index, follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <script src="../Css/Script/responsive-tables.js" type="text/javascript"></script>
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="Css/Style/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/foundation.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.jgrowl.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/responsive-tables.css" rel="stylesheet" type="text/css" />
    <link href="../Css/Style/jquery.visualize.css" rel="stylesheet" type="text/css" />
    <link href="Css/Style/cnbes.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="icon" href="../../sep.png" type="image/x-icon">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../me/static/img/icons/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../me/static/img/icons/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../me/static/img/icons/apple-touch-icon-57-precomposed.png">
    <script type="text/css" src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <meta class="foundation-data-attribute-namespace" />
    <meta class="foundation-mq-xxlarge" />
    <meta class="foundation-mq-xlarge-only" />
    <meta class="foundation-mq-xlarge" />
    <meta class="foundation-mq-large-only">
    <meta class="foundation-mq-large">
    <meta class="foundation-mq-medium-only">
    <meta class="foundation-mq-medium">
    <meta class="foundation-mq-small-only">
    <meta class="foundation-mq-small">
    <style></style>
</head>
<body class="">
<form id="form1" runat="server">
    <div id="modal-from-dom" class="modal hide fade" aria-hidden="true" style="display: none;">
        <div class="modal-body">
            <p align="center">
                <br>
                Evita un mal manejo de tu cuenta en el SUBEZ,
                <br>
                guarda tu contraseña y no la compartas con nadie.<br>
                ¡Recuerda, es tu responsabilidad!<br>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="small-6 medium-6 large-6 columns">
            <div class="small-11 medium-9 large-7 columns">
                <img src="../Image/SeZac.jpg"/>
            </div>
        </div>
        <div class="small-6 medium-6 large-6 columns">
            <div class="small-11 medium-9 large-7 columns derecha">
                <img src="../Image/SeZac2.jpg"/>
            </div>
        </div>
    </div>
    <div class="row fondo_gris">
        <div class="small-12 medium-12 large-12 columns" align="center">
            <div class="small-12 medium-12 large-3 columns" align="center">
                <h3>
                    Bienvenid@
                </h3>
            </div>
            <div class="small-12 medium-12 large-3 columns no_padding separa_v" align="center">
                &nbsp;</div>
            <div class="small-12 medium-12 large-6 columns" align="justify">
                <h5>
                    El Sistema Único de Beneficiarios de Estado de Zacactecas integra tu información
                    en un sólo lugar.</h5>
            </div>
        </div>
        <div class="small-12 medium-12 large-6 columns">
            <div class="small-12 medium-12 large-12 columns">
                <header class="small-12 medium-12 large-12 columns">
                  <div class="small-2 medium-2 large-1 columns separa_v_xl no_padding" align="center">
                     <img src="../Image/ico_user.png"/>
                  </div>
                  <div class="small-10 medium-10 large-11 columns separa_v_xl" align="justify">
                     <h4>Ingresar.</h4>
                  </div>
               </header>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <input type="text" class="large-12.columns" id="lg-curp" name="lg-curp" onkeyup="this.value=this.value.toUpperCase();"
                        maxlength="18" placeholder="CURP">
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <input type="password" class="large-12.columns" id="lg-pass" name="lg-pass" placeholder="CONTRASEÑA">
                </div>
                <div class="small-12 medium-12 large-12 columns separa_v">
                    <asp:Button ID="LoginButton" runat="server" 
                        class="btn btn-flat btn-primary button expand" Text="Inicia sesión" 
                        onclick="LoginButton_Click" />
                    &nbsp;</div>
                <div class="small-12 medium-12 large-12 columns separa_v" id="msg-form-lg-a">
                </div>
                <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                    <a data-toggle="modal" data-reveal-id="recupera" href="../#" class="enlace">No recuerdo
                        mi contraseña</a>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <h5>
                        ¿No tienes una cuenta?</h5>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v">
                    <a data-toggle="modal" data-reveal-id="registro" href="../#"
                        class="btn btn-flat button expand enlace">¡Regístrate ahora!</a>
                </div>
            </div>
        </div>
        <div class="small-12 medium-12 large-6 columns">
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-2 medium-2 large-2 columns separa_v_xl no_padding" align="center">
                    <img src="../Image/ico_msg.png"/>
                </div>
                <div class="small-10 medium-10 large-10 columns separa_v_xl" align="justify">
                    <h5>
                        ¡Consulta tus “Mensajes” del SUBEZ!</h5>
                    <h5>
                        Toda la información de la beca llega a está sección.</h5>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-2 medium-2 large-2 columns separa_v_xl no_padding" align="center">
                    <img src="../Image/ico_info.png" style="width: 80%">
                </div>
                <div class="small-10 medium-10 large-10 columns separa_v_xl" align="justify">
                    <h5>
                        ¿Tienes dudas?</h5>
                    <h4>
                        <a href="../manual_general.pdf" target="_blank"
                            class="rojo">Manual de usuario</a>.</h4>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns">
                <div class="small-2 medium-2 large-2 columns separa_v_xl no_padding" align="center">
                    <img src="../Image/ico_movil.png" style="width: 75%">
                </div>
                <div class="small-10 medium-10 large-10 columns separa_v_xl" align="justify">
                    <h5>
                        ¡El SUBEZ también es móvil!</h5>
                    <h5>
                        Ingresa al SUBEZ desde cualquier dispositivo móvil.</h5>
                </div>
            </div>
        </div>
        <div id="recupera" class="reveal-modal" data-reveal="" aria-labelledby="modalTitle"
            aria-hidden="true" role="dialog">
            <h2 id="modalTitle">
                Olvidaste tu contraseña.</h2>
            <p class="lead">
                Para la Coordinación Nacional de Becas de Educación Superior es muy importante mantener
                comunicación contigo a través del SUBEZ.</p>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Ingresa tu CURP para recuperar tu contraseña:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <input type="text" class="large-12.columns" id="curp-restore" onkeyup="this.value=this.value.toUpperCase();"
                        maxlength="18" placeholder="CURP">
                </div>
            </div>
            <div id="msg-restore">
            </div>
            <div class="small-12 medium-8 large-4 columns derecha separa_v">
                <a href="../#" class="btn btn-flat btn-primary button expand"
                    id="restore-paswd">Recuperar contraseña</a>
            </div>
            <a class="close-reveal-modal" aria-label="Close">×</a>
        </div>
        <div id="registro" class="reveal-modal" data-reveal="" aria-labelledby="modalTitle"
            aria-hidden="true" role="dialog">
            <h2 id="modalTitle">
                Registro al Sistema Único de Beneficiarios de Educación Superior.</h2>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe tu CURP:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <input type="text" class="large-12.columns nopaste" id="curp-reg" onkeyup="this.value=this.value.toUpperCase();"
                        maxlength="18">
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe tu Correo Electrónico:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <input type="text" class="large-12.columns nopaste" id="email-reg">
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe nuevamente tu Correo Electrónico:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <input type="text" class="large-12.columns nopaste" id="email-reg2">
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe una contraseña exclusiva para SUBEZ:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <input type="password" class="large-12.columns nopaste" id="paswd-reg" placeholder="Mínimo 6 caracteres"><div
                        class="pstrength-bar" id="paswd-reg_bar" style="border: 1px solid white; font-size: 1px;
                        height: 5px; width: 0px;">
                    </div>
                    <div class="pstrength-info" id="paswd-reg_text">
                    </div>
                    <div class="pstrength-minchar" id="paswd-reg_minchar">
                    </div>
                </div>
            </div>
            <div class="small-12 medium-12 large-12 columns separa_v" align="right">
                <div class="small-12 medium-6 large-6 columns separa_v" align="right">
                    <label for="curp-restore">
                        Escribe nuevamente tu contraseña exclusiva para SUBEZ:<label>
                        </label>
                    </label>
                </div>
                <div class="small-12 medium-6 large-6 columns separa_v" align="left">
                    <input type="password" class="large-12.columns nopaste" id="paswd-reg2" placeholder="Mínimo 6 caracteres"><div
                        class="pstrength-bar" id="paswd-reg2_bar" style="border: 1px solid white; font-size: 1px;
                        height: 5px; width: 0px;">
                    </div>
                    <div class="pstrength-info" id="paswd-reg2_text">
                    </div>
                    <div class="pstrength-minchar" id="paswd-reg2_minchar">
                    </div>
                </div>
            </div>
            <div id="msg-reg">
            </div>
            <div class="small-12 medium-8 large-4 columns derecha separa_v">
                <a id="start-reg" class="btn btn-flat btn-primary button expand">Iniciar Registro</a>
            </div>
            <a class="close-reveal-modal" aria-label="Close">×</a>
        </div>
    </div>
    <div class="row">
        <div class="small-12 medium-12 large-12 columns separa_v_xl" align="right">
            <a href="../politicas-de-privacidad/" target="_blank" class="enlace">
                Politicas de privacidad</a>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
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
        $(document).ready(function () {
            $('#modal-from-dom').modal({
                keyboard: true
            });
            $('.nopaste').bind("cut copy paste", function (e) {
                e.preventDefault();
            });
        });
    </script>
    </form>
</body>
</html>