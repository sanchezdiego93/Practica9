<%@ page import="practica.contactos.dominios.Categoria" %>



<div class="form-group ${hasErrors(bean: categoriaInstance, field: 'nombre', 'error')} required">
	<label for="nombre" class="col-sm-3">
		<g:message code="categoria.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
	<g:textField name="nombre" maxlength="50" class="form-control" required="" value="${categoriaInstance?.nombre}"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: categoriaInstance, field: 'creadoPor', 'error')} required">
	<label for="creadoPor" class="col-sm-3">
		<g:message code="categoria.creadoPor.label" default="Creado Por" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
    <g:textField name="creadoPor" class="form-control" required="" value="${session.usuario.nombreusuario}" disabled="disabled"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: categoriaInstance, field: 'modificadoPor', 'error')}">
	<label for="modificadoPor" class="col-sm-3">
		<g:message code="categoria.modificadoPor.label" default="Modificado Por" />
	</label>
<div class="col-sm-9">
    <g:textField name="modificadoPor" class="form-control" value="${session.usuario.nombreusuario}" disabled="disabled"/>
</div>
</div>

