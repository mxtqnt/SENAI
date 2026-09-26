programa
{
    funcao inicio()
    {
        cadeia nomes[3] = {"Mouse", "Teclado", "Monitor"}
        real precos[3] = {50.0, 120.0, 800.0}

        para (inteiro i = 0; i < 3; i++)
        {
            escreva("[", i, "] ", nomes[i], " - R$ ", precos[i], "\n")
        }
    }
}