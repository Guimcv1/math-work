programa
{
	const real TAXA_BASE = 5.00
	const real PRECO_POR_KM = 2.50
	const real MULTIPLICADOR_PICO = 1.40

	funcao inicio()
	{
		cadeia opcao
		cadeia pausa
		real distancia, subtotal, valor_final
		caracter pico
		logico dados_validos

		enquanto (verdadeiro)
		{
			limpa()
			escreva("---------- App de Corridas ----------\n\n")
			escreva("1 | Calcular Valor da Corrida\n")
			escreva("0 | Sair\n\n")
			escreva("Escolha: ")
			leia(opcao)

			se (opcao == "1")
			{
				dados_validos = falso

				enquanto (nao dados_validos)
				{
					limpa()
					escreva("---------- Simular Corrida ----------\n\n")
					escreva("Distância percorrida (Km): ")
					leia(distancia)

					se (distancia <= 0)
					{
						escreva("\nA distância deve ser maior que zero!\n")
						escreva("Pressione ENTER para tentar novamente...")
						leia(pausa)
					}
					senao
					{
						escreva("\nA corrida é em horário de pico?\n")
						escreva("Digite 'S' para Sim ou 'N' para Não: ")
						leia(pico)

						se (pico != 'S' e pico != 's' e pico != 'N' e pico != 'n')
						{
							escreva("\nOpção inválida para o horário de pico! Pressione ENTER...\n")
							leia(pausa)
						}
						senao
						{
							subtotal = TAXA_BASE + (distancia * PRECO_POR_KM)

							se (pico == 'S' ou pico == 's')
							{
								valor_final = subtotal * MULTIPLICADOR_PICO
								pico = 'S'
							}
							senao
							{
								valor_final = subtotal
								pico = 'N'
							}

							dados_validos = verdadeiro
						}
					}
				}

				limpa()
				escreva("---------- Resumo da Corrida ----------\n\n")
				escreva("Taxa base fixada: R$ 5.00\n")
				
				se (pico == 'S')
				{
					escreva("Horário de pico: SIM (+40% de tarifa dinâmica)\n")
				}
				senao
				{
					escreva("Horário de pico: NÃO (Tarifa normal)\n")
				}

				escreva("\nValor Total da Corrida: R$ ", valor_final, "\n")
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