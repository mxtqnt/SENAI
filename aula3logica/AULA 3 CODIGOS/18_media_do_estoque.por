programa
{
    funcao real calcular_media(inteiro soma_total, inteiro quantidade_produtos)
    {
        se (quantidade_produtos == 0)
        {
            escreva("Erro: não é possível dividir por zero.\n")
            retorne 0.0
        }

        retorne soma_total / quantidade_produtos
    }

    funcao inicio()
    {
        real media

        media = calcular_media(1000, 4)
        escreva("Média do estoque: ", media, "\n")

        media = calcular_media(1000, 0)
        escreva("Resultado com quantidade zero: ", media)
    }
}
