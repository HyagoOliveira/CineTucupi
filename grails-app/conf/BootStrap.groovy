import com.cadastro.Sexo
import com.cadastro.Usuario
import com.security.Role
import com.security.User
import com.security.UserRole
import grails.util.Environment


class BootStrap {

    def grailsApplication
    def fixtureLoader

    def init = { servletContext ->
        systemInicialLog()
        loadDefaultSettings()
    }
    def destroy = {
    }

    def systemInicialLog() {
        def version = grailsApplication.metadata['app.version']
        log.info "-------------------------------------"
        log.info "CINE TUCUPI versão: $version"
        log.info "(C) REDES MULTIMIDIAS 2015"
        log.info "-------------------------------------"
        log.info "System initialized..."
        log.info "Environment: ${Environment.current.name}"
    }

    def loadDefaultSettings() {
        if(User.findByUsername('suporte.tucupi') == null){
            fixtureLoader.load ("create_user_admin")
        }
    }
}
