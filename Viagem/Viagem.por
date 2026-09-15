programa
{
	funcao real custo()
	{
		real distancia, consumo_veiculo, preco
		logico valido = falso
		real resultado = 0.0

		enquanto (nao valido)
		{
			escreva("Distância (Km): ")
			leia(distancia)
			escreva("Consumo (Km/L): ")
			leia(consumo_veiculo)
			escreva("Preço por Litro (R$): ")
			leia(preco)

			se (consumo_veiculo > 0)
			{
				resultado = (distancia / consumo_veiculo) * preco
				valido = verdadeiro
			}
			senao
			{
				escreva("\nEntrada inválida! O consumo deve ser maior que zero. Tente novamente.\n\n")
			}
		}

		retorne resultado
	}

	funcao real consumo()
	{
		real km, litro
		logico valido = falso
		real resultado = 0.0

		enquanto (nao valido)
		{
			escreva("Quilometragem percorrida (Km): ")
			leia(km)
			escreva("Litros consumidos em ", km, " Km: ")
			leia(litro)

			se (litro > 0)
			{
				resultado = km / litro
				valido = verdadeiro
			}
			senao se (litro == 0)
			{
				escreva("\nOs litros não podem ser zero! Pressione ENTER e tente novamente...\n\n")
			}
			senao
			{
				escreva("\nEntrada inválida! Tente novamente.\n\n")
			}
		}

		retorne resultado
	}

	funcao inicio()
	{
		cadeia opcao
		cadeia pausa

		enquanto (verdadeiro)
		{
			limpa()
			escreva("---------- Planejamento de Viagem ----------\n\n")
			escreva("1 | Simular Gasto\n")
			escreva("2 | Calcular Consumo\n")
			escreva("0 | Sair\n")
			escreva("Escolha: ")
			leia(opcao)

			se (opcao == "1")
			{
				limpa()
				escreva("\nO seu Custo Total foi de: R$ ", custo(), "\n")
				escreva("\nPressione ENTER para voltar ao menu...")
				leia(pausa)
			}
			senao se (opcao == "2")
			{
				limpa()
				escreva("\nO seu Consumo foi de: ", consumo(), " Km/L\n")
				escreva("\nPressione ENTER para voltar ao menu...")
				leia(pausa)
			}
			senao se (opcao == "0")
			{
				limpa()
				pare
			}
			senao
			{
				escreva("\nCaractere inválido, pressione ENTER e tente novamente")
				leia(pausa)
			}
		}
	}
}