programa
{
    funcao real calcular_valor_total(inteiro quantidade, real preco)
    {
        retorne quantidade * preco
    }

    funcao inicio()
    {
        inteiro quantidade = 5
        real preco = 50.0
        real total = calcular_valor_total(quantidade, preco)

        escreva("O valor total de ", quantidade, " mouses a R$ ", preco,
                " é: R$ ", total)
    }
}
