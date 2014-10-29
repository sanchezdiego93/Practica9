package contactos

class FiltroSesionFilters {

    def filters = {
        all(controller:'categoria, contacto, departamento', action:'*') {
            before = {
                if (!session.usuario && !controllerName.equals("Usuario") && !actionName.equals("login")
                ) {
                    redirect(controller: "Usuario", action: 'login')
                    return false
                }
            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
