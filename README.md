Practica 9 Asignatura Programacion Web Avanzada
=========

Practica en el framework de desarrollo Grails.

Descripción: Una empresa de renombre desea obtener una aplicación para el registro de todos los contactos externos e internos que tienen algún tipo de relación con los diferentes departamentos de la empresa.

Herramientas: IDE IntelliJ Framework Grails 2.4.3

Requisitos:

  * Manejo de usuarios, departamentos y categorias de usuarios.
  * El sistema debe mostrar un listado de los todos contactos registrados para un departamento seleccionado en el cual tenga permiso el usuario.
  * Un contacto puede tener relaciones con más de un departamento, por tal razón, se debe validar por el correo electrónico o teléfono móvil del contacto, no puede ser re-insertado en el sistema, cuando ocurra esté evento deben indicar al usuario que existe el contacto y se estará incluyendo el departamento al cual pertenece el usuario como relación.
  * Mostrar gráficos del tipo circular para ver la distribución de los contactos por departamento y categorías de un contacto.
  * Cada registro insertando o modificando debe persistir la fecha y quien lo realizo.
  * Solo el usuario administrador puede crear usuarios y asignarlos a un departamento.
  * El usuario administrador tendrá acceso a las funciones administrativas de creación de departamentos y categorías.
  * Deben existir los CRUD para los dominios de departamento y categoría, se puede utilizar scaffolding pero adaptados a la plantilla utilizada.
  * Todos los campos deben ser validados tanto en la vista como en el servidor.
  * Implementar una plantilla con buena presencia.
