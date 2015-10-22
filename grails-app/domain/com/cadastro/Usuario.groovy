package com.cadastro

import com.security.User
import org.grails.databinding.BindingFormat

class Usuario {

    User springUser
    String email
    String nome
    @BindingFormat('dd/MM/yyyy')
    Date dataNascimento
    Sexo sexo

    static constraints = {
    }
}
