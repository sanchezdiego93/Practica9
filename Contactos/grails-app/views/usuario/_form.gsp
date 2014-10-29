<%@ page import="practica.contactos.dominios.Usuario, practica.contactos.dominios.Departamento" %>

<div class="from-group ${hasErrors(bean: usuarioInstance, field: 'nombres', 'error')} required">
	<label for="nombres" class="col-sm-3">
		<g:message code="usuario.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-9">
        <g:textField name="nombres" required="" class="form-control" value="${usuarioInstance?.nombres}"/>
    </div>
</div>
<br/><br/>
<div class="from-group ${hasErrors(bean: usuarioInstance, field: 'nombreusuario', 'error')} required">
	<label for="nombreusuario" class="col-sm-3">
		<g:message code="usuario.nombreusuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-9">
        <g:textField name="nombreusuario" required="" class="form-control" value="${usuarioInstance?.nombreusuario}"/>
    </div>
</div>
<br/><br/>
<div class="from-group ${hasErrors(bean: usuarioInstance, field: 'contrasena', 'error')} required">
    <label for="contrasena" class="col-sm-3">
        <g:message code="usuario.contrasena.label" default="Contraseña" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-9">
        <g:textField name="contrasena" required="" class="form-control" value="${usuarioInstance?.contrasena}"/>
    </div>
</div>
<br/><br/>
<div class="form-group ${hasErrors(bean: usuarioInstance, field: 'departamento', 'error')} required">
    <label for="departamento" class="col-sm-3">
        <g:message code="usuario.departamento.label" default="Departamento" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-9">
        <g:select id="departamento" name="departamento.id" from="${practica.contactos.dominios.Departamento.list()}" optionKey="id" required="" value="${usuarioInstance?.departamento?.id}" class="form-control col-sm-10"/>
    </div>
</div>

