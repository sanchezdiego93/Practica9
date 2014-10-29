<%@ page import="practica.contactos.dominios.Contacto" %>
<g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
<g:applyLayout name="plantillaBootstrap">
    <content tag="header">
        <g:message code="default.show.label" args="[entityName]" />
    </content>

    <content tag="content">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="col-xs-12 col-sm-12 col-md-12" >


            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title"><%= contactoInstance?.nombres %> <%= contactoInstance?.apellidos %></h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class=" col-md-9 col-lg-9 ">
                            <table class="table table-user-information">
                                <tbody>
                                <tr>
                                    <td>Departamentos:</td>
                                    <td>
                                        <ul>
                                            <g:each in="${contactoInstance?.departamentos}" status="i" var="departamento">
                                                <g:link controller="departamento" action="show" id="${departamento?.id}">${departamento?.encodeAsHTML()}</g:link>
                                            </g:each>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Puesto</td>
                                    <td><%= contactoInstance?.puesto %></td>
                                </tr>
                                <tr>
                                    <td>Categoría:</td>
                                    <td><g:link controller="categoria" action="show" id="${contactoInstance?.categoria?.id}">${contactoInstance?.categoria?.encodeAsHTML()}</g:link></td>
                                </tr>
                                <tr>
                                    <td>Dirección</td>
                                    <td><%= contactoInstance?.direccion %></td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td><%= contactoInstance?.email %></td>
                                </tr>
                                <tr>
                                    <td>Teléfono</td>
                                    <td><b>(Oficina)</b> <%= contactoInstance?.telefono %> <br/><b>(Móvil)</b> <%= contactoInstance?.movil %></td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel-footer">

                    <span class="pull-right">

                    </span>

                </div>

            </div>
        </div>
    </content>

    <content tag="sidebar">
        <div class="btn-group btn-group-lg">
            <g:link class="btn btn-lg btn-warning" action="edit" resource="${contactoInstance}"><i class="glyphicon glyphicon-edit"></i> <g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:link class="btn btn-lg btn-primary" action="create" controller="contacto"><i class="glyphicon glyphicon-plus"></i> Crear </g:link>
            <g:link class="btn btn-lg btn-success" action="index" controller="contacto"><i class="glyphicon glyphicon-th-list"></i> Listado</g:link>
        </div>
    </content>


</g:applyLayout>