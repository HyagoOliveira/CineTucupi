package com.cadastro

import org.grails.databinding.BindingFormat

class Pessoa {

    String nome
    @BindingFormat('dd/MM/yyyy')
    Date dataNascimento
    Sexo sexo

    static constraints = {
    }
}
