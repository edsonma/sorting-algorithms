# ChaimSort

Baseado em fatos reais, **ChaimSort** é um algoritmo eficiente de ordenação seguindo as premissas do **dividir para conquistar** que tem como complexidade algorítmica `O(n^4)` (Tirando o fator da sorte, o que é MUITO BOM!).

## Como Funciona?

1. Uma lista desordenada é recebida como parâmetro de entrada;

    * **Exemplo**: `[1, 2, 4, 5, 3, 9, 8, 7, 6, 10]`
1. Verifique se já está ordenada com um método de sua escolha;

    * **Exemplo**: `false`
1. Se estiver ordenada, sucesso! Caso contrário, continue seguindo os passos;
1. Escolha um número entre 2 e o tamanho da lista, ele será a quantidade de sub-listas.

    * **Exemplo**: `3`
1. Descruba a quantidade de elementos para cada sub-lista através da equação:

    ```elixir
    quantidade de elementos = (tamanho da lista / quantidade de sub-listas) + 1
    ```
    * **Exemplo**: `(10/3) + 1 = 4`
1. Fatie a lista em sub-listas de tamanho máximo da quantidade de elementos;

    * **Exemplo**: `[[1, 2, 4, 5], [3, 9, 8, 7], [6, 10]]`
1. Ordene as sub-listas (IMPORTANTE!);

    * **Exemplo**: `[[1, 2, 4, 5], [3, 7, 8, 9], [6, 10]]`
1. Junte as sub-listas em uma lista única;

    * **Exemplo**: `[1, 2, 4, 5, 3, 7, 8, 9, 6, 10]`
1. Reinicie no passo 1 com a lista atual.

## Tempo do Algoritmo

### Minimal

```elixir
real  0m0.592s
user  0m0.252s
sys   0m0.132s
```

### Maximal

```elixir
Passou de 10 Minutos
```

### Batch

```elixir
Nem testei
```
