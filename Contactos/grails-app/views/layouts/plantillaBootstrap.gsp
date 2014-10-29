<%@ page import="practica.contactos.dominios.Departamento; practica.contactos.dominios.Categoria" %>
<%--
  Created by IntelliJ IDEA.
  User: Diego
  Date: 10/19/2014
  Time: 12:18 AM
--%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><g:layoutTitle default="Mis Contactos"/></title>

    <asset:stylesheet src="principal.css"/>
    <asset:javascript src="principal.js" />
    <zing:include />

    <style>
    body{margin-top: 70px;}
    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>

    <g:layoutHead/>
</head>

<body>

<div class="container">
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Mis Contactos</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><g:link uri="/departamento/dashboard"> Inicio </g:link></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Departamentos <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <g:each in="${Departamento.list()}" status="i" var="departamento">
                                <li><g:link controller="Departamento" action='show' id="${departamento.id}"> ${departamento.nombre}</g:link></li>
                            </g:each>
                            <li class="divider"></li>
                            <li><g:link controller="Departamento" action='index'> Listado </g:link></li>
                            <li><g:link controller="Departamento" action='create'> Crear </g:link></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Categorias <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <g:each in="${Categoria.list()}" status="i" var="categoria">
                                <li><g:link controller="Categoria" action='show' id="${categoria.id}"> ${categoria.nombre}</g:link></li>
                            </g:each>
                            <li class="divider"></li>
                            <li><g:link controller="Categoria" action='index'> Listado </g:link></li>
                            <li><g:link controller="Categoria" action='create'> Crear </g:link></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Contactos <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><g:link controller="Contacto" action='index'> Listado </g:link></li>
                            <li><g:link controller="Contacto" action='create'> Crear </g:link></li>
                        </ul>
                    </li>
                </ul>
                <% if(session.usuario){%>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%= session.usuario.nombreusuario %> <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#"><%= session.usuario.nombreusuario %></a></li>
                            <li class="divider"></li>
                            <li><g:link controller="Usuario" action="logout">Salir</g:link></li>
                        </ul>
                    </li>
                </ul>
                <%}%>
            </div><!--/.nav-collapse -->
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h1>
                <g:pageProperty name="page.header">

                </g:pageProperty>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <g:pageProperty name="page.content">

            </g:pageProperty>
        </div>
        <div class="col-md-4">
            <g:pageProperty name="page.sidebar">

            </g:pageProperty>
        </div>
    </div>

</div>

</body>
</html>