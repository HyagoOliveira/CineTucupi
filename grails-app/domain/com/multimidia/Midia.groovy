package com.multimidia

import org.grails.databinding.BindingFormat

class Midia {
    String titulo
    String descricao
    @BindingFormat('dd/MM/yyyy')
    Date data

    static constraints = {
        descricao nullable: true
    }
}
