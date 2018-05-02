# Parser para listas de Python

Nesta tarefa, criaremos um pequeno parser de listas de Python. O programa
receberá uma linha contendo uma lista, em notação Python, e deverá ser capaz de
identificar se é uma lista válida ou se a sintaxe está incorreta. Caso seja uma
lista válida, o programa deverá imprimir `OK\n` na tela. Caso seja inválida,
deverá imprimir `ERRO\n`.

Uma lista, em Python, é definida como um sinal de abre-chave `[` seguida de
uma sequência de elementos separadas por vírgula e, por fim, um sinal de
fecha-chave `]`. Um elementos pode ser qualquer identificador válido de Python,
mas neste
exercício vamos nos restringir a inteiros, palavras e strings (veja os testes
para verificar a sintaxe deles). Também, um elemento de uma lista pode ser uma
lista. Listas vazias também são possíveis.

## Informações adicionais
O programa deverá ser escrito em Yacc/Bison e Lex/Flex.

## Exemplos

Entrada | Saida
------- | -----
`[]` | `OK\n`
`[50 50 50]` | `ERRO\n`
`[50, 50, 50` | `ERRO\n`
`[50, 50, 50]` | `OK\n`
`[50, 50, [50]]` | `OK\n`


## Instruções adicionais

1. Vá diretamente ao conjunto de testes para verificar como tratar casos
   limítrofes ou mal-definidos.
1. Lembre-se de seguir as [instruções de submissão](doc/instrucoes.md).
1. Se desejar, proponha novos casos de teste.
