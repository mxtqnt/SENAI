programa
{
    funcao inicio()
    {
        inteiro codigos[5] = {101, 102, 103, 104, 105}
        inteiro codigo_digitado
        inteiro posicao_encontrada = -1

        escreva("Digite o código do produto: ")
        leia(codigo_digitado)

        para (inteiro i = 0; i < 5; i++)
        {
            se (codigos[i] == codigo_digitado)
            {
                posicao_encontrada = i
            }
        }

        se (posicao_encontrada != -1)
        {
            escreva("Produto encontrado na posição ", posicao_encontrada)
        }
        senao
        {
            escreva("Erro: Produto não cadastrado")
        }
    }
}
