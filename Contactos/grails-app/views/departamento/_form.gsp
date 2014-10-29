<%@ page import="practica.contactos.dominios.Departamento" %>



<div class="from-group ${hasErrors(bean: departamentoInstance, field: 'nombre', 'error')} required">
	<label for="nombre" class="col-sm-3">
		<g:message code="departamento.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-9">
        <g:textField name="nombre" maxlength="50" class="form-control" required="" value="${departamentoInstance?.nombre}"/>
    </div>
</div>

<div class="from-group ${hasErrors(bean: departamentoInstance, field: 'creadoPor', 'error')} required">
	<label for="creadoPor" class="col-sm-3">
		<g:message code="departamento.creadoPor.label" default="Creado Por" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-9">
        <g:textField name="creadoPor" required="" class="form-control" value="${session.usuario.nombreusuario}" disabled="disabled" />
    </div>
</div>

<div class="from-group ${hasErrors(bean: departamentoInstance, field: 'modificadoPor', 'error')}">
	<label for="modificadoPor" class="col-sm-3">
		<g:message code="departamento.modificadoPor.label" default="Modificado Por" />
		<span class="required-indicator"></span>
	</label>
    <div class="col-sm-9">
        <g:textField name="modificadoPor" class="form-control" value="${session.usuario.nombreusuario}" disabled="disabled"/>
    </div>
</div>

