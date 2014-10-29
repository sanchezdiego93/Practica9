package practica.contactos.dominios
import grails.rest.Resource

@Resource(uri = "/contactos", formats = ["html"] )
class Contacto {
    String nombres
    String apellidos
    String email
    String direccion
    String puesto
    String telefono
    String movil
    Categoria categoria

    static belongsTo = Departamento
    static hasMany = [departamentos : Departamento]

    String creadoPor = ""
    String modificadoPor = ""
    Date dateCreated
    Date lastUpdated


    static constraints = {
        nombres blank: false, size: 4..60
        apellidos blank: false, size: 4..60
        direccion blank: false, size: 15..90
        email email: true, blank: false, unique: true
        puesto blank: false
        telefono blank: false, unique: true, size: 10..20
        movil blank: true
        categoria blank: false
        modificadoPor blank: true
    }

    def parse_phone(phone){
        "(" + phone[0..2]+ ") " + phone[3..5] + "-" + phone[6..8]
    }
}
