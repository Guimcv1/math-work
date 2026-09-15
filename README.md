# 🚗 Tema 4: Mobilidade, Transporte e Viagens
> **Projeto de Lógica de Programação e Algoritmos — 3º Bimestre (2026)**
> **Área de Conhecimento:** Matemática e suas Tecnologias  
> **Instituição:** Escola SESI  

## 📌 Sobre o Projeto
Este projeto demonstra a aplicação prática de conceitos de lógica de programação, estruturas condicionais, laços de repetição e manipulação de variáveis no contexto de transporte, cálculo de viagens e custos de mobilidade urbana.  

O trabalho contempla a construção de duas ferramentas interativas:

1. **Situação A — Planejador Financeiro de Viagem de Carro:** Recebe a distância em $km$, o consumo médio do veículo em $km/L$ e o preço do combustível para calcular o gasto financeiro total e a estimativa de consumo.
2. **Situação B — Simulador de Valor de Corrida por Aplicativo:** Calcula a tarifa cobrada por um app de mobilidade considerando taxa base, valor por quilômetro percorrido e acréscimo de tarifa dinâmica (horário de pico).

## 🛠️ Tecnologias e Linguagens Utilizadas

- **Pseudocódigo:** Modelagem da lógica genérica e algoritmos fundamentais.
- **Portugol (Portugol Studio):** Algoritmos estruturados em língua portuguesa.
- **Python 3.x:** Códigos finais interativos com validação de erros e menus em terminal (`Viagem.py` e `Uber.py`).
- **PowerPoint (.pptx):** Apresentação visual para o vídeo explicativo.
- **Microsoft Word / PDF:** Relatório técnico com testes de mesa e roteiro gravado.

## 📐 Estruturas e Fórmulas Utilizadas

### 🔹 Situação A: Planejamento Financeiro de Viagem (`Viagem.py`)

#### **Fórmulas:**
$$\text{Consumo (Km/L)} = \frac{\text{Quilometragem (Km)}}{\text{Litros Consumidos}}$$

$$\text{Custo Total (R\$)} = \left(\frac{\text{Distância (Km)}}{\text{Consumo do Veículo (Km/L)}}\right) \times \text{Preço por Litro (R\$)}$$

### 🔹 Situação B: Simulador de Corrida por Aplicativo (`Uber.py`)

#### **Fórmulas:**
$$\text{Subtotal} = \text{Taxa Base (R\$ 5.00)} + (\text{Distância em Km} \times \text{Preço por Km (R\$ 2.50)})$$

$$\text{Valor Final} = \begin{cases} \text{Subtotal} \times 1.40 & \text{se Horário de Pico = "Sim"} (+40\%) \\ \text{Subtotal} & \text{caso contrário} \end{cases}$$

## 🧪 Teste de Mesa

### **Situação A (Custo de Viagem)**
**Caso****Distância (km)****Consumo (km/L)****Preço/L (R$)****Cálculo****Saída (R$ Total)**Teste 1100.010.05.50$(100 / 10) \times 5.50$**R$ 55.00**Teste 2250.012.56.00$(250 / 12.5) \times 6.00$**R$ 120.00**
### **Situação B (Corrida por App)**
**Caso****Distância (km)****Horário de Pico****Subtotal (5.00+(km×2.50))****Multiplicador****Saída (R$ Final)**Teste 110.0Não (N)$5.00 + (10 \times 2.50) = 30.00$$1.00$**R$ 30.00**Teste 210.0Sim (S)$5.00 + (10 \times 2.50) = 30.00$$1.40$**R$ 42.00**
## 📁 Estrutura de Arquivos
Plaintext

```
├── README.md                              # Documentação e instrução do projeto
├── doc/
│   ├── Relatorio_Tema4.docx               # Relatório escrito detalhado
│   ├── Relatorio_Tema4.pdf                # Versão final em PDF
│   └── Apresentacao_Tema4.pptx            # Apresentação de slides
├── src/
│   ├── Viagem.py                          # Script Python da Situação A
│   └── Uber.py                            # Script Python da Situação B
└── assets/
    ├── fluxograma_viagem.png              # Fluxograma da Situação A
    └── fluxograma_uber.png                # Fluxograma da Situação B
```