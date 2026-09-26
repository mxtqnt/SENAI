programa
{
    funcao real obter_menor_preco(real precoA, real precoB)
    {
        se (precoA < precoB)
        {
            retorne precoA
        }

        retorne precoB
    }

    funcao inicio()
    {
        real menor = obter_menor_preco(120.0, 50.0)
        escreva("O menor preço é: R$ ", menor)
    }
}
