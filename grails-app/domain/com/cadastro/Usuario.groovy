package com.cadastro

import com.security.User
import org.grails.databinding.BindingFormat

class Usuario extends Pessoa {

    User springUser
    String email

    static constraints = {
    }
}
