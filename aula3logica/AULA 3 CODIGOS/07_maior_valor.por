programa
{
    funcao inicio()
    {
        inteiro quantidades[5] = {50, 3, 12, 1, 85}
        inteiro maior = quantidades[0]

        para (inteiro i = 1; i < 5; i++)
        {
            se (quantidades[i] > maior)
            {
                maior = quantidades[i]
            }
        }

        escreva("A maior quantidade em estoque é: ", maior)
    }
}
