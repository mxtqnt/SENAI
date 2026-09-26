programa
{
    funcao inicio()
    {
        cadeia vetor[2] = {"Monitor", "Cabo"}
        cadeia auxiliar

        escreva("Antes: ", vetor[0], ", ", vetor[1], "\n")

        // Guarda o primeiro valor antes de fazer a troca.
        auxiliar = vetor[0]
        vetor[0] = vetor[1]
        vetor[1] = auxiliar

        escreva("Depois: ", vetor[0], ", ", vetor[1])
    }
}
