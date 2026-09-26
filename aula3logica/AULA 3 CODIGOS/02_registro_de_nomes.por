programa
{
	funcao inicio()
	{
		cadeia produtos[3]

		// Lê os nomes dos produtos.
		para (inteiro i = 0; i < 3; i++)
		{
			escreva("Digite o nome do produto ", i + 1, ": ")
			leia(produtos[i])
		}

		// Exibe os nomes na ordem inversa.
		escreva("\nNomes na ordem inversa:\n")
		para (inteiro i = 2; i >= 0; i--)
		{
			escreva(produtos[i], "\n")
		}
	}
}
