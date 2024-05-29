# Shell Scripting: Um Guia Completo

## Sumário

1. [Introdução ao Shell Scripting](#introdução-ao-shell-scripting)
2. [Ambiente de Desenvolvimento](#ambiente-de-desenvolvimento)
3. [Comandos Básicos](#comandos-básicos)
4. [Estruturas de Controle](#estruturas-de-controle)
5. [Funções](#funções)
6. [Manipulação de Arquivos](#manipulação-de-arquivos)
7. [Depuração e Tratamento de Erros](#depuração-e-tratamento-de-erros)
8. [Automatização de Tarefas](#automatização-de-tarefas)
9. [Melhores Práticas](#melhores-práticas)
10. [Recursos Adicionais](#recursos-adicionais)

## Introdução ao Shell Scripting

### O que é Shell Scripting?

Shell scripting é uma forma de programar utilizando o interpretador de comandos do sistema operacional Unix/Linux. Ele permite automatizar tarefas repetitivas, gerenciar arquivos e sistemas, além de realizar operações complexas de maneira eficiente.

### Por que aprender Shell Scripting?

- **Automatização**: Automatize tarefas rotineiras e economize tempo.
- **Flexibilidade**: Scripts podem ser usados em diferentes sistemas Unix/Linux.
- **Controle**: Gerencie e configure sistemas de maneira eficaz.
- **Produtividade**: Aumente a produtividade com scripts reutilizáveis.

## Ambiente de Desenvolvimento

### Escolhendo um Editor de Texto

- **Vim**: Um editor poderoso e amplamente utilizado em sistemas Unix/Linux.
- **Nano**: Um editor simples e fácil de usar.
- **VS Code**: Um editor moderno com suporte para extensões e sintaxe destacada.

### Configurando o Ambiente

Certifique-se de que seu script tenha permissão de execução:
```bash
chmod +x seu_script.sh
```

## Comandos Básicos

### Navegação pelo Sistema de Arquivos

- `ls`: Lista arquivos e diretórios.
- `cd`: Muda o diretório atual.
- `pwd`: Exibe o caminho do diretório atual.

### Manipulação de Arquivos

- `cp`: Copia arquivos ou diretórios.
- `mv`: Move ou renomeia arquivos ou diretórios.
- `rm`: Remove arquivos ou diretórios.

### Exemplo de Script Básico

```bash
#!/bin/bash
echo "Olá, Mundo!"
```

## Estruturas de Controle

### Condicionais

#### If-Else

```bash
#!/bin/bash
if [ $1 -gt 10 ]; then
  echo "O número é maior que 10."
else
  echo "O número é 10 ou menor."
fi
```

### Laços de Repetição

#### For

```bash
#!/bin/bash
for i in {1..5}; do
  echo "Número: $i"
done
```

#### While

```bash
#!/bin/bash
contador=1
while [ $contador -le 5 ]; do
  echo "Contador: $contador"
  ((contador++))
done
```

## Funções

### Definindo e Chamando Funções

```bash
#!/bin/bash
minha_funcao() {
  echo "Função chamada!"
}

minha_funcao
```

## Manipulação de Arquivos

### Leitura de Arquivos

```bash
#!/bin/bash
while IFS= read -r linha; do
  echo "$linha"
done < arquivo.txt
```

### Escrita em Arquivos

```bash
#!/bin/bash
echo "Texto a ser escrito" > arquivo.txt
```

## Depuração e Tratamento de Erros

### Depuração

Utilize `set -x` para habilitar o modo de depuração:
```bash
#!/bin/bash
set -x
echo "Este é um script de exemplo."
set +x
```

### Tratamento de Erros

Utilize `trap` para capturar sinais e erros:
```bash
#!/bin/bash
trap 'echo "Erro ocorreu!"' ERR
comando_que_pode_falhar
```

## Automatização de Tarefas

### Agendando Tarefas com Cron

Edite o crontab:
```bash
crontab -e
```

Adicione uma tarefa:
```plaintext
0 5 * * * /caminho/para/seu_script.sh
```

## Melhores Práticas

- **Comentários**: Comente seu código para torná-lo mais legível.
- **Nomeação**: Use nomes descritivos para variáveis e funções.
- **Modularidade**: Divida seu script em funções reutilizáveis.
- **Verificação de Erros**: Sempre verifique erros em comandos críticos.

## Recursos Adicionais

- [Documentação do Bash](https://www.gnu.org/software/bash/manual/)
- [Advanced Bash-Scripting Guide](https://tldp.org/LDP/abs/html/)
- [ShellCheck](https://www.shellcheck.net/): Ferramenta de análise estática para scripts shell.

---

Espero que este e-book seja útil para você começar sua jornada no Shell Scripting!