programa
{
    funcao inicio()
    {
        inteiro quantidades[5] = {50, 3, 12, 1, 85}
        inteiro menor = quantidades[0]

        para (inteiro i = 1; i < 5; i++)
        {
            se (quantidades[i] < menor)
            {
                menor = quantidades[i]
            }
        }

        escreva("A menor quantidade em estoque é: ", menor)
    }
}
