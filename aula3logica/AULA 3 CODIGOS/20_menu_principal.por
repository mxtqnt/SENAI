programa
{
    funcao inteiro exibir_menu()
    {
        inteiro opcao

        escreva("\n===== MENU PRINCIPAL =====\n")
        escreva("1 - Cadastrar\n")
        escreva("2 - Buscar\n")
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
                escreva("Opção Cadastrar selecionada.\n")
            }
            senao se (opcao == 2)
            {
                escreva("Opção Buscar selecionada.\n")
            }
            senao se (opcao == 3)
            {
                escreva("Programa encerrado.\n")
            }
            senao
            {
                escreva("Opção inválida.\n")
            }
        }
    }
}
