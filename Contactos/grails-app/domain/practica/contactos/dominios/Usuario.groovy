package practica.contactos.dominios

class Usuario {
    String nombreusuario
    String contrasena
    String nombres

    static belongsTo = [ departamento : Departamento]

    static constraints = {
        nombreusuario blank: false, unique:true
        contrasena blank: false, password:true
        nombres blank: true
    }
}
