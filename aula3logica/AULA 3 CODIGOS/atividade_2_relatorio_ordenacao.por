programa
{
    inteiro codigos[10]
    cadeia nomes[10] // CORRIGIDO: Mudou de 'texto' para 'cadeia'
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

        escreva("\n===== CADASTRO =====\n")
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

        escreva("Produto cadastrado com sucesso na posição ",
                total_cadastrados, "!\n")

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

        escreva("Digite o código: ")
        leia(codigo)

        indice = buscar_indice(codigo)

        se (indice == -1)
        {
            escreva("Erro: Código ", codigo,
                    " não localizado no estoque.\n")
        }
        senao
        {
            escreva("PRODUTO ENCONTRADO (Índice ", indice, "): ",
                    nomes[indice], " | ",
                    quantidades[indice], " unidades | R$ ",
                    precos[indice], "\n")
        }
    }

    // Soma o valor de todos os produtos em estoque.
    funcao real calcular_valor_total_estoque()
    {
        real total_financeiro = 0.0

        para (inteiro i = 0; i < total_cadastrados; i++)
        {
            total_financeiro = total_financeiro +
                               (quantidades[i] * precos[i])
        }

        retorne total_financeiro
    }

    // Retorna o índice do produto com menor quantidade.
    funcao inteiro encontrar_menor_quantidade()
    {
        inteiro indice_menor

        se (total_cadastrados == 0)
        {
            retorne -1
        }

        indice_menor = 0

        para (inteiro i = 1; i < total_cadastrados; i++)
        {
            se (quantidades[i] < quantidades[indice_menor])
            {
                indice_menor = i
            }
        }

        retorne indice_menor
    }

    // Troca todos os dados para manter os vetores paralelos sincronizados.
    funcao trocar_produtos(inteiro pos1, inteiro pos2)
    {
        inteiro aux_codigo
        cadeia aux_nome // CORRIGIDO: Mudou de 'texto' para 'cadeia'
        inteiro aux_quantidade
        real aux_preco

        aux_codigo = codigos[pos1]
        codigos[pos1] = codigos[pos2]
        codigos[pos2] = aux_codigo

        aux_nome = nomes[pos1]
        nomes[pos1] = nomes[pos2]
        nomes[pos2] = aux_nome

        aux_quantidade = quantidades[pos1]
        quantidades[pos1] = quantidades[pos2]
        quantidades[pos2] = aux_quantidade

        aux_preco = precos[pos1]
        precos[pos1] = precos[pos2]
        precos[pos2] = aux_preco
    }

    // Bubble Sort crescente pela quantidade.
    funcao ordenar_por_quantidade()
    {
        para (inteiro i = 0; i < total_cadastrados - 1; i++)
        {
            para (inteiro j = 0; j < total_cadastrados - 1 - i; j++)
            {
                se (quantidades[j] > quantidades[j + 1])
                {
                    trocar_produtos(j, j + 1)
                }
            }
        }
    }

    funcao exibir_relatorio()
    {
        escreva("\n===== RELATÓRIO DE ESTOQUE =====\n")

        para (inteiro i = 0; i < total_cadastrados; i++)
        {
            escreva("Cód: ", codigos[i],
                    " | ", nomes[i],
                    " | Qtd: ", quantidades[i],
                    " | R$ ", precos[i], "\n")
        }
    }

    funcao mostrar_valor_total()
    {
        real total

        se (total_cadastrados == 0)
        {
            escreva("Erro: nenhum produto cadastrado.\n")
            retorne
        }

        total = calcular_valor_total_estoque()

        escreva("O valor total financeiro em estoque é: R$ ",
                total, "\n")
    }

    funcao mostrar_alerta()
    {
        inteiro indice

        se (total_cadastrados == 0)
        {
            escreva("Erro: nenhum produto cadastrado.\n")
            retorne
        }

        indice = encontrar_menor_quantidade()

        // CORRIGIDO: Ajustada a exibição das aspas simples para destacar o nome
        escreva("Atenção: O produto '", nomes[indice],
                "' possui a menor quantidade em estoque (",
                quantidades[indice], " unidades).\n")
    }

    funcao ordenar_e_mostrar()
    {
        se (total_cadastrados == 0)
        {
            escreva("Erro: nenhum produto cadastrado.\n")
            retorne
        }

        ordenar_por_quantidade()

        escreva("Estoque ordenado por quantidade:\n")
        exibir_relatorio()
    }

    funcao inteiro exibir_menu()
    {
        inteiro opcao

        escreva("\n========== SISTEMA DE ESTOQUE ==========\n")
        escreva("1 - Cadastrar produto\n")
        escreva("2 - Consultar produto\n")
        escreva("3 - Valor total do estoque\n")
        escreva("4 - Alerta de estoque\n")
        escreva("5 - Ordenar e exibir relatório\n")
        escreva("6 - Sair\n")
        escreva("Escolha uma opção: ")
        leia(opcao)

        retorne opcao
    }

    funcao inicio()
    {
        inteiro opcao = 0

        enquanto (opcao != 6)
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
                mostrar_valor_total()
            }
            senao se (opcao == 4)
            {
                mostrar_alerta()
            }
            senao se (opcao == 5)
            {
                ordenar_e_mostrar()
            }
            senao se (opcao == 6)
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
