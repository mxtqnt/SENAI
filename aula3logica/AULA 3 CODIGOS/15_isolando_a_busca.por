programa
{
    inteiro codigos[5] = {101, 102, 103, 104, 105}

    funcao inteiro buscar_indice(inteiro codigo_buscado)
    {
        para (inteiro i = 0; i < 5; i++)
        {
            se (codigos[i] == codigo_buscado)
            {
                retorne i
            }
        }

        retorne -1
    }

    funcao inicio()
    {
        inteiro codigo = 999
        inteiro indice = buscar_indice(codigo)

        se (indice == -1)
        {
            escreva("Produto não encontrado")
        }
        senao
        {
            escreva("Produto encontrado na posição ", indice)
        }
    }
}
