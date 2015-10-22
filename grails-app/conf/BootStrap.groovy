import grails.util.Environment

class BootStrap {

    def grailsApplication
    def fixtureLoader

    def init = { servletContext ->
        systemInicialLog()
        loadFixtures()
//        DomainConfigurationFilter.init(grailsApplication)
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

    def loadFixtures() {

    }
}
