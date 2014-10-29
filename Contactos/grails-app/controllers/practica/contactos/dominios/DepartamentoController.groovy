package practica.contactos.dominios


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DepartamentoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [departamentoInstanceList: Departamento.list(params), departamentoInstanceCount: Departamento.count]
    }

    def dashboard(){
        render(view: 'dashboard')
    }

    def show(Departamento departamentoInstance) {
        if(session.usuario?.nombreusuario != "admin") {
            if (session.departamento?.id != departamentoInstance.id) {
                redirect(controller: "departamento", action: "show", id: session.departamento?.id)
            }
        }
        def contactos = Contacto.list()
        def contacto_dep = []
        for(contacto in contactos)
        {
            for(departamento in contacto.departamentos){
                if(departamento.id == departamentoInstance.id){
                    contacto_dep.add(contacto)
                    break
                }
            }
        }
        respond departamentoInstance, model : [contactosDepartamento: contacto_dep]
    }

    def create() {
        if(session.usuario?.nombreusuario != "admin"){
            redirect(controller: "departamento", action: "show", id: session.departamento?.id)
        }
        respond new Departamento(params)
    }

    @Transactional
    def save(Departamento departamentoInstance) {
        if (departamentoInstance == null) {
            notFound()
            return
        }

        if (departamentoInstance.hasErrors()) {
            respond departamentoInstance.errors, view: 'create'
            return
        }

        departamentoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'departamento.label', default: 'Departamento'), departamentoInstance.id])
                redirect departamentoInstance
            }
            '*' { respond departamentoInstance, [status: CREATED] }
        }
    }

    def edit(Departamento departamentoInstance) {
        if(session.usuario?.nombreusuario != "admin"){
            redirect(controller: "Departamento", action: "show", id: session.departamento?.id)
        }
        respond departamentoInstance
    }

    @Transactional
    def update(Departamento departamentoInstance) {
        if (departamentoInstance == null) {
            notFound()
            return
        }

        if (departamentoInstance.hasErrors()) {
            respond departamentoInstance.errors, view: 'edit'
            return
        }

        departamentoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Departamento.label', default: 'Departamento'), departamentoInstance.id])
                redirect departamentoInstance
            }
            '*' { respond departamentoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Departamento departamentoInstance) {
        if(session.usuario?.nombreusuario != "admin"){
            redirect(controller: "Departamento", action: "show", id: session.departamento?.id)
        }

        if (departamentoInstance == null) {
            notFound()
            return
        }

        departamentoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Departamento.label', default: 'Departamento'), departamentoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'departamento.label', default: 'Departamento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
