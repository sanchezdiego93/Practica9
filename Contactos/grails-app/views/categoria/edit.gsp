<%@ page import="practica.contactos.dominios.Categoria" %>
<g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
<g:applyLayout name="plantillaBootstrap">
    <content tag="header">
        <g:message code="default.edit.label" args="[entityName]" />
    </content>

    <content tag="content">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${categoriaInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${categoriaInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
    <g:form url="[resource:categoriaInstance, action:'update']" method="PUT" class="form-horizontal" >
        <g:hiddenField name="version" value="${categoriaInstance?.version}" />
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <div class="form-group">
                <div class="pull-right">
                    <g:actionSubmit action="update" class="btn btn-lg btn-primary" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </div>
            </div>
        </g:form>
    </content>

    <content tag="sidebar">
    </content>


</g:applyLayout>
