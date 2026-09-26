programa
{
    funcao logico verificar_disponibilidade(inteiro quantidade)
    {
        se (quantidade > 0)
        {
            retorne verdadeiro
        }

        retorne falso
    }

    funcao inicio()
    {
        inteiro quantidade_zerada = 0
        inteiro quantidade_positiva = 10

        escreva("Tem no estoque? ", verificar_disponibilidade(quantidade_zerada), "\n")
        escreva("Tem no estoque? ", verificar_disponibilidade(quantidade_positiva))
    }
}
