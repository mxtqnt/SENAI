programa
{
    funcao inicio()
    {
        inteiro quantidades[5] = {50, 3, 12, 1, 85}

        para (inteiro i = 0; i < 5; i++)
        {
            se (quantidades[i] < 5)
            {
                escreva("Alerta: Produto no índice ", i,
                        " está com estoque baixo (", quantidades[i], ")\n")
            }
        }
    }
}
