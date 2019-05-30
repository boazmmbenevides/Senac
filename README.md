**# Senac**
Curso Desenvolvimento de Aplicativos Móveis

Usando **DART** e **FLUTTER**

##Aula 1 - Variáveis

Espaço reservado em memória para armazenar um valor temporarioamente.

###Tipos de Variáveis
- **string** -textos
- **int** -numeros inteiros
- **double** - numeros decimais

```
void(){
String nome = "Boaz";
int idade = 17;
double altura = 1,79
}

###Exemplo 2 - cálculo simples
```
void main() {
//Criar variaveis para nome,sobrenome,email e ano de nascimento,calcular a idade e mostrar ao final uma msg com todos esses dados.
  
  String nome,sobrenome,email;
    nome = "Boaz";
  sobrenome = "Matheus";
  email = "bmmb3004@gmail.com";
  
  print("Nome $nome");
  print("Sobrenome: $sobrenome");
  print("Email: $email");
  
  int ano_de_nascimento = 2002;
  
  ano_de_nascimento = 2019-2002;
    
  print("Idade $ano_de_nascimento");
  
  // \n= quebra de linha
   }
   
##Aula 2

**${renda_pessoa.toStringAsFixed(2)}**

O método toStringAsFixed() foi usado para formatar as casas(2) decimais da variável (renda_pessoa) double.
```dart
void main() {
String nome, sobrenome ,email, senha, cpf, endereco, sexo, celular, curso, nome_social;

int ano_nasc, idade, qtd_moradores;

double renda_familiar, renda_pessoa;

  
nome = "Boaz Matheus";
sobrenome = "Morais Benevides";  
email = "boazmmbenevides@gmail.com";
senha = "****";
cpf = "123456789";
endereco = "Rua Joaquim Jose de Oliveira Sobrinho";
sexo = "masculino";
curso = "Programador de Dispositivos Móveis";
nome_social = "";
celular = " (19)997710533";

  
ano_nasc = 2002;
idade = 2019 - ano_nasc;
qtd_moradores = 3;

renda_familiar = 213000;
renda_pessoa = renda_familiar / qtd_moradores; 

  
print("***************");
print("Seus dados estão corretos?");
print("***************");

  
print("Nome:$nome $sobrenome");
if(nome_social!="")
{  
print("Nome Social: $nome_social");
} 
print("Email: $email");
print("Sexo: $sexo");
print("Celular: $celular");
print("Ano de Nascimento: $ano_nasc");
print("Idade: $idade");
print("Cpf: $cpf");
print("Endereço: $endereco");

  
print("***************");
print("Informações SENAC");
print("***************");

 
print("Curso: $curso");
print("Renda Familiar: $renda_familiar");
print("Quantidade De Moradores: $qtd_moradores");
print("Renda por pessoa: ${renda_pessoa.toStringAsFixed(2)}");
   
}
 ```

### Condição lógica IF

O IF serve para determinar se um bloco **deve** ou **nao** ser executado, pode-se dizer que sempre que for necessário **testar** algum valor usaremos o *if*.

### Operadores lógicos

- == *Igualdade*
- \>= *maior ou igual*
- <= *menor ou igual*
- \> *maior*
- < *menor*

### Sintaxe

```dart
if(teste_lógico)
{
  //faz isso se o teste for verdadeiro
}
else
{
  //faz isso se o teste for falso
}
```

### Exemplo if

```dart
void main() {
  
  String curso = "programador android";
  
if(curso == "programador android")
{
  print("Parabéns, você fez ótimas escolhas");
  }
  else
  {
    print("vacilão, aposto que você faz ADM.");
    }
    
}
       
    ```
```dart
void main() 
{
  
double nota1, nota2, media;
  
nota1 = 5;
nota2 = 4;

media = (nota1 + nota2) / 2;

if(media >= 5)
{
  print("Aprovado com média $media");
}
else
{
  print("Reprovado com média $media");
}
 
}

```
