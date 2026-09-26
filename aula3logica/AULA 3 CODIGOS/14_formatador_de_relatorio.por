programa
{
    funcao cadeia linha_relatorio(inteiro codigo, cadeia nome, inteiro quantidade) {
        retorne "Cód: " + codigo + " | Produto: " + nome + " | Qtd: " + quantidade
    }

    funcao inicio()
    {
        cadeia linha = linha_relatorio(101, "Teclado", 15)
        escreva(linha)
    }
}
