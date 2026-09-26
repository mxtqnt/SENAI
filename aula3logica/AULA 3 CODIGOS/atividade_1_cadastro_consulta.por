programa
{
    inteiro codigos[10]
    cadeia nomes[10] // CORRIGIDO: Modificado de 'texto' para 'cadeia'
    inteiro quantidades[10]
    real precos[10]
    inteiro total_cadastrados = 0

    // Procura um código e retorna sua posição.
    funcao inteiro buscar_indice(inteiro codigo_buscado)
    {
        para (inteiro i = 0; i < total_cadastrados; i++)
        {
            se (codigos[i] == codigo_buscado)
            {
                retorne i
            }
        }

        retorne -1
    }

    funcao cadastrar_produto()
    {
        inteiro codigo
        inteiro indice_existente

        se (total_cadastrados >= 10)
        {
            escreva("Erro: estoque cheio.\n")
            retorne
        }

        escreva("\n===== CADASTRO DE PRODUTO =====\n")
        escreva("Digite o código: ")
        leia(codigo)

        indice_existente = buscar_indice(codigo)

        se (indice_existente != -1)
        {
            escreva("Erro: o código ", codigo, " já está cadastrado.\n")
            retorne
        }

        codigos[total_cadastrados] = codigo

        escreva("Digite o nome: ")
        leia(nomes[total_cadastrados])

        escreva("Digite a quantidade: ")
        leia(quantidades[total_cadastrados])

        escreva("Digite o preço: R$ ")
        leia(precos[total_cadastrados])

        // CORRIGIDO: Junta os textos em uma única linha no escreva
        escreva("Produto cadastrado com sucesso na posição ", total_cadastrados, "!\n")

        total_cadastrados = total_cadastrados + 1
    }

    funcao consultar_produto()
    {
        inteiro codigo
        inteiro indice

        se (total_cadastrados == 0)
        {
            escreva("Erro: nenhum produto cadastrado.\n")
            retorne
        }

        escreva("\n===== CONSULTA =====\n")
        escreva("Digite o código: ")
        leia(codigo)

        indice = buscar_indice(codigo)

        se (indice == -1)
        {
            escreva("Erro: Código ", codigo, " não localizado no estoque.\n")
        }
        senao
        {
            // CORRIGIDO: Junta os dados em uma única linha no escreva
            escreva("PRODUTO ENCONTRADO (Índice ", indice, "): ", nomes[indice], " | ", quantidades[indice], " unidades | R$ ", precos[indice], "\n")
        }
    }

    funcao inteiro exibir_menu()
    {
        inteiro opcao

        escreva("\n========== ESTOQUE ==========\n")
        escreva("1 - Cadastrar produto\n")
        escreva("2 - Consultar produto\n")
        escreva("3 - Sair\n")
        escreva("Escolha uma opção: ")
        leia(opcao)

        retorne opcao
    }

    funcao inicio()
    {
        inteiro opcao = 0

        enquanto (opcao != 3)
        {
            opcao = exibir_menu()

            se (opcao == 1)
            {
                cadastrar_produto()
            }
            senao se (opcao == 2)
            {
                consultar_produto()
            }
            senao se (opcao == 3)
            {
                escreva("Sistema encerrado.\n")
            }
            senao
            {
                escreva("Erro: opção inválida.\n")
            }
        }
    }
}
