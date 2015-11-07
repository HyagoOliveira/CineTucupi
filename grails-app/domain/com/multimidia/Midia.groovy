package com.multimidia

import com.cadastro.Ator
import com.cadastro.Diretor
import com.cadastro.Estudio
import com.cadastro.Genero
import org.grails.databinding.BindingFormat

class Midia {
    String titulo
    String descricao
    @BindingFormat('dd/MM/yyyy')
    Date data

    Estudio estudio
    Ator ator
    Diretor diretor

    static hasMany = [generos: Genero, videos:ArquivoVideo, legendas : ArquivoLegenda]

    static constraints = {
        descricao nullable: true
    }
}
