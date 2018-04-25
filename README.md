# 1º LAPPIS Bizarre Contest

**Tema**: O Algoritmo Mais Bizarro de Ordenação

**Período**: 18/04/2018 18:00 ~ 25/04/2018 18:00

## Regras

1. Deve ser único: Não pode ser da internet, nem de outro(s) participante(s);
1. Deve ordenar;
1. Deve ser bizarro.

## Como Enviar sua Proposta

1. Faça um _fork_ do projeto e crie seu diretório `algorithms/<nome_do_algoritmo>`;
1. Crie no seu diretório o seu algoritmo utilizando sua linguagem de preferência;
1. Crie no seu diretório o docker-compose de teste seguindo o exemplo abaixo:

    ```yml
    version: '3.5'

    services:
      test:
        image: elixir
        entrypoint: code/exec.sh
        command: data/validate.sh
        volumes:
          - ./../../data/minimal:/algorithm/data
          - .:/algorithm/code
        working_dir: /algorithm
    ```
    * Modifique a imagem com a imagem necessária para executar seu código;
    * Modifique o _host_ volume `minimal` para seu cenário de validação de preferência (Opções: `minimal`, `maximal`, `batch`).
1. Crie no seu diretório o _shell script_ `exec.sh` seguindo o exemplo abaixo:

    ```bash
    #!/usr/bin/env bash

    cmd="$@"

    time elixir code/sort.ex < data/input > data/output

    exec $cmd
    ```
    * Lembre-se de manter a consistência de entrada e saída conforme o exemplo.
1. Dê permissão de execução para o _shell script_ com o comando `# chmod +x`;
1. Crie um arquivo README.md explicando seu algoritmo;
1. Faça um PR para a _master_.
