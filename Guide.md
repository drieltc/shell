# Sumário
- [Sumário](#sumário)
- [Introdução](#introdução)
  - [Criando um Arquivo](#criando-um-arquivo)
  - [Executando um Arquivo](#executando-um-arquivo)
    - [Permissões de Usuário](#permissões-de-usuário)
      - [Alterando a permissão](#alterando-a-permissão)
- [Variáveis e Argumentos](#variáveis-e-argumentos)
  - [Tipos de Dados](#tipos-de-dados)
  - [Variáveis do Sistema](#variáveis-do-sistema)
  - [Criando as Próprias Variáveis](#criando-as-próprias-variáveis)
- [Expressões Aritméticas](#expressões-aritméticas)
  - [Operadores Aritméticos](#operadores-aritméticos)
- [Estruturas de Controle](#estruturas-de-controle)
  - [Estruturas Condicionais](#estruturas-condicionais)
    - [If-Else](#if-else)
    - [Switch Case](#switch-case)
    - [Operadores Lógicos](#operadores-lógicos)
  - [Repetição](#repetição)
    - [For](#for)
    - [While](#while)
    - [Until](#until)
    - [Break e Continue](#break-e-continue)
- [Funções](#funções)
- [Comandos/Programas](#comandosprogramas)
  - [Navegação Pelo Sistema de Arquivos](#navegação-pelo-sistema-de-arquivos)
  - [Manipulação de Arquivos](#manipulação-de-arquivos)
    - [Leitura de Arquivos](#leitura-de-arquivos)
    - [Escrita em Arquivos](#escrita-em-arquivos)
  - [Redirecionamento](#redirecionamento)
  - [Aliases](#aliases)
- [Outros Materiais](#outros-materiais)

# Introdução
- Editor de Textos: **Nano**
- Linguagem do Guia: **Markdown**
- Shell: **BASH**

## Criando um Arquivo
1. Através do terminal digite
    ```
    nano arquivo.sh
    ```
2. Agora, na primeira linha de arquivo.sh, digite o **cabeçalho** abaixo. Isso fará com que o bash identifique qual linguagem de *script* está sendo utilizada em `arquivo.sh`
    ```
    #!/bin/bash
    ```
3. Agora digite todos os comando que você deseja que `arquivo.sh` rode e salve as alterações.

## Executando um Arquivo
1. Para rodar seu arquivo shell, digite o seguinte comando no diretório em que se encontra `arquivo.sh`

    ```
    bash arquivo.sh
    ```

### Permissões de Usuário
Outra maneira possível é utilizar
```
./arquivo.sh
```
Entretando, de início, isso não funcionará, uma vez que `arquivo.sh` não possui permissão para executar.

No exemplo abaixo foi utilizado o comando `ls -l` para mostrar quais permissões o arquivo `himom.sh` possui. Dê uma olhada:

![permissoes](images/permissoes.png)

O arquivo `himom.sh` possui permissão apenas para ler (*read*) e escrever (*write*). Isso é indicado pela string que aparece no começo da resposta `(-rw-...)`. Para que ele tenha permissão para executar, é necessário que haja um `x` no lugar do travessão após o `w`. 

#### Alterando a permissão
Digite o comando
```
chmod +x arquivo.sh
```
Agora `arquivo.sh` possui permissão de execução. Portanto, pode ser executado através de 
```
./arquivo.sh
```

# Variáveis e Argumentos
Tudo o que vem após o comando de execução de um programa é chamado de argumento. Veja a estrutura e o exemplo abaixo:

```
user@host:~$ ./arquivo.sh argumento
```

![argumentos](images/argumentos.png)

Nesse caso, `Adriel` é um argumento. Vejamos como isso funciona dentro desse código:

![bestDayEver.sh](images/argumentos2.png)

`name=$1` indica para o programa que a variável `name` receberá o valor que for passado no primeiro argumento.

Caso quisessemos definir uma variável dentro do código, poderia ser da seguinte maneira:

![variavel simples](images/variavel.png)

E quando precisasse referenciá-la, basta digitar `$name` no local apropriado.
 
## Tipos de Dados
- **Inteiros**: Valores numéricos sem casas decimais, como *10, -25 ou 1000*
  ```
  num=10
  echo "Inteiro: $num"
  //Inteiro: 10
  ```
- **Strings**: Sequências de caracteres, como *"Olá Mundo!", "arquivo.txt" ou "[endereço de e-mail removido]"*
  ```
  texto="Este é um texto de exemplo."
  echo "String: $texto"
  //String: Este é um texto de exemplo
  ```
- **Booleanos**: Representam verdadeiro ou falso, armazenados como *1* para *verdadeiro* e *0* para *falso*
  ```
  exemplo de booleano
  ```
- **Não existem números reais**
- **Arrays**: Coleções ordenadas de valores do *mesmo tipo*, acessados por índices numéricos.
  ```
  exemplo de array
  ```
- **Listas**: Similar a arrays, mas permitem armazenar valores de tipos diferentes e não possuem índices definidos.
  ```
  exemplo de lista
  ```
- **Hashes** (Dicionários): Coleções não ordenadas de pares chave-valor, onde cada chave é associada a um valor específico.
  ```
  exemplo de hash
  ```

## Variáveis do Sistema
- `$RANDOM`: Guarda um valor aleatório entre 0 e 32767
- `$SHELL`: Guarda o shell atual
- `$USER`: Guarda o usuário atual
- `$PWD`: Guarda o diretório atual
- `$HOSTNAME`: Guarda o computador atual
  
## Criando as Próprias Variáveis
No próprio terminal você pode definir variaveis. Veja o exemplo à seguir

![twitter](images/twitter.png)

Entretanto, definir a variável desa forma não permite que ela seja usada, por exemplo, em processos filhos (scripts). Para isso é necessário exportar a variável. Isso é possível da seguinte maneira:

```
export variavel
```

Entretanto, fazer isso diretamente pela linha de comando não permitirá que ela seja acessível para sempre; somente enquanto durar a presente conexão com o terminal. Para fazer com que uma variável sempre esteja acessíve, é necessário que ela seja **declarada** e **exportada** no arquivo `.bashrc`. Veja o exemplo abaixo

![myVar](images/myVar.png)

# Expressões Aritméticas
Para realizar uma expressão aritmética é necessário seguir a seguinte estrutura

```
$((a+b))
``` 

Ou seja, a expressão deve estar entre 2 pares de parêntesis e antes dos parêntesis deve a haver um cifrão. Pode haver espaço entre a expressão propriamente (no caso acima `a+b`) e os parênteses.

## Operadores Aritméticos
- Soma (`+`): Retorna a soma de dois valores
  ```
  soma=$((10 + 5))
  echo "Soma: $soma"
  //Soma: 15
  ```
- Subtração (`-`): Retorna a diferença emtre dois valores
  ```
  subtracao=$((10 - 5))
  echo "Subtração: $subtracao"
  //Subtração: 5
  ```
- Multiplicação (`*`): Retorna o produt entre dois valores
  ```
  multiplicacao=$((10 * 50))
  echo "Multiplicação: $multiplicacao"
  //Multiplicação: 50
  ```
- Divisão Inteira (`/`): Retorna a divisão inteira entre dois números
  ```
  divisao=$((11 / 5))
  echo "Divisão Inteira: $divisao"
  //Divisão Inteira: 2
  ```
- Módulo (`%`): Retorna o módulo da divisão entre dois números
  ```
  modulo=$((11 % 5))
  echo "Módulo: $modulo"
  //Módulo: 1
  ```
- Incremento (`+=`): Adiciona um valor à variável
  ```
  num1=10
  num1=$((num1 += 2))
  echo "num1 após incremento: $num1"
  //num1 após o incremento: 12
  ```
- Decremento (`-=`): Subtrai um valor da variável
  ```
  num2=5
  num2=$((num2 -= 1))
  echo "num2 após decremento: $num2"
  //num2 após o decremento: 3
  ```
- Incremento pré-fixo (`++`): Adiciona um valor à variável e retorna o novo valor.
- Decremento pré-fixo (`--`): Subtrai um valor da variável e retorna o novo valor.
- Exponenciação (`**`): Eleva um valor à potência de outro.
  ```
  potencia=$((13 ** 2))
  echo "Potência: $potencia"
  //Potência: 169
  ```
- Negação (`-`): Inverte o sinal do valor.
  ```
  num1=13
  negativo=$((-$num1))
  echo "Negação: $negativo"
  //Negação: -13
  ```

# Estruturas de Controle
## Estruturas Condicionais
### If-Else
A estrutura condicional do bash funciona da seguinte forma:

```
if [[ condição 1 ]]; then
    ação 1
elif [[ condicao 2 ]]
    ação 2
else
    ação 3
fi    
```
Veja também um exemplo:

![if](/images/ifExample.png)

Perceba que:
- A condição deve estar entre colchetes (`[]`)
  - Após a condição deve haver um ponto de vírgula (`;`) seguido de um `then`, **ou**
  - o `then` deve ser colocado na linha abaixo
- Deve haver um espaço (` `) entre os colchetes e a condição
- Deve finalizar com `fi` 


### Switch Case

O *switch case* segue a estrutura à seguir: 
```
case $variable in
    c1)
        ...
        ;;
    c2)
        ...
        ;;
    c3)
        ...
        ;;
esac
```

Veja um exemplo:

![case](/images/caseExample.png)

Perceba que:
- `case $variable in`: Indica que irá começar um *switch case*
- `c1, c2, c3`: condições
  - No exemplo, o que se quis dizer é: se class for 1, se class for 2, se class for 3...
- `)`: é a separação entre condição e ação da condição
- `;;`: indica o fim das ações da condição
- `esac`: finaliza o *switch case*  

### Operadores Lógicos

- `||`: **OR** lógico
- `&&`: **AND** lógico
- `-lt`:
- `-eq`:
- `-gt`:

## Repetição
### For
O `for` segue a estrutura a seguir:
```
for {range}; do
    acao
done
```

Veja o exemplo abaixo:

![for](images/for.png)

No caso acima a variável `cups` irá assumir os valores definidos no entre chaves (`{}`). Ou seja, vai variar de 1 (inclusive) a 10 (inclusive).

Outra maneira de se usar o laço `for` é definindo que a variável de controle assuma valores não-numéricos.
### While
### Until
### Break e Continue

# Funções

# Comandos/Programas
## Navegação Pelo Sistema de Arquivos
## Manipulação de Arquivos
### Leitura de Arquivos
### Escrita em Arquivos
## Redirecionamento
## Aliases

# Outros Materiais
- [Documentação do Bash](https://www.gnu.org/software/bash/manual/)