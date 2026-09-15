import os

limpar = lambda: os.system("cls") if os.name == "nt" else os.system("clear")


def app():
    while True:
        limpar()
        print(10 * "-", " Planejamento de Viagem ", 10 * "-", "\n")
        i = input("1 | Simular Gasto\n2 | Calcular Consumo\n0 | Sair\n")
        match i:
            case "1":
                print(f"\nO seu Custo Total foi de: R$ {custo():.2f}")
                input("\nPressione ENTER para voltar ao menu...")
            case "2":
                print(f"\nO seu Consumo foi de: {consumo():.2f} Km/L")
                input("\nPressione ENTER para voltar ao menu...")
            case "0":
                limpar()
                break
            case _:
                input("\nCaractere inválido, pressione ENTER e tente novamente")


def custo():
    limpar()
    while True:
        try:
            distancia = float(input("Distância (Km): "))
            consumo_veiculo = float(input("Consumo (Km/L): "))
            preco = float(input("Preço por Litro (R$): "))

            return (distancia / consumo_veiculo) * preco
        except ValueError:
            input("\nEntrada inválida! Digite apenas números. Pressione ENTER...")
            limpar()


def consumo():
    limpar()
    while True:
        try:
            km = float(input("Quilometragem percorrida (Km): "))
            litro = float(input(f"Litros consumidos em {km} Km: "))

            return km / litro
        except ValueError:
            input("\nEntrada inválida! Digite apenas números. Pressione ENTER...")
            limpar()
        except ZeroDivisionError:
            input(
                "\nOs litros não podem ser zero! Pressione ENTER e tente novamente..."
            )
            limpar()

if __name__ == "__main__":
    app()