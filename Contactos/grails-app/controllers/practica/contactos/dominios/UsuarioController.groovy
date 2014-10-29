package practica.contactos.dominios

class UsuarioController {
    def scaffold = Usuario

    def login = {}

    def authenticate = {
        def usuario = Usuario.findByNombreusuarioAndContrasena(params.nombreusuario, params.contrasena)
        if(usuario){
            session.departamento = usuario.departamento
            session.usuario = usuario
            flash.message = "Bienvenido ${usuario.nombres}!"
            redirect(controller:"departamento", action:"dashboard")
        }else{
            flash.message = "Lo lamentamos, ${params.nombreusuario}. Por favor trata nuevamente."
            redirect(action:"login")
        }
    }

    def logout = {
        if(session.usuario){

            flash.message = "Bye ${session.usuario.nombreusuario}"
            session.usuario = null
        }
        redirect(controller:"Usuario", action: "login")
    }
}
