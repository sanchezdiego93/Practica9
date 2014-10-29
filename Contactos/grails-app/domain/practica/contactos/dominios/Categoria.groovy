package practica.contactos.dominios
import grails.rest.Resource

@Resource(uri = "/categorias", formats = ["html"] )
class Categoria {

    String nombre

    String creadoPor = ""
    String modificadoPor = ""
    Date dateCreated
    Date lastUpdated

    static constraints = {
        nombre blank: false, unique: true, size: 5..50
        modificadoPor blank: true
    }

    String toString(){
        nombre
    }
}