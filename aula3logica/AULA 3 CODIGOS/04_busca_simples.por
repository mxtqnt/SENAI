programa
{
    funcao inicio()
    {
        inteiro codigos[5] = {101, 102, 103, 104, 105}
        inteiro codigo_digitado

        escreva("Digite o código do produto: ")
        leia(codigo_digitado)

        para (inteiro i = 0; i < 5; i++)
        {
            se (codigos[i] == codigo_digitado)
            {
                escreva("Produto encontrado!")
            }
        }
    }
}
