<%@ page import="practica.contactos.dominios.Departamento; practica.contactos.dominios.Contacto" %>



<div class="form-group ${hasErrors(bean: contactoInstance, field: 'nombres', 'error')} required">
	<label for="nombres" class="col-sm-3">
		<g:message code="contacto.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-9">
	    <g:textField name="nombres" maxlength="60" class="form-control" required="" value="${contactoInstance?.nombres}"/>
    </div>

</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos" class="col-sm-3">
		<g:message code="contacto.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-9">
        <g:textField name="apellidos" maxlength="60" class="form-control" required="" value="${contactoInstance?.apellidos}"/>
    </div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'direccion', 'error')} required">
	<label for="direccion" class="col-sm-3">
		<g:message code="contacto.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
	<g:textField name="direccion" maxlength="90" class="form-control" required="" value="${contactoInstance?.direccion}"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'email', 'error')} required">
	<label for="email" class="col-sm-3">
		<g:message code="contacto.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
    <g:field type="email" name="email" required="" class="form-control" value="${contactoInstance?.email}"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'puesto', 'error')} required">
	<label for="puesto" class="col-sm-3">
		<g:message code="contacto.puesto.label" default="Puesto" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
    <g:textField name="puesto" required="" class="form-control" value="${contactoInstance?.puesto}"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'telefono', 'error')} required">
	<label for="telefono" class="col-sm-3">
		<g:message code="contacto.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
    <g:textField name="telefono" maxlength="20" required="" class="form-control" value="${contactoInstance?.telefono}"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'movil', 'error')} required">
	<label for="movil" class="col-sm-3">
		<g:message code="contacto.movil.label" default="Movil" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
    <g:textField name="movil" maxlength="20" required="" class="form-control" value="${contactoInstance?.movil}"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'categoria', 'error')} required">
	<label for="categoria" class="col-sm-3">
		<g:message code="contacto.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
	<g:select id="categoria" name="categoria.id" from="${practica.contactos.dominios.Categoria.list()}" optionKey="id" required="" value="${contactoInstance?.categoria?.id}" class="form-control"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'departamentos', 'error')} required">
	<label for="departamentos" class="col-sm-3">
		<g:message code="contacto.departamentos.label" default="Departamentos" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
    <g:select name="departamento_elementos.id" from="${practica.contactos.dominios.Departamento.list()}" optionKey="nombre" required="" value="${contactoInstance?.departamentos*.nombre}" multiple="true" class="form-control"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'creadoPor', 'error')} required">
	<label for="creadoPor" class="col-sm-3">
		<g:message code="contacto.creadoPor.label" default="Creado Por" />
		<span class="required-indicator">*</span>
	</label>
<div class="col-sm-9">
    <g:textField name="creadoPor" required="" class="form-control" value="${session.usuario.nombreusuario}" disabled="disabled"/>
</div>
</div>

<div class="form-group ${hasErrors(bean: contactoInstance, field: 'modificadoPor', 'error')}">
	<label for="modificadoPor" class="col-sm-3">
		<g:message code="contacto.modificadoPor.label" default="Modificado Por" />
	</label>
<div class="col-sm-9">
    <g:textField name="modificadoPor" class="form-control" value="${session.usuario.nombreusuario}" disabled="disabled"/>
</div>
</div>

