programa
{
	inteiro codigos[] = {101, 102, 103}
	cadeia nomes[] = {"Mouse", "Teclado", "Monitor"} // Corrigido para 'cadeia'
	inteiro quantidades[] = {10, 5, 5}
	real precos[] = {50.0, 120.0, 800.0}

	funcao inteiro buscar_indice(inteiro codigo_buscado)
	{
		para (inteiro i = 0; i < 3; i++)
		{
			se (codigos[i] == codigo_buscado)
			{
				retorne i
			}
		}
		retorne -1
	}

	funcao real calcular_valor_total(inteiro quantidade, real preco)
	{
		retorne quantidade * preco
	}

	funcao inicio()
	{
		inteiro codigo
		inteiro indice
		real total

		escreva("Digite o código do produto: ")
		leia(codigo)

		indice = buscar_indice(codigo)

		se (indice != -1)
		{
			total = calcular_valor_total(quantidades[indice], precos[indice])
			escreva("Produto achado: ", nomes[indice], ". Valor total em estoque: R$ ", total)
		}
		senao
		{
			escreva("Produto não encontrado")
		}
	}
}
