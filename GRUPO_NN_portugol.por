programa
{
    funcao inicio()
    {
        // Declaracao de variaveis
        // Saldo inicial fixo (mesmo valor usado no codigo em C)
        inteiro saldo = 2000, valorSaque = 0
        inteiro n100 = 0, n50 = 0, n20 = 0, n10 = 0, n5 = 0, n2 = 0, n1 = 0
        inteiro resto = 0

        escreva("=== CAIXA ELETRONICO ===\n")
        escreva("Saldo disponivel: R$ ", saldo, "\n")
        escreva("Digite o valor do saque: ")
        leia(valorSaque)

        // Validacao: valor positivo e menor ou igual ao saldo
        se (valorSaque <= 0) {
            escreva("Erro: Valor de saque invalido!\n")
        } senao se (valorSaque > saldo) {
            escreva("Erro: Saldo insuficiente!\n")
        } senao {
            // Calculo das cedulas
            // "/" = divisao inteira (quantas notas cabem)
            // "%" = resto da divisao (o que ainda falta distribuir)
            resto = valorSaque

            n100 = resto / 100
            resto = resto % 100

            n50 = resto / 50
            resto = resto % 50

            n20 = resto / 20
            resto = resto % 20

            n10 = resto / 10
            resto = resto % 10

            n5 = resto / 5
            resto = resto % 5

            n2 = resto / 2
            resto = resto % 2

            n1 = resto / 1

            // Exibe apenas as notas com quantidade maior que zero
            escreva("Notas entregues:\n")
            se (n100 > 0) { escreva("- ", n100, " nota(s) de R$ 100\n") }
            se (n50 > 0)  { escreva("- ", n50, " nota(s) de R$ 50\n") }
            se (n20 > 0)  { escreva("- ", n20, " nota(s) de R$ 20\n") }
            se (n10 > 0)  { escreva("- ", n10, " nota(s) de R$ 10\n") }
            se (n5 > 0)   { escreva("- ", n5, " nota(s) de R$ 5\n") }
            se (n2 > 0)   { escreva("- ", n2, " nota(s) de R$ 2\n") }
            se (n1 > 0)   { escreva("- ", n1, " nota(s) de R$ 1\n") }
        }
    }
}
