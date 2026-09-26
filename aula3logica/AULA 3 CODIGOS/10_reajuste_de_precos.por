programa
{
    // 1. Inclui a biblioteca matemática com o apelido 'mat'
    inclua biblioteca Matematica --> mat

    funcao inicio()
    {
        cadeia nomes[3] = {"Mouse", "Teclado", "Monitor"}
        real precos[3] = {50.0, 120.0, 800.0}

        // Aplica aumento de 10% em cada preço.
        para (inteiro i = 0; i < 3; i++)
        {
            precos[i] = precos[i] * 1.10
            
            // 2. Arredonda o valor para 2 casas decimais
            precos[i] = mat.arredondar(precos[i], 2)
        }

        escreva("Preços atualizados:\n")
        para (inteiro i = 0; i < 3; i++)
        {
            escreva(nomes[i], " - R$ ", precos[i], "\n")
        }
    }
}
