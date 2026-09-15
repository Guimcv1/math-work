import os

limpar = lambda: os.system("cls") if os.name == "nt" else os.system("clear")


def calcular_corrida():
    limpar()
    print(10 * "-", " Simular Corrida ", 10 * "-", "\n")

    TAXA_BASE = 5.00
    PRECO_POR_KM = 2.50
    MULTIPLICADOR_PICO = 1.40

    while True:
        try:
            distancia = float(input("Distância percorrida (Km): "))
            if distancia <= 0:
                print("A distância deve ser maior que zero!")
                continue

            print("\nA corrida é em horário de pico?")
            pico = (
                input("Digite 'S' para Sim ou 'N' para Não: ").strip().upper()
            )

            if pico not in ["S", "N"]:
                input(
                    "\nOpção inválida para o horário de pico! Pressione ENTER..."
                )
                limpar()
                continue

            subtotal = TAXA_BASE + (distancia * PRECO_POR_KM)

            if pico == "S":
                valor_final = subtotal * MULTIPLICADOR_PICO
            else:
                valor_final = subtotal

            return valor_final, subtotal, pico

        except ValueError:
            input("\nEntrada inválida! Digite apenas números. Pressione ENTER...")
            limpar()


def app():
    while True:
        limpar()
        print(10 * "-", " App de Corridas ", 10 * "-", "\n")
        i = input("1 | Calcular Valor da Corrida\n0 | Sair\n\nEscolha: ")

        match i:
            case "1":
                valor_final, subtotal, pico = calcular_corrida()

                limpar()
                print(10 * "-", " Resumo da Corrida ", 10 * "-", "\n")
                print("Taxa base fixada: R$ 5.00")
                if pico == "S":
                    print("Horário de pico: SIM (+40% de tarifa dinâmica)")
                else:
                    print("Horário de pico: NÃO (Tarifa normal)")

                print(f"\nValor Total da Corrida: R$ {valor_final:.2f}")

                input("\nPressione ENTER para voltar ao menu...")

            case "0":
                limpar()
                break

            case _:
                input("\nCaractere inválido, pressione ENTER e tente novamente")


app()