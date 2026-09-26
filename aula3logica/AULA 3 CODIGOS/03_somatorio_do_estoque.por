programa
{
    funcao inicio()
    {
        inteiro quantidades[5] = {20, 30, 15, 40, 40}
        inteiro total = 0

        para (inteiro i = 0; i < 5; i++)
        {
            total = total + quantidades[i]
        }

        escreva("O total de itens no estoque é: ", total)
    }
}
