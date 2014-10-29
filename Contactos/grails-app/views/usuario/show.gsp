<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
<g:applyLayout name="plantillaBootstrap">
    <content tag="header">

    </content>

    <content tag="content">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:hasErrors bean="${usuarioInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${usuarioInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </g:hasErrors>
        <div id="show-usuario" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="property-list usuario">
                <g:if test="${usuarioInstance?.nombres}">
                        <h3><span id="nombres-label" class="label label-info"><g:message code="usuario.nombres.label" default="Nombres" /></span></h3>
                        <span style="padding-left: 10%" class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${usuarioInstance}" field="nombres"/></span>
                </g:if>
                <g:if test="${usuarioInstance?.nombreusuario}">
                        <h3><span id="nombreusuario-label" class="label label-info"><g:message code="usuario.nombreusuario.label" default="Nombreusuario" /></span></h3>
                        <span style="padding-left: 10%" class="property-value" aria-labelledby="nombreusuario-label"><g:fieldValue bean="${usuarioInstance}" field="nombreusuario"/></span>
                </g:if>
                <g:if test="${usuarioInstance?.contrasena}">
                        <h3><span id="contrasena-label" class="label label-info"><g:message code="usuario.contrasena.label" default="Contraseña" /></span></h3>
                        <span style="padding-left: 10%" class="property-value" aria-labelledby="contrasena-label"><g:fieldValue bean="${usuarioInstance}" field="contrasena"/></span>

                </g:if>
            </div>
            <br/>
            <g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons" style="padding-left: 5%">
                    <g:link class="btn btn-primary btn-lg" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="btn btn-primary btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </content>

    <content tag="sidebar">
    </content>


</g:applyLayout>