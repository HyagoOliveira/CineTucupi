package com.cadastro

import com.multimidia.Midia

class Genero {
    String nome

    static belongsTo = [midia: Midia]

    static constraints = {
    }
}
