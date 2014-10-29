import practica.contactos.dominios.Departamento
import practica.contactos.dominios.Usuario
import practica.contactos.dominios.Categoria

class BootStrap {

    def init = { servletContext ->

        def departamento2 = new Departamento(
                nombre:"Administrativo",
                creadoPor: "admin",
                modificadoPor: "admin",
                dateCreated: new Date(),
                lastUpdated: new Date()
        )
        departamento2.save()

        def categoria = new Categoria(
                nombre:"Administradores",
                creadoPor: "admin",
                modificadoPor: "admin",
                dateCreated: new Date(),
                lastUpdated: new Date()
        )
        categoria.save()

        def admin = new Usuario(nombreusuario:"admin",
                contrasena:"admin",
                nombres:"Administrador",
                departamento:departamento2)
        admin.save()
    }
    def destroy = {
    }
}
