
<%@ page import="practica.contactos.dominios.Contacto" %>

<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
<g:applyLayout name="plantillaBootstrap">
    <content tag="header">
        Listado de <%= entityName %>s
    </content>

    <content tag="content">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
            <div class="row">
                <g:each in="${contactoInstanceList}" status="i" var="contacto">
                    <div class="col-md-4">
                        <div class="panel panel-primary text-center">
                            <!-- Default panel contents -->
                            <div class="panel-heading"><g:link controller="contacto" action="show" id="${contacto?.id}"><b style="color:white;"><%= contacto?.nombres %> <%= contacto?.apellidos %></b></g:link></div>
                            <div class="panel-body ">
                                <p>
                                    <b><span class="glyphicon glyphicon-briefcase"></span> <%= contacto?.puesto %></b><br/>
                                    <b><span class="fa fa-phone"></span> <%= contacto?.parse_phone(contacto?.telefono) %></b>
                                </p>
                            </div>
                        </div>
                    </div>
                </g:each>

            </div>
    </content>

    <content tag="sidebar">
        <div class="btn-group btn-group-lg">
            <g:link class="btn btn-lg btn-primary" action="create" controller="contacto"><i class="glyphicon glyphicon-plus"></i> Crear </g:link>
        </div>
    </content>


</g:applyLayout>
