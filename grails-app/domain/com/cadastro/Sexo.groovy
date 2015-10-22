package com.cadastro

enum Sexo {

    MASCULINO('Masculino'),
    FEMININO('Feminino')

    String tipo

    public Sexo(String tipo) {
        this.tipo = tipo
    }

    @Override
    String toString() {
        return tipo
    }

    String getKey() {
        name()
    }

    def toList() {
        [MASCULINO, FEMININO]
    }
}
