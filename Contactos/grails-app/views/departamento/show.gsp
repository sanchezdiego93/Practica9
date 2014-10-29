
<%@ page import="practica.contactos.dominios.Departamento" %>

<g:set var="entityName" value="${message(code: 'departamento.label', default: 'Departamento')}" />
<g:applyLayout name="plantillaBootstrap">
    <content tag="header">
        <g:message code="default.show.label" args="[entityName]" />
    </content>

    <content tag="content">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="row">
            <g:each in="${contactosDepartamento}" status="i" var="contacto">
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
        <div class="row">
            <div class="col-md-12">
                <div class="thumbnail">
                    <label><span class="glyphicon glyphicon-user"></span> Creado por: <%= departamentoInstance?.creadoPor %></label><label class="pull-right"><span class="glyphicon glyphicon-time"></span> <%= (departamentoInstance?.dateCreated).format("dd/mm/yyyy hh:M aa") %></label>
                    <div class="caption">
                        <h3><g:fieldValue bean="${departamentoInstance}" field="nombre"/></h3>
                        <p>Contactos que se encuentran en el departamento <g:fieldValue bean="${departamentoInstance}" field="nombre"/>

                        </p>

                    <p>

                        <g:form url="[resource:departamentoInstance, action:'delete']" method="DELETE">
                            <fieldset class="buttons">
                                <g:link class="btn btn-warning" action="edit" resource="${departamentoInstance}"><span class="glyphicon glyphicon-edit"></span> <g:message code="default.button.edit.label" default="Edit" /></g:link>
                                <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>
                    </p>

                    </div>
                </div>
            </div>
        </div>
    </content>


</g:applyLayout>