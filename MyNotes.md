# Criar um arquivo shell (.sh)

Através do terminal digite
```
nano arquivo.sh
```
Agora, na primeira linha de arquivo.sh, digite o **cabeçalho** abaixo. Isso fará com que o bash identifique qual linguagem de *script* está sendo utilizada em `arquivo.sh`
```
#!/bin/bash
```
Agora digite todos os comando que você deseja que `arquivo.sh` rode e salve as alterações.

---
# Rodar um arquivo shell
Para rodar seu arquivo shell, digite o seguinte comando no diretório em que se encontra `arquivo.sh`

```
bash arquivo.sh
```
## Permissões de Usuário
Outra maneira possível é utilizar
```
./arquivo.sh
```
Entretando, de início, isso não funcionará, uma vez que `arquivo.sh` não possui permissão para executar.

Olhe o exemplo abaixo:

![permissoes](images/permissoes.png)

O arquivo `himom.sh` possui permissão apenas para ler (*read*) e escrever (*write*). Isso é indicado pela string que aparece no começo da resposta `(-rw-...)`. Para que ele tenha permissão para executar, é necessário que haja um `x` no lugar do travessão após o `w`. 

### Alterando a permissão
Digite o comando
```
chmod +x arquivo.sh
```
Agora arquivo.sh ppossui permissão de execução. Abaixo segue um exemplo de como executar o arquivo
```
./arquivo.sh
```
---

# Variáveis e Argumentos
Tudo o que vem após o comando de execução de um programa é chamado de argumento. Veja a estrutura e o exemplo abaixo:

```
user@host:~$ ./arquivo.sh argumento
```

![argumentos](images/argumentos.png)

Nesse caso, `Adriel` é um argumento. Vejamos como isso funciona dentro desse código:

![bestDayEver.sh](images/argumentos2.png)

`name=$1` indica para o programa que a variável `name` receberá o valor que for passado no primeiro argumento

Caso quisessemos definir uma variável dentro do código, poderia ser da seguinte maneira:

![variavel simples](images/variavel.png)

E quando precisasse referenciá-la, basta digitar `$name`
 

 ## Variáveis do Sistema
 - `$RANDOM`: Guarda um valor aleatório entre 0 e 32767
- `$SHELL`: Guarda o shell atual
- `$USER`: Guarda o usuário atual
- `$PWD`: Guarda o diretório atual
- `$HOSTNAME`: Guarda o computador atual

### Criando as próprias variáveis
No próprio terminal você pode definir variaveis. Veja o exemplo à seguir
![twitter](images/twitter.png)

Entretanto, definir a variável desa forma não permite que ela seja usada, por exemplo, em processos filhos (scripts). Para isso é necessário exportar a variável. Isso é possível da seguinte maneira:

```
export variavel
```

Entretanto, fazer isso diretamente pela linha de comando não permitirá que ela seja acessível para sempre; somente enquanto durar a presente conexão com o terminal. Para fazer com que uma variável sempre esteja acessíve, é necessário que ela seja **declarada** e **exportada** no arquivo `.bashrc`.

## Expressões aritméticas
Para realizar uma expressão aritmética é necessário seguir a seguinte estrutura

```
$((a+b))
``` 

Ou seja, a expressão deve estar entre 2 pares de parêntesis e antes dos parêntesis deve a haver um cifrão

---
# Condicionais
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
Perceba que
- A condição deve estar entre colchetes (`[]`)
- Deve haver um espaço (` `) entre os colchetes e a condição
- Após a condição deve haver um ponto de vírgula (`;`)
- Deve finalizar com `fi` 

Veja um exemplo:

![if1](/images/if.png)

### Operadores Lógicos
- `||`: **OR** lógico
- `&&`: **AND** lógico

## Switch Case

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

- `case $variable in`: Indica que irá começar um *switch case*
- `c1, c2, c3`: condições
- `)`: separação entre condição e ação da condição
- `;;`: fim das ações da condição
- `esac`: finalizar o *switch case*  
---

# Repetição
## While

O `while` possui a seguinte estrutura

```
while [[ condicao ]]
do
    acao
done
```

Alternativamente, temos:
```
while [[ condicao ]]; do
    acao
done
```

Veja o exemplo abaixo:

![while](images/while.png)

- Espaço entre a condicão e as duas chaves
- `do` abaixo do `while`
  
## Until
O `until` possui a seguinte estrutura:

```
until [[ condicao ]]
do
    acao
done
```
Veja o exemplo abaixo:
![until](images/until.png)

## For
O `for` segue a estrutura a seguir:
```
for {range}; do
    acao
done
```

Veja o exemplo abaixo:

![for](images/for.png)

## Break e Continue

---
# Comandos

- `echo`: retorna para o terminal o argumento que lhe for dado.
    ```
    echo "Hi Mom"
    //Hi Mom é escrito no terminal
    ```
- `sleep`: "dorme" por x segundos.
    ```
    sleep 3
    //faz o programa dormir por 3 segundos
    ```
- `nano`: abrir o editor de textos `nano`
    ```
    nano file.sh
    //abre o arquivo file.sh diretamente do terminal
    ```
- mkdir
- rm
- rmdir
- cp
- mv
- ls
- chmod
- cat
- grep
- find