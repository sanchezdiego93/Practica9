
<%@ page import="practica.contactos.dominios.Departamento" %>
<g:set var="entityName" value="${message(code: 'departamento.label', default: 'Departamento')}" />
<g:applyLayout name="plantillaBootstrap">
    <content tag="header">
        Listado de <%= entityName %>s
    </content>

    <content tag="content">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div class="row">
            <g:each in="${departamentoInstanceList}" status="i" var="departamentoInstance">
                <div class="col-md-6">
                    <div class="thumbnail">
                        <label><span class="glyphicon glyphicon-user"></span> Creado por: <%= departamentoInstance?.creadoPor %></label><label class="pull-right"><span class="glyphicon glyphicon-time"></span> <%= (departamentoInstance?.dateCreated).format("dd/mm/yyyy hh:M aa") %></label>
                        <div class="caption">
                            <g:link action="show" id="${departamentoInstance.id}"><h3><g:fieldValue bean="${departamentoInstance}" field="nombre"/></h3></g:link>
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
            </g:each>
        </div>
    </content>

    <content tag="sidebar">
        <div class="nav" role="navigation">
            <div class="btn-group btn-group-lg">
                <g:link class="btn btn-lg btn-primary" action="create" controller="departamento"><i class="glyphicon glyphicon-plus"></i> Crear </g:link>
            </div>
        </div>
    </content>


</g:applyLayout>