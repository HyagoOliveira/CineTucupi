package com.multimidia

import java.awt.Color

class ArquivoLegenda {

    String idioma
    Color cor

    static hasOne = [midia : Midia]

    static constraints = {
    }
}
