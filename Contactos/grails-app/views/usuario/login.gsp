<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 10/21/2014
  Time: 1:41 PM
--%>

<!DOCTYPE>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <asset:stylesheet src="principal.css"/>
    <asset:javascript src="principal.js" />
    <title>
        Login
    </title>
    <style>
    body
    {
        margin-top: 10%;
    }
    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
</head>
<body>
<div style="padding-top: 8%">
    <g:form controller="usuario" action="authenticate" method="POST">
        <div>
            <label for="nombreUsuario" class="col-sm-2 control-label" style="padding-left: 40%">
                Usuario
            </label>
            <div class="col-sm-10" style="padding-left: 40%">
                <input type="text" class="form-control" id="nombreusuario" name="nombreusuario" placeholder="Nombre de Usuario" style="width: 25%">
            </div>
        </div>
        <br /><br />
        <div>
            <label for="contrasena" class="col-sm-2 control-label" style="padding-left: 40%">
                Contraseña
            </label><br>
            <div class="col-sm-10" style="padding-left: 40%">
                <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña"  style="width: 25%">
            </div>
        </div>
        <div style="padding-top: 5%;padding-right: 32%">
            <div class="col-sm-offset-6 col-sm-6">
                <g:link controller="Usuario" action='create' class="btn btn-primary"><i class="fa fa-users"></i>
                    Registrar Cuenta
                </g:link>
                <button type="submit" class="btn btn-success"><i class="fa fa-sign-in"></i> Iniciar Sesión</button>
            </div>
        </div>
    </g:form>
</div>
</body>
</html>