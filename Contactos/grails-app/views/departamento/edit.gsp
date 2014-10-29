<%@ page import="practica.contactos.dominios.Departamento" %>
<g:set var="entityName" value="${message(code: 'departamento.label', default: 'Departamento')}" />
<g:applyLayout name="plantillaBootstrap">
    <content tag="header">
        <g:message code="default.edit.label" args="[entityName]" />
    </content>

    <content tag="content">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${departamentoInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${departamentoInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <g:form url="[resource:departamentoInstance, action:'update']" method="PUT"  class="form-horizontal">
            <g:hiddenField name="version" value="${departamentoInstance?.version}" />
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <div class="form-group">
                <div class="pull-right">
                    <g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </div>
            </div>
        </g:form>
    </content>

    <content tag="sidebar">
    </content>


</g:applyLayout>